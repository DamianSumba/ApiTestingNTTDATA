package examples.petstore;

import com.intuit.karate.junit5.Karate;

public class PetStorerunner {
    @Karate.Test
    Karate testPetStorer() {
        return Karate.run("petstore").relativeTo(getClass());
    }
}
