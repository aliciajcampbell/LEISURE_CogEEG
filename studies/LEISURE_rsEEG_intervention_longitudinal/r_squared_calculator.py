def calculate_r2_nakagawa(model):
    """
    Calculate Nakagawa & Schielzeth R-squared values for mixed-effects models.

    Parameters:
    model: A fitted mixed-effects model object (e.g., from statsmodels).

    Returns:
    r2_marginal: Marginal R² (variance explained by fixed effects).
    r2_conditional: Conditional R² (variance explained by fixed + random effects).
    """
    var_fixed = model.fittedvalues.var()  # Fixed effects variance (σ_f²)
    var_random = model.cov_re.values.sum()  # Sum of random effects variances (Σσ_l²)
    var_resid = model.scale  # Residual variance (σ_e²)

    # Total variance
    total_var = var_fixed + var_random + var_resid

    # Calculate R² values
    r2_marginal = var_fixed / total_var
    r2_conditional = (var_fixed + var_random) / total_var

    return r2_marginal, r2_conditional
