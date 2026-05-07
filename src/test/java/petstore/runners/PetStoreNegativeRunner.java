package petstore.runners;

import com.intuit.karate.junit5.Karate;

public class PetStoreNegativeRunner {
    @Karate.Test
    Karate testPetStorer() {
        return Karate.run("../features/petstore_negativo_json").relativeTo(getClass());
    }
}
