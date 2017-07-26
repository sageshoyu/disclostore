package opts;

import exec.Gateway;
import org.apache.commons.cli.CommandLine;

import java.util.concurrent.ExecutionException;


public class AddProperty extends ActionableOption {

    public AddProperty() {
        super();
        name = "addproperty";
        description = "add property to the database."; //TODO: enable security feature to prevent overwriting
        hasArgs = true;
    }

    @Override
    public boolean execute(CommandLine cmd) throws ExecutionException, InterruptedException {
        System.out.println("Creating property '" + cmd.getOptionValue("addproperty") + "'");
        Gateway.storage.addProperty(cmd.getOptionValue("addproperty"));
        return true;
    }
}