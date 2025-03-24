import 'package:widgetbook_app/widgetbook.dart';

export 'bottom_navigation_book.dart';
export 'buttons/buttons.dart';
export 'buttons/icons/icon_buttons.dart';
export 'buttons/socials/social_buttons.dart';
export 'buttons/dropdowns/dropdown_book.dart';
export 'checkbox/checkboxs.dart';
export 'list_item/list_item_book.dart';
export 'menus/menu_item_book.dart';
export 'text_fields/text_field_book.dart';
export 'toggles/toggles.dart';
export 'text_area/text_area_book.dart';
export 'stepper/stepper_book.dart';
export 'rating/rating_book.dart';
export 'file_uploads/file_uploads.dart';
export 'time_input/time_input_book.dart';
export 'number_input/number_input_book.dart';
export 'combobox/combobox_book.dart';
export 'sliders/sliders.dart';
export 'sliders/vertical_sliders.dart';
export 'radios/radios.dart';
export 'date_input/date_input_book.dart';
export 'chat/chat_book.dart';
export 'color_picker/color_picker_book.dart';
export 'audio_player/audio_player_book.dart';
export 'video_player/video_player_book.dart';
export 'editable_text/editable_text_book.dart';
export 'comments/comments_book.dart';
export 'rich_text_editor/rich_text_editor_book.dart';

class InputCategories extends WidgetbookCategory {
  InputCategories({
    super.name = 'Inputs',
    super.isInitiallyExpanded = true,
  }) : super(children: [
          ButtonComponents(),
          IconButtonComponents(),
          SocialButtonComponents(),
          ToggleComponentBook(),
          CheckboxComponentBook(),
          // MenuButtonBook(),
          // ButtonGroupComponentBook(),
          // DropdownButtonComponentBook(),
          TextFieldComponentBook(),
          MenuItemComponentBook(),
          // ListItemComponentBook(),
          // BottomNavigationBook(),
          TextAreaComponentBook(),
          StepperComponentBook(),
          RatingComponentBook(),
          FileUploadComponentBook(),
          TimeInputComponentBook(),
          NumberInputComponentBook(),
          ComboBoxComponentBook(),
          HorizontalSliderComponentBook(),
          VerticalSliderComponentBook(),
          RadioComponentBook(),
          DateInputComponentBook(),
          ChatWidgetBook(),
          ColorPickerComponentBook(),
          AudioPlayerWidgetBook(),
          VideoPlayerWidgetBook(),
          InlineEditableTextWidgetBook(),
          CommentsWidgetBook(),
          RichTextEditorWidgetBook(),
        ]);
}
