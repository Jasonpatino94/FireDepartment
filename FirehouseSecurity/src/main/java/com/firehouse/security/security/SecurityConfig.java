package com.firehouse.security.security;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;


	@Configuration
	public class SecurityConfig extends WebSecurityConfigurerAdapter {
	  
	  @Autowired
	  private PasswordEncoder passwordEncoder;
	  
	  @Bean
	  public PasswordEncoder passwordEncoder () {
	    return new BCryptPasswordEncoder();
	  }
	  
	  public void addResourceHandlers(ResourceHandlerRegistry registry) 
	  {
	      registry
	      .addResourceHandler
	              (
	              "/webjars/**",
	              "/img/**",
	              "/css/**",
	              "/js/**"
	              )
	              .addResourceLocations
	                 (
	                      "classpath:/META-INF/resources/webjars/",
	                      "classpath:/static/img/",
	                      "classpath:/static/css/",
	                      "classpath:/static/js/"
	                 );
	  }
	  
	  
	  
	  
	  @Override
	  protected void configure(AuthenticationManagerBuilder auth) throws Exception {
	    auth
	      .inMemoryAuthentication()
	      .passwordEncoder(passwordEncoder)
	      .withUser("ewvfc2")
	      .password("$2a$10$31q4/k3GtmyHBCgfVi4/t.VhlabWMB6jgSGScAqkZ2fnePpG3o6ZW")
	      .roles("USER", "ADMIN");
	  }
	  
	  @Override
	  protected void configure(HttpSecurity http) throws Exception {
	    http
	      .csrf().disable()
	      .authorizeRequests()
	        .antMatchers("/admin/**").hasAnyRole("ADMIN")
	        .anyRequest().hasAnyRole("USER").and()
	      .formLogin()
	        .loginPage("/login")
	        .defaultSuccessUrl("/dashboard")
	        .permitAll();
	  }
	}
