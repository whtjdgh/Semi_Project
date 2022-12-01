package com.bitstudy.app.controller;

import com.bitstudy.app.domain.Ex02_BoardDto;
import com.bitstudy.app.domain.Ex04_PageHandler;
import com.bitstudy.app.service.Ex06_BoardService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* 게시글 쓰기
    1) boardList.jsp 에 가서 글쓰기 버튼에 맵핑(/board/write) 걸기
* */

@Controller
@RequestMapping("/board10")
public class Ex10_BoardController {

    @Autowired
    Ex06_BoardService boardService; /* boardService 의 getPage() 를 이용해서 페이징 할거임 */


    /* 글쓰기(화면만 보여주는거) 버튼 누르고, 글쓰기 페이지 들어갈때. */
    @GetMapping("/write")
    public String write(Model m) {
        m.addAttribute("mode","new");
        return "board";
    }

    /* 글쓰기 */
    @PostMapping("/write")
    public String write(Ex02_BoardDto boardDto, HttpSession session, Model m) {
        /** board.jsp 에서 등록버튼 누르면 DB에 제목, 본문내용, 작성자, 현재시간 넣기 */

        try {
            String writer = (String) session.getAttribute("id");
            boardDto.setWriter(writer);
            System.out.println("boardDto: " + boardDto);
            int rowCount = boardService.write(boardDto);

            return "redirect:/board/list";

        } catch (Exception e) {
            e.printStackTrace();

            // 만약 try 에서 DB에 게시글 저장하다가 에러나면 다시 원래 글쓰던 화면으로 방금 정보 다 가지고 돌아가게 하기.
            m.addAttribute("boardDto", boardDto);
            return "board";
        }
    }

    /* 게시글 수정 */
    @PostMapping("/modify")
    public String modify(Ex02_BoardDto boardDto, HttpSession session, Model m, RedirectAttributes rattr) {
        /** 이 메서드는 board.jsp 에서 수정 버튼 눌러서 온거. update 쿼리 날리면 됨 */

        String writer = (String) session.getAttribute("id"); /* 작성자 정보는 세션에 담겨있음 */
        boardDto.setWriter(writer); // boardDto 에 현재 작성자 정보 넣어주고
        try {

            int rowCount = boardService.modify(boardDto);

            if(rowCount != 1) {
                throw new Exception("수정 실패"); // 예상치 못한 사정에 의해 DB에 저장을 0개 했다면 에러 터지게 하기
            }
            //m.addAttribute("msg", "WRT_OK");
            rattr.addFlashAttribute("msg", "WRT_OK");
            return "redirect:/board/list"; // 리스트 화면으로 이동하게 하기.

        } catch (Exception e) {
            e.printStackTrace();

            // 만약 try 에서 DB에 게시글 저장하다가 에러나면 다시 원래 글쓰던 화면으로 방금 정보 다 가지고 돌아가게 하기.
            m.addAttribute("boardDto", boardDto);

//            m.addAttribute("msg", "WRT_ERR");
            rattr.addFlashAttribute("msg", "MOD_ERR");

            return "board";
        }
    }


    /* 게시글 삭제 */
    @PostMapping("/remove")
    public String remove(Integer bno, Integer page, Integer pageSize, Model m,
                         HttpSession session) throws Exception {

        String writer = (String) session.getAttribute("id");

        try {
            boardService.remove(bno, writer);

            m.addAttribute("page", page);
            m.addAttribute("pageSize", pageSize);
            return "redirect:/board/list";

        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }


    /* 게시글 읽기 */
    @GetMapping("/read") /* get 으로 받는 메서드 맵핑 걸어줘야함. 아래에 read 메소드 만들기 */
    public String read(Integer bno, Integer page, Integer pageSize, Model m) {
        try {
            Ex02_BoardDto boardDto = boardService.read(bno);
            // bno 번 글 읽어와서 board.jsp 뷰 화면에 정보 넘겨줄거니까 일단 boardDto 에 저장
            m.addAttribute("boardDto", boardDto);
            m.addAttribute("page", page);
            m.addAttribute("pageSize", pageSize);

            return "board";
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    /* - 순서 -
          1) 사용자가 게시판 페이지로 들어올때 '현재페이지'와 '한 페이지당 보여줄 페이지 개수' 를 컨트롤러에서 받아와야 하기 때문에 GetMapping 메서드에서 매개변수로 currPage pageSize를 받아야 한다.
          2) currPage와 pageSize를 받아서 map에 저장
          3) 모델에 담아서 뷰 단으로 넘겨준다
       *
       * */
    @GetMapping("/list")
    public String list(Integer page, Integer pageSize, Model m, HttpServletRequest request) {


        System.out.println("::" + request.getRequestURL());

        /** 로그인 아직 안한상태면 현재주소를 저장해서 로그인 페이지에 같이 보내기 */
        if(!loginChk(request)) {
            HttpSession session = request.getSession();
            session.setAttribute("toURL", request.getRequestURL());
            return "redirect:/login/login";
        }

        try {
            // 이건 매개변수 타입을 Integer 로 했을때 사용 가능
            if(page==null) page = 1;
            if(pageSize==null) pageSize = 10;


            // 종 게시물 개수 구해서
            int totalCount = boardService.getCount();
            //System.out.println("totalCount: " + totalCount);
            // 페이징 계산
            Ex04_PageHandler pageHandler = new Ex04_PageHandler(totalCount, page, pageSize);
            //System.out.println("pageHandler : " + pageHandler);

            // 페이징 계산 끝난 결과를 출력
            // boardMapper.xml 에 <select id="selectPage"> 부분에 값 보내서
            // 몇번째 부터 몇번째 까지 글을 긁어올건지 결정
            Map map = new HashMap();
            map.put("offset", (page-1)*pageSize);
            map.put("pageSize", pageSize);

            List<Ex02_BoardDto> list = boardService.getPage(map);
            // 이렇게 하면 최근 글 10개 가져온다.
            // view에 넘길거니까 모델에 담아서 보낸다.
            m.addAttribute("list", list);
            m.addAttribute("ph", pageHandler);

            System.out.println("list: " + list);

            return "boardList";

        } catch (Exception e) {
//            throw new RuntimeException(e);
            e.printStackTrace();
            return "0";
        }

    }

    private boolean loginChk(HttpServletRequest request) {
        HttpSession session = request.getSession();
        return session.getAttribute("id") != null; // 세션통에 id가 있다
        // 로그인 한 상태면 true, 아니면 false;
    }
}
