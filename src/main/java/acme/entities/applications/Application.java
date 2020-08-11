
package acme.entities.applications;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.ManyToOne;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.Valid;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Past;

import acme.entities.roles.Investor;
import acme.framework.datatypes.Money;
import acme.framework.entities.DomainEntity;
import acme.investmentRounds.Investment;
import lombok.Getter;
import lombok.Setter;

@Entity
@Getter
@Setter
public class Application extends DomainEntity {

	/*
	 * a ticker, a creation date and moment,
	 * a statement, and an investment money offer.
	 */

	private static final long	serialVersionUID	= 1L;

	@NotBlank
	private String				ticker;

	@NotNull
	@Temporal(TemporalType.TIMESTAMP)
	@Past
	private Date				creationMoment;

	@NotBlank
	private String				statement;

	@NotNull
	@Valid
	private Money				offer;

	// Relationships ----------------------------------------------

	@NotNull
	@Valid
	@ManyToOne(optional = false)
	private Investment			investmentRound;

	@NotNull
	@Valid
	@ManyToOne(optional = false)
	private Investor			investor;

}
