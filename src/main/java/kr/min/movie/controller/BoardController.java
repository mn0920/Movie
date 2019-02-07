package kr.min.movie.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.min.movie.pagenation.Criteria;
import kr.min.movie.pagenation.MovieCriteria;
import kr.min.movie.pagenation.MoviePageMaker;
import kr.min.movie.pagenation.PageMaker;
import kr.min.movie.service.AccountService;
import kr.min.movie.service.BoardService;
import kr.min.movie.vo.AccountVo;
import kr.min.movie.vo.ActorVo;
import kr.min.movie.vo.DirectorVo;
import kr.min.movie.vo.ShowMovieVo;

@Controller
@RequestMapping(value = "/m")
public class BoardController {
	@Autowired
	private BoardService boardService;
	/* bean에 등록된 Resource 중에서 id가 uploadPath를 가져옴 */
	@Autowired
	private AccountService accountService;

	@RequestMapping(value = "/main", method = RequestMethod.GET)
	public String mainGet(HttpServletRequest request, Model model, MovieCriteria cri) {
		AccountVo user = accountService.getLoginUser(request);
		/*Integer count = boardService.countMovie(movie);*/
		MoviePageMaker pageMaker = boardService.getPageMaker(cri, 10);
		System.out.println("pageMaker Controller : " + pageMaker);

		List<ShowMovieVo> movie = boardService.getShowMovie(cri);
		/*movie = boardService.getShowMovie(cri);*/
		System.out.println("movie : " + movie);
		
		model.addAttribute("movie", movie);
		model.addAttribute("pageMaker", pageMaker);
		model.addAttribute("user", user);

		return "movie/main";
	}

	@RequestMapping(value = "/A", method = RequestMethod.GET)
	public String actorGet(Model model, Criteria cri) {
		PageMaker pageMaker = boardService.getActorPageMaker(cri, 10);
		List<ActorVo> actor = boardService.getActors(cri);

		model.addAttribute("actor", actor);
		model.addAttribute("pageMaker", pageMaker);
		return "movie/actor";
	}

	@RequestMapping(value = "/D", method = RequestMethod.GET)
	public String directorGet(Model model, Criteria cri) {
		PageMaker pageMaker = boardService.getDirectorPageMaker(cri, 10);
		List<DirectorVo> director = boardService.getDirectors(cri);

		model.addAttribute("director", director);
		model.addAttribute("pageMaker", pageMaker);
		return "movie/director";
	}

	@RequestMapping(value = "/my", method = RequestMethod.GET)
	public String myGet(HttpServletRequest request, Model model, Criteria cri) {
		return "movie/my";
	}

	@RequestMapping(value = "/R", method = RequestMethod.GET)
	public String recommendGet(Model model, MovieCriteria cri) {
		MoviePageMaker pageMaker = boardService.getPageMaker(cri, 10);

		List<ShowMovieVo> movie = boardService.getShowMovie(cri);
		/*List<ShowMovieVo> movie = boardService.getShowMovie();*/

		model.addAttribute("movie", movie);
		model.addAttribute("pageMaker", pageMaker);

		return "movie/recommend";
	}

	@RequestMapping(value = "/m/detail", method = RequestMethod.GET)
	public String mDetailGet(Model model, Integer id) {
		ShowMovieVo movie = boardService.getMovie(id);

		model.addAttribute("movie", movie);
		return "movie/detail/mDetail";
	}

	@RequestMapping(value = "/A/detail", method = RequestMethod.GET)
	public String aDetailGet(Model model, Integer actor_id) {
		ActorVo actor = boardService.getActor(actor_id);

		model.addAttribute("actor", actor);
		return "movie/detail/aDetail";
	}

	@RequestMapping(value = "/D/detail", method = RequestMethod.GET)
	public String dDetailGet(Model model, Integer director_id) {
		DirectorVo director = boardService.getDirector(director_id);

		model.addAttribute("director", director);
		return "movie/detail/dDetail";
	}

}
