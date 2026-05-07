package petstore.runners;

import com.intuit.karate.junit5.Karate;

class PetStoreAllRunner {

    @Karate.Test
    Karate testAll() {
        return Karate.run("../features/petstore",
                        "../features/petstore_json",
                        "../features/petstore_negativo_json")
                .relativeTo(getClass());
    }

}
