package com.megabox.review.dto;

import lombok.Data;

@Data
public class review {
	String reviewNo;
	String rKind;
	String rContent;
	int rLike;
	int rClaim;
}
