package org.zerock.springex.sample;

import lombok.RequiredArgsConstructor;
import lombok.ToString;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.zerock.springex.sample.SampleDAO;

@ToString
@Service
public class SampleService {
    private final SampleDAO sampleDAO;

    SampleService(@Qualifier("normal") SampleDAO sampleDAO){
        this.sampleDAO = sampleDAO;
    }
}
