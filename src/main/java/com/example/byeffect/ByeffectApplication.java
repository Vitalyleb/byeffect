package com.example.byeffect;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.web.client.RestTemplateBuilder;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@SpringBootApplication
public class ByeffectApplication {

	public static void main(String[] args) {
		SpringApplication.run(ByeffectApplication.class, args);
	}

	@Configuration
	public class MvcConfig implements WebMvcConfigurer {
		@Override
		public void addResourceHandlers(ResourceHandlerRegistry registry) {
			registry.addResourceHandler("/static/**")
					.addResourceLocations("classpath:/static/");
		}
	}
	public RestTemplate restTemplate(){
		return new RestTemplateBuilder().build();
	}

}