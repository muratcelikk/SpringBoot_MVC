package com.muratcelik.scorecard.controller;

import com.muratcelik.scorecard.model.Person;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.ArrayList;
import java.util.List;

/**
 * @author Murat Çelik Pegamis
 */
@Controller
public class MainController {
    public static List<Person> ls = new ArrayList<>();

    static {
        ls.add(new Person("Bill", "Gates"));
        ls.add(new Person("Steve", "Jobs"));
    }

    @RequestMapping(value = {"/personlist"}, method = RequestMethod.GET)
    public String viewPersonList(Model model) {

        model.addAttribute("persons", ls);

        return "personlist";
    }
}
