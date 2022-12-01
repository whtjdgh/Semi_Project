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
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/** 할거 : 게시글 삭제 기능 구현
 *      삭제 버튼을 누르면 boardService 의 remove() 메서드에 글번호(bno) 랑 글쓴이(writer) 를 넘겨줘야한다.
 *      버튼 누를때 현재 로그인 한 사람과 글쓴이가 같은지 확인하고 맞으면 DB에서 bno 와 매칭되는 데이터를 삭제한다.
 *      애시당초 수정, 삭제 버튼은 보는사람이 작성자일때만 나타나겠지만 만에 하나의 경우를 대비해서 writer 체크도 한다.
 *
 *      삭제 후 다시 /board/list 화면으로 가야한다. 여기서도 리스트 화면으로 돌아가기 위해서 기존 page와 pageSize 를 가지고 있어야 한다.
 * */

@Controller
@RequestMapping("/board9")
public class Ex09_BoardController {

    @Autowired
    Ex06_BoardService boardService; /* boardService 의 getPage() 를 이용해서 페이징 할거임 */

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
