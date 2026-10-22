package org.zerock.b01.config;

import org.modelmapper.ModelMapper;
import org.modelmapper.convention.MatchingStrategies;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class RootConfig {
    @Bean
    public ModelMapper modelMapper(){
        ModelMapper modelMapper = new ModelMapper();
        modelMapper.getConfiguration()
                .setFieldMatchingEnabled(true) // Setter,Getter가 없더라도 필드값에 바로 접근가능하도록
                .setFieldAccessLevel(org.modelmapper.config.Configuration.AccessLevel.PRIVATE) // private한 필드에도 접근가능
                .setMatchingStrategy(MatchingStrategies.STRICT); // 단 필드명과 데이터타입이 완벽히 일치할경우에만

        return modelMapper;
    }
}
