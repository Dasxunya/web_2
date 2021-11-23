package other;

import lombok.Getter;

import java.util.ArrayList;
import java.util.List;

@Getter
public class Context {
    private static final Context contextInstance = new Context();
    private final List<Result> resultsInContext;

    private Context() {
        resultsInContext = new ArrayList<>();
    }

    public static Context getInstance() {
        return contextInstance;
    }

    public void addResult(Result newResult) {
        resultsInContext.add(newResult);
    }
}
