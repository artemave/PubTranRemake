package artemave.pubtranremake.test;

import artemave.pubtranremake.HelloAndroidActivity;
import artemave.pubtranremake.R;
import com.xtremelabs.robolectric.RobolectricTestRunner;
import org.junit.Test;
import org.junit.runner.RunWith;

import static org.hamcrest.CoreMatchers.equalTo;
import static org.junit.Assert.assertThat;

@RunWith(RobolectricTestRunner.class)
public class HelloRobelectricTest {

    @Test
    public void shouldHaveHappySmiles() throws Exception {
        String appName = new HelloAndroidActivity().getResources().getString(R.string.app_name);
        assertThat(appName, equalTo("pubtranremake"));
    }
}