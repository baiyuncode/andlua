layout = {
  main = {
    LinearLayout,
    orientation = "vertical",
  },

  dlg = {
    LinearLayout,
    orientation = "vertical",
    {
      TextView,
      id = "label",
    },
    {
      EditText,
      id = "fld",
      layout_width = "fill",
    },
    {
      Button,
      text = getLS("L_Determine"),
      onClick = "ok",
    },

  },

  ck = {
    LinearLayout,
    {
      RadioGroup,
      layout_weight = "1",
      id = "ck_rg",
    },
    {
      Button,
      Text = getLS("L_Determine"),
      id = "ck_bt",
    },
    orientation = "vertical",
  },
}
