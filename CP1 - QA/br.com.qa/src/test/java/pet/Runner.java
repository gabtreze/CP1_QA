package pet;
import com.intuit.karate.junit5.Karate;


class Runner {

    @Karate.Test
    Karate testSystemProperty() {
        return Karate.run("classpath:./")
                .tags("get_pet")
                .karateEnv("e2e");
    }
}
