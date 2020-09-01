
package acme.entities.roles;

import javax.validation.constraints.NotBlank;

import acme.framework.entities.UserRole;

public class Bookkeeper extends UserRole {

	private static final long	serialVersionUID	= 1L;

	@NotBlank
	private String				firmName;

	@NotBlank
	private String				responsabilityStatement;

}
