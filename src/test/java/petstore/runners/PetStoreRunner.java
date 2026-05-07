package petstore.runners;

import com.intuit.karate.junit5.Karate;

public class PetStoreRunner {
    @Karate.Test
    Karate testPetStorer() {
        return Karate.run("../features/petstore").relativeTo(getClass());
    }
}
