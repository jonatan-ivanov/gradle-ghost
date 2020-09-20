import org.junit.jupiter.api.Test;

import static org.assertj.core.api.Assertions.assertThat;

class MainTest {
    @Test
    void shouldBeAbleToCreateInstanceAndProvideDefaultToString() {
        assertThat(new Main().toString())
            .hasLineCount(1)
            .hasSizeGreaterThan(5)
            .startsWith("Main@");
    }
}
