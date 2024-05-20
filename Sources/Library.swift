import Ignite

func bodyText(_ text: String) -> Text {
    Text(text)
        .style("text-justify: auto")
}

func subtitleText(_ text: String) -> Text {
    Text(text)
        .font(.title4)
        .fontWeight(.semibold)
        .foregroundStyle("#5b755e")
}
