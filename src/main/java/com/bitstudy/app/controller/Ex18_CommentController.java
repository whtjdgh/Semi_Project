package com.bitstudy.app.controller;

import com.bitstudy.app.domain.Ex17_CommentDto;
import com.bitstudy.app.service.Ex17_CommentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class Ex18_CommentController {

    @Autowired
    Ex17_CommentService service;

    @PatchMapping("/comments/{cno}")
    /* @RequestBody: json을 자바 객체로 바꿔주는 애너테이션 */
    public ResponseEntity<String> modify(@PathVariable Integer cno, @RequestBody Ex17_CommentDto dto) {
//        String commenter = (String)session.getAttribute("id"); // 지금은 로그인을 안하기 때문에 아래 하드코딩으로 함.
        String commenter = "asdf";
        dto.setCommenter(commenter);
        dto.setCno(cno);
        System.out.println("dto = " + dto);

        try {
            if(service.modify(dto)!=1)
                throw new Exception("Write failed.");

            return new ResponseEntity<>("MOD_OK", HttpStatus.OK);
        } catch (Exception e) {
            e.printStackTrace();
            return new ResponseEntity<String>("MOD_ERR", HttpStatus.BAD_REQUEST);
        }
    }


    // 댓글을 등록하는 메서드
    @PostMapping("/comments")   
    public ResponseEntity<String> write(@RequestBody Ex17_CommentDto dto, Integer bno, HttpSession session) {
//        String commenter = (String)session.getAttribute("id");
        String commenter = "asdf"; // 로그인을 안한상태라 이거 사용. 원래는 세션에서 가져와야함
        dto.setCommenter(commenter);
        dto.setBno(bno);
        System.out.println("dto = " + dto);

        System.out.println("service.write(dto)11");
        try {
            System.out.println("service.write(dto)");
            if(service.write(dto)!=1)
                throw new Exception("Write failed.");

            return new ResponseEntity<>("WRT_OK", HttpStatus.OK);
        } catch (Exception e) {
            e.printStackTrace();
            return new ResponseEntity<String>("WRT_ERR", HttpStatus.BAD_REQUEST);
        }
    }

    // 지정된 댓글을 삭제하는 메서드
    @DeleteMapping("/comments/{cno}") 
    /* (Restful API) {cno} 처럼 맵핑된 URL의 일부를 가져올때에는 @PathVariable 를 붙인다. */
    @ResponseBody public ResponseEntity<String> remove(@PathVariable Integer cno, Integer bno, HttpSession session) {
//        String commenter = (String)session.getAttribute("id");
        String commenter = "asdf";

        try {
            int rowCnt = service.remove(cno, bno, commenter);

            if(rowCnt!=1) // 1이 아니면 실패한 작업임
                throw new Exception("Delete Failed");

            return new ResponseEntity<>("DEL_OK", HttpStatus.OK);
        } catch (Exception e) {
            e.printStackTrace();
            return new ResponseEntity<>("DEL_ERR", HttpStatus.BAD_REQUEST);
        }
    }

    // 지정된 게시물의 모든 댓글을 가져오는 메서드
    @GetMapping("/comments")
    @ResponseBody public ResponseEntity<List<Ex17_CommentDto>> list(Integer bno) {
        List<Ex17_CommentDto> list = null;
        try {
            list = service.getList(bno);
            return new ResponseEntity<List<Ex17_CommentDto>>(list, HttpStatus.OK);  // 200
            //여기서는 list가 엔티티인데 응답에 들어갈 엔티티라서 ResponseEntity 이다. 보낼때 상태코드(HttpStatus.OK)를 같이 보내야 한다.
            // ResponseEntity 를 이용하면 원하는 상태코드를 보내줄수 있다.

        } catch (Exception e) {
            e.printStackTrace();
            return new ResponseEntity<List<Ex17_CommentDto>>(HttpStatus.BAD_REQUEST); // 400
        }
    }

    /* ResponseEntity 설명
     *   에러코드를 내 맘대로 설정 가능. 400 - 클라이언트 잘못, 500-서버잘못, 200-성공
     * */
}
