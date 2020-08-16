
package acme.features.entrepreneur.investmentRound;

import javax.annotation.PostConstruct;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import acme.entities.investmentRounds.Investment;
import acme.entities.roles.Entrepreneur;
import acme.framework.components.BasicCommand;
import acme.framework.controllers.AbstractController;

@Controller
@RequestMapping("/authenticated/investment/")
public class EntrepreneurInvestmentRoundController extends AbstractController<Entrepreneur, Investment> {

	@Autowired
	private EntrepreneurInvestmentRoundsListService	listService;

	@Autowired
	private EntrepreneurInvestmentRoundsShowService	showService;


	@PostConstruct
	private void initialise() {
		super.addBasicCommand(BasicCommand.LIST, this.listService);
		super.addBasicCommand(BasicCommand.SHOW, this.showService);
	}

}
