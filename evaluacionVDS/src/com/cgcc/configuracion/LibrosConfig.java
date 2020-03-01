package com.cgcc.configuracion;

import javax.sql.DataSource;

import org.springframework.context.MessageSource;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.support.ResourceBundleMessageSource;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

@Configuration
@EnableWebMvc
@ComponentScan(basePackages = "com.cgcc")
public class LibrosConfig implements WebMvcConfigurer {
	
	@Bean
	public ViewResolver viewResolver() {
		InternalResourceViewResolver resolver = new InternalResourceViewResolver();
		resolver.setPrefix("/WEB-INF/vistas/"); //Carpeta donde se encuentran las vistas
		resolver.setSuffix(".jsp"); // formato de las vistas
		return resolver;	
	}

	@Override
	public void addResourceHandlers(ResourceHandlerRegistry registry) {
		registry.addResourceHandler("/content/**").addResourceLocations("/content/");//Lo que se ecuentre en esta carpeta no sera tomado como vista
	}
	
	@Bean 
	public MessageSource messageSource() {
		ResourceBundleMessageSource msg = new ResourceBundleMessageSource();
		msg.setBasename("mensajes");
		return msg;
	}
	
	//Conexion con la base de datos
	@Bean
	public DataSource dataSource() {
		DriverManagerDataSource ds = new DriverManagerDataSource();
		ds.setDriverClassName("com.mysql.jdbc.Driver");
		ds.setUrl("jdbc:mysql://localhost:3306/libreria");
		ds.setUsername("root");
		ds.setPassword("");
		return ds;
		
	}

}
