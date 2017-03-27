//
//  LPDMacroPlus.h
//  Pods
//
//  Created by Assuner on 2017/3/27.
//
//

#ifndef LPDMacroPlus_h
#define LPDMacroPlus_h

#define SCREEN_BOUNDS [UIScreen mainScreen].bounds
#define SCREEN_WIDTH [UIScreen mainScreen].bounds.size.width
#define SCREEN_HEIGHT [UIScreen mainScreen].bounds.size.height

#define TAB_BAR_HIGHT 49
#define STATUS_BAR_HIGHT 20
#define TOOL_BAR_HIGHT 44
#define NAVI_BAR_HIGHT 64

#define SIZE_OF_TEXT(text, size, font)     \
[text boundingRectWithSize:size            \
options:NSStringDrawingUsesLineFragmentOrigin | NSStringDrawingUsesFontLeading  \
attributes:@{NSFontAttributeName:[UIFont systemFontOfSize:font]}    \
context:nil]

#define MIN_SIZE(label) label.attributedText.size

#endif /* LPDMacroPlus_h */
