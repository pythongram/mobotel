.class public Lorg/telegram/messenger/MessageObject;
.super Ljava/lang/Object;
.source "MessageObject.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/MessageObject$TextLayoutBlock;
    }
.end annotation


# static fields
.field private static final LINES_PER_BLOCK:I = 0xa

.field public static final MESSAGE_SEND_STATE_SENDING:I = 0x1

.field public static final MESSAGE_SEND_STATE_SEND_ERROR:I = 0x2

.field public static final MESSAGE_SEND_STATE_SENT:I

.field public static urlPattern:Ljava/util/regex/Pattern;


# instance fields
.field public attachPathExists:Z

.field public audioProgress:F

.field public audioProgressSec:I

.field public botButtonsLayout:Ljava/lang/StringBuilder;

.field public caption:Ljava/lang/CharSequence;

.field public contentType:I

.field public customReplyName:Ljava/lang/String;

.field public dateKey:Ljava/lang/String;

.field public deleted:Z

.field public forceUpdate:Z

.field private generatedWithMinSize:I

.field public hasRtl:Z

.field public isDateObject:Z

.field public lastLineWidth:I

.field private layoutCreated:Z

.field public linkDescription:Ljava/lang/CharSequence;

.field public mediaExists:Z

.field public messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

.field public messageText:Ljava/lang/CharSequence;

.field public monthKey:Ljava/lang/String;

.field public photoThumbs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$PhotoSize;",
            ">;"
        }
    .end annotation
.end field

.field public photoThumbs2:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$PhotoSize;",
            ">;"
        }
    .end annotation
.end field

.field public replyMessageObject:Lorg/telegram/messenger/MessageObject;

.field public resendAsIs:Z

.field public textHeight:I

.field public textLayoutBlocks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/MessageObject$TextLayoutBlock;",
            ">;"
        }
    .end annotation
.end field

.field public textWidth:I

.field public textXOffset:F

.field public type:I

.field public useCustomPhoto:Z

.field public videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

.field public viewsReloaded:Z

.field public wantedBotKeyboardWidth:I


# direct methods
.method public constructor <init>(Lorg/telegram/tgnet/TLRPC$Message;Ljava/util/AbstractMap;Ljava/util/AbstractMap;Z)V
    .registers 45
    .param p1, "message"    # Lorg/telegram/tgnet/TLRPC$Message;
    .param p4, "generateLayout"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/tgnet/TLRPC$Message;",
            "Ljava/util/AbstractMap",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/telegram/tgnet/TLRPC$User;",
            ">;",
            "Ljava/util/AbstractMap",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/telegram/tgnet/TLRPC$Chat;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 108
    .local p2, "users":Ljava/util/AbstractMap;, "Ljava/util/AbstractMap<Ljava/lang/Integer;Lorg/telegram/tgnet/TLRPC$User;>;"
    .local p3, "chats":Ljava/util/AbstractMap;, "Ljava/util/AbstractMap<Ljava/lang/Integer;Lorg/telegram/tgnet/TLRPC$Chat;>;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/16 v35, 0x3e8

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/messenger/MessageObject;->type:I

    .line 109
    const/16 v35, 0x0

    const/16 v36, 0x1

    invoke-static/range {v35 .. v36}, Lorg/telegram/ui/ActionBar/Theme;->createChatResources(Landroid/content/Context;Z)V

    .line 111
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    .line 113
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->replyMessage:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v35, v0

    if-eqz v35, :cond_3d

    .line 114
    new-instance v35, Lorg/telegram/messenger/MessageObject;

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->replyMessage:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v36, v0

    const/16 v37, 0x0

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, v37

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/telegram/messenger/MessageObject;-><init>(Lorg/telegram/tgnet/TLRPC$Message;Ljava/util/AbstractMap;Ljava/util/AbstractMap;Z)V

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;

    .line 117
    :cond_3d
    const/16 v18, 0x0

    .line 118
    .local v18, "fromUser":Lorg/telegram/tgnet/TLRPC$User;
    move-object/from16 v0, p1

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    move/from16 v35, v0

    if-lez v35, :cond_71

    .line 119
    if-eqz p2, :cond_5d

    .line 120
    move-object/from16 v0, p1

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    move/from16 v35, v0

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    move-object/from16 v0, p2

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    .end local v18    # "fromUser":Lorg/telegram/tgnet/TLRPC$User;
    check-cast v18, Lorg/telegram/tgnet/TLRPC$User;

    .line 122
    .restart local v18    # "fromUser":Lorg/telegram/tgnet/TLRPC$User;
    :cond_5d
    if-nez v18, :cond_71

    .line 123
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v35

    move-object/from16 v0, p1

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    move/from16 v36, v0

    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v18

    .line 127
    :cond_71
    move-object/from16 v0, p1

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageService;

    move/from16 v35, v0

    if-eqz v35, :cond_dd3

    .line 128
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v35, v0

    if-eqz v35, :cond_a4

    .line 129
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatCreate;

    move/from16 v35, v0

    if-eqz v35, :cond_28e

    .line 130
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/MessageObject;->isOut()Z

    move-result v35

    if-eqz v35, :cond_26f

    .line 131
    const-string v35, "ActionYouCreateGroup"

    const v36, 0x7f07005e

    invoke-static/range {v35 .. v36}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    .line 417
    :cond_a4
    :goto_a4
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    move-object/from16 v35, v0

    if-nez v35, :cond_b4

    .line 418
    const-string v35, ""

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    .line 421
    :cond_b4
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/MessageObject;->setType()V

    .line 422
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/MessageObject;->measureInlineBotButtons()V

    .line 424
    new-instance v22, Ljava/util/GregorianCalendar;

    invoke-direct/range {v22 .. v22}, Ljava/util/GregorianCalendar;-><init>()V

    .line 425
    .local v22, "rightNow":Ljava/util/Calendar;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    move/from16 v35, v0

    move/from16 v0, v35

    int-to-long v0, v0

    move-wide/from16 v36, v0

    const-wide/16 v38, 0x3e8

    mul-long v36, v36, v38

    move-object/from16 v0, v22

    move-wide/from16 v1, v36

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 426
    const/16 v35, 0x6

    move-object/from16 v0, v22

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v11

    .line 427
    .local v11, "dateDay":I
    const/16 v35, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v13

    .line 428
    .local v13, "dateYear":I
    const/16 v35, 0x2

    move-object/from16 v0, v22

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v12

    .line 429
    .local v12, "dateMonth":I
    const-string v35, "%d_%02d_%02d"

    const/16 v36, 0x3

    move/from16 v0, v36

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v36, v0

    const/16 v37, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0x2

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    invoke-static/range {v35 .. v36}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->dateKey:Ljava/lang/String;

    .line 430
    const-string v35, "%d_%02d"

    const/16 v36, 0x2

    move/from16 v0, v36

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v36, v0

    const/16 v37, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    invoke-static/range {v35 .. v36}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->monthKey:Ljava/lang/String;

    .line 432
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    move-object/from16 v35, v0

    if-eqz v35, :cond_1b4

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    move/from16 v35, v0

    if-gez v35, :cond_1b4

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Ljava/lang/String;->length()I

    move-result v35

    const/16 v36, 0x6

    move/from16 v0, v35

    move/from16 v1, v36

    if-le v0, v1, :cond_1b4

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/MessageObject;->isVideo()Z

    move-result v35

    if-nez v35, :cond_189

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/MessageObject;->isNewGif()Z

    move-result v35

    if-eqz v35, :cond_1b4

    .line 433
    :cond_189
    new-instance v35, Lorg/telegram/messenger/VideoEditedInfo;

    invoke-direct/range {v35 .. v35}, Lorg/telegram/messenger/VideoEditedInfo;-><init>()V

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    .line 434
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    move-object/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Lorg/telegram/messenger/VideoEditedInfo;->parseString(Ljava/lang/String;)Z

    move-result v35

    if-nez v35, :cond_1b4

    .line 435
    const/16 v35, 0x0

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    .line 439
    :cond_1b4
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/MessageObject;->generateCaption()V

    .line 440
    if-eqz p4, :cond_fb6

    .line 442
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGame;

    move/from16 v35, v0

    if-eqz v35, :cond_f94

    .line 443
    sget-object v21, Lorg/telegram/ui/ActionBar/Theme;->chat_msgGameTextPaint:Landroid/text/TextPaint;

    .line 447
    .local v21, "paint":Landroid/text/TextPaint;
    :goto_1cf
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v35

    move-object/from16 v0, v35

    iget-boolean v0, v0, Lorg/telegram/messenger/MessagesController;->allowBigEmoji:Z

    move/from16 v35, v0

    if-eqz v35, :cond_f98

    const/16 v35, 0x1

    move/from16 v0, v35

    new-array v15, v0, [I

    .line 448
    .local v15, "emojiOnly":[I
    :goto_1e1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    move-object/from16 v35, v0

    invoke-virtual/range {v21 .. v21}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v36

    const/high16 v37, 0x41a00000    # 20.0f

    invoke-static/range {v37 .. v37}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v37

    const/16 v38, 0x0

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    move/from16 v2, v37

    move/from16 v3, v38

    invoke-static {v0, v1, v2, v3, v15}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;IZ[I)Ljava/lang/CharSequence;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    .line 449
    if-eqz v15, :cond_faf

    const/16 v35, 0x0

    aget v35, v15, v35

    const/16 v36, 0x1

    move/from16 v0, v35

    move/from16 v1, v36

    if-lt v0, v1, :cond_faf

    const/16 v35, 0x0

    aget v35, v15, v35

    const/16 v36, 0x3

    move/from16 v0, v35

    move/from16 v1, v36

    if-gt v0, v1, :cond_faf

    .line 452
    const/16 v35, 0x0

    aget v35, v15, v35

    packed-switch v35, :pswitch_data_fca

    .line 463
    sget-object v16, Lorg/telegram/ui/ActionBar/Theme;->chat_msgTextPaintThreeEmoji:Landroid/text/TextPaint;

    .line 464
    .local v16, "emojiPaint":Landroid/text/TextPaint;
    const/high16 v35, 0x41c00000    # 24.0f

    invoke-static/range {v35 .. v35}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v25

    .line 467
    .local v25, "size":I
    :goto_22e
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    move-object/from16 v35, v0

    check-cast v35, Landroid/text/Spannable;

    const/16 v36, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    move-object/from16 v37, v0

    invoke-interface/range {v37 .. v37}, Ljava/lang/CharSequence;->length()I

    move-result v37

    const-class v38, Lorg/telegram/messenger/Emoji$EmojiSpan;

    invoke-interface/range {v35 .. v38}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v27

    check-cast v27, [Lorg/telegram/messenger/Emoji$EmojiSpan;

    .line 468
    .local v27, "spans":[Lorg/telegram/messenger/Emoji$EmojiSpan;
    if-eqz v27, :cond_faf

    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v35, v0

    if-lez v35, :cond_faf

    .line 469
    const/4 v7, 0x0

    .local v7, "a":I
    :goto_254
    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v35, v0

    move/from16 v0, v35

    if-ge v7, v0, :cond_faf

    .line 470
    aget-object v35, v27, v7

    invoke-virtual/range {v16 .. v16}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v36

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/Emoji$EmojiSpan;->replaceFontMetrics(Landroid/graphics/Paint$FontMetricsInt;I)V

    .line 469
    add-int/lit8 v7, v7, 0x1

    goto :goto_254

    .line 133
    .end local v7    # "a":I
    .end local v11    # "dateDay":I
    .end local v12    # "dateMonth":I
    .end local v13    # "dateYear":I
    .end local v15    # "emojiOnly":[I
    .end local v16    # "emojiPaint":Landroid/text/TextPaint;
    .end local v21    # "paint":Landroid/text/TextPaint;
    .end local v22    # "rightNow":Ljava/util/Calendar;
    .end local v25    # "size":I
    .end local v27    # "spans":[Lorg/telegram/messenger/Emoji$EmojiSpan;
    :cond_26f
    const-string v35, "ActionCreateGroup"

    const v36, 0x7f070041

    invoke-static/range {v35 .. v36}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    const-string v36, "un1"

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    move-object/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/messenger/MessageObject;->replaceWithLink(Ljava/lang/CharSequence;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;)Ljava/lang/CharSequence;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_a4

    .line 135
    :cond_28e
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatDeleteUser;

    move/from16 v35, v0

    if-eqz v35, :cond_3b5

    .line 136
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$MessageAction;->user_id:I

    move/from16 v35, v0

    move-object/from16 v0, p1

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    move/from16 v36, v0

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_2ea

    .line 137
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/MessageObject;->isOut()Z

    move-result v35

    if-eqz v35, :cond_2cb

    .line 138
    const-string v35, "ActionYouLeftUser"

    const v36, 0x7f070060

    invoke-static/range {v35 .. v36}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_a4

    .line 140
    :cond_2cb
    const-string v35, "ActionLeftUser"

    const v36, 0x7f070047

    invoke-static/range {v35 .. v36}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    const-string v36, "un1"

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    move-object/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/messenger/MessageObject;->replaceWithLink(Ljava/lang/CharSequence;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;)Ljava/lang/CharSequence;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_a4

    .line 143
    :cond_2ea
    const/16 v34, 0x0

    .line 144
    .local v34, "whoUser":Lorg/telegram/tgnet/TLRPC$User;
    if-eqz p2, :cond_308

    .line 145
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$MessageAction;->user_id:I

    move/from16 v35, v0

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    move-object/from16 v0, p2

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v34

    .end local v34    # "whoUser":Lorg/telegram/tgnet/TLRPC$User;
    check-cast v34, Lorg/telegram/tgnet/TLRPC$User;

    .line 147
    .restart local v34    # "whoUser":Lorg/telegram/tgnet/TLRPC$User;
    :cond_308
    if-nez v34, :cond_322

    .line 148
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v35

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$MessageAction;->user_id:I

    move/from16 v36, v0

    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v34

    .line 150
    :cond_322
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/MessageObject;->isOut()Z

    move-result v35

    if-eqz v35, :cond_347

    .line 151
    const-string v35, "ActionYouKickUser"

    const v36, 0x7f07005f

    invoke-static/range {v35 .. v36}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    const-string v36, "un2"

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    move-object/from16 v3, v34

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/messenger/MessageObject;->replaceWithLink(Ljava/lang/CharSequence;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;)Ljava/lang/CharSequence;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_a4

    .line 152
    :cond_347
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$MessageAction;->user_id:I

    move/from16 v35, v0

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v36

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_37c

    .line 153
    const-string v35, "ActionKickUserYou"

    const v36, 0x7f070046

    invoke-static/range {v35 .. v36}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    const-string v36, "un1"

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    move-object/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/messenger/MessageObject;->replaceWithLink(Ljava/lang/CharSequence;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;)Ljava/lang/CharSequence;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_a4

    .line 155
    :cond_37c
    const-string v35, "ActionKickUser"

    const v36, 0x7f070045

    invoke-static/range {v35 .. v36}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    const-string v36, "un2"

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    move-object/from16 v3, v34

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/messenger/MessageObject;->replaceWithLink(Ljava/lang/CharSequence;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;)Ljava/lang/CharSequence;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    .line 156
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    move-object/from16 v35, v0

    const-string v36, "un1"

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    move-object/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/messenger/MessageObject;->replaceWithLink(Ljava/lang/CharSequence;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;)Ljava/lang/CharSequence;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_a4

    .line 159
    .end local v34    # "whoUser":Lorg/telegram/tgnet/TLRPC$User;
    :cond_3b5
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatAddUser;

    move/from16 v35, v0

    if-eqz v35, :cond_63d

    .line 160
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$MessageAction;->user_id:I

    move/from16 v24, v0

    .line 161
    .local v24, "singleUserId":I
    if-nez v24, :cond_413

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageAction;->users:Ljava/util/ArrayList;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Ljava/util/ArrayList;->size()I

    move-result v35

    const/16 v36, 0x1

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_413

    .line 162
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageAction;->users:Ljava/util/ArrayList;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    invoke-virtual/range {v35 .. v36}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Ljava/lang/Integer;

    invoke-virtual/range {v35 .. v35}, Ljava/lang/Integer;->intValue()I

    move-result v24

    .line 164
    :cond_413
    if-eqz v24, :cond_5c3

    .line 165
    const/16 v34, 0x0

    .line 166
    .restart local v34    # "whoUser":Lorg/telegram/tgnet/TLRPC$User;
    if-eqz p2, :cond_427

    .line 167
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    move-object/from16 v0, p2

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v34

    .end local v34    # "whoUser":Lorg/telegram/tgnet/TLRPC$User;
    check-cast v34, Lorg/telegram/tgnet/TLRPC$User;

    .line 169
    .restart local v34    # "whoUser":Lorg/telegram/tgnet/TLRPC$User;
    :cond_427
    if-nez v34, :cond_435

    .line 170
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v35

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v34

    .line 172
    :cond_435
    move-object/from16 v0, p1

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    move/from16 v35, v0

    move/from16 v0, v24

    move/from16 v1, v35

    if-ne v0, v1, :cond_4ea

    .line 173
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    move/from16 v35, v0

    if-eqz v35, :cond_466

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/MessageObject;->isMegagroup()Z

    move-result v35

    if-nez v35, :cond_466

    .line 174
    const-string v35, "ChannelJoined"

    const v36, 0x7f07012b

    invoke-static/range {v35 .. v36}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_a4

    .line 176
    :cond_466
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    move/from16 v35, v0

    if-eqz v35, :cond_4b4

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/MessageObject;->isMegagroup()Z

    move-result v35

    if-eqz v35, :cond_4b4

    .line 177
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v35

    move/from16 v0, v24

    move/from16 v1, v35

    if-ne v0, v1, :cond_495

    .line 178
    const-string v35, "ChannelMegaJoined"

    const v36, 0x7f07012f

    invoke-static/range {v35 .. v36}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_a4

    .line 180
    :cond_495
    const-string v35, "ActionAddUserSelfMega"

    const v36, 0x7f070038

    invoke-static/range {v35 .. v36}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    const-string v36, "un1"

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    move-object/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/messenger/MessageObject;->replaceWithLink(Ljava/lang/CharSequence;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;)Ljava/lang/CharSequence;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_a4

    .line 182
    :cond_4b4
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/MessageObject;->isOut()Z

    move-result v35

    if-eqz v35, :cond_4cb

    .line 183
    const-string v35, "ActionAddUserSelfYou"

    const v36, 0x7f070039

    invoke-static/range {v35 .. v36}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_a4

    .line 185
    :cond_4cb
    const-string v35, "ActionAddUserSelf"

    const v36, 0x7f070037

    invoke-static/range {v35 .. v36}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    const-string v36, "un1"

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    move-object/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/messenger/MessageObject;->replaceWithLink(Ljava/lang/CharSequence;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;)Ljava/lang/CharSequence;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_a4

    .line 189
    :cond_4ea
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/MessageObject;->isOut()Z

    move-result v35

    if-eqz v35, :cond_50f

    .line 190
    const-string v35, "ActionYouAddUser"

    const v36, 0x7f07005b

    invoke-static/range {v35 .. v36}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    const-string v36, "un2"

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    move-object/from16 v3, v34

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/messenger/MessageObject;->replaceWithLink(Ljava/lang/CharSequence;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;)Ljava/lang/CharSequence;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_a4

    .line 191
    :cond_50f
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v35

    move/from16 v0, v24

    move/from16 v1, v35

    if-ne v0, v1, :cond_58a

    .line 192
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    move/from16 v35, v0

    if-eqz v35, :cond_56b

    .line 193
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/MessageObject;->isMegagroup()Z

    move-result v35

    if-eqz v35, :cond_54c

    .line 194
    const-string v35, "MegaAddedBy"

    const v36, 0x7f0702fe

    invoke-static/range {v35 .. v36}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    const-string v36, "un1"

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    move-object/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/messenger/MessageObject;->replaceWithLink(Ljava/lang/CharSequence;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;)Ljava/lang/CharSequence;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_a4

    .line 196
    :cond_54c
    const-string v35, "ChannelAddedBy"

    const v36, 0x7f070112

    invoke-static/range {v35 .. v36}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    const-string v36, "un1"

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    move-object/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/messenger/MessageObject;->replaceWithLink(Ljava/lang/CharSequence;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;)Ljava/lang/CharSequence;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_a4

    .line 199
    :cond_56b
    const-string v35, "ActionAddUserYou"

    const v36, 0x7f07003a

    invoke-static/range {v35 .. v36}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    const-string v36, "un1"

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    move-object/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/messenger/MessageObject;->replaceWithLink(Ljava/lang/CharSequence;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;)Ljava/lang/CharSequence;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_a4

    .line 202
    :cond_58a
    const-string v35, "ActionAddUser"

    const v36, 0x7f070036

    invoke-static/range {v35 .. v36}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    const-string v36, "un2"

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    move-object/from16 v3, v34

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/messenger/MessageObject;->replaceWithLink(Ljava/lang/CharSequence;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;)Ljava/lang/CharSequence;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    .line 203
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    move-object/from16 v35, v0

    const-string v36, "un1"

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    move-object/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/messenger/MessageObject;->replaceWithLink(Ljava/lang/CharSequence;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;)Ljava/lang/CharSequence;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_a4

    .line 207
    .end local v34    # "whoUser":Lorg/telegram/tgnet/TLRPC$User;
    :cond_5c3
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/MessageObject;->isOut()Z

    move-result v35

    if-eqz v35, :cond_5f6

    .line 208
    const-string v35, "ActionYouAddUser"

    const v36, 0x7f07005b

    invoke-static/range {v35 .. v36}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    const-string v36, "un2"

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageAction;->users:Ljava/util/ArrayList;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    move-object/from16 v3, v37

    move-object/from16 v4, p2

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/telegram/messenger/MessageObject;->replaceWithLink(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/AbstractMap;)Ljava/lang/CharSequence;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_a4

    .line 210
    :cond_5f6
    const-string v35, "ActionAddUser"

    const v36, 0x7f070036

    invoke-static/range {v35 .. v36}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    const-string v36, "un2"

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageAction;->users:Ljava/util/ArrayList;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    move-object/from16 v3, v37

    move-object/from16 v4, p2

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/telegram/messenger/MessageObject;->replaceWithLink(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/AbstractMap;)Ljava/lang/CharSequence;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    .line 211
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    move-object/from16 v35, v0

    const-string v36, "un1"

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    move-object/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/messenger/MessageObject;->replaceWithLink(Ljava/lang/CharSequence;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;)Ljava/lang/CharSequence;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_a4

    .line 214
    .end local v24    # "singleUserId":I
    :cond_63d
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatJoinedByLink;

    move/from16 v35, v0

    if-eqz v35, :cond_681

    .line 215
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/MessageObject;->isOut()Z

    move-result v35

    if-eqz v35, :cond_662

    .line 216
    const-string v35, "ActionInviteYou"

    const v36, 0x7f070044

    invoke-static/range {v35 .. v36}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_a4

    .line 218
    :cond_662
    const-string v35, "ActionInviteUser"

    const v36, 0x7f070043

    invoke-static/range {v35 .. v36}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    const-string v36, "un1"

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    move-object/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/messenger/MessageObject;->replaceWithLink(Ljava/lang/CharSequence;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;)Ljava/lang/CharSequence;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_a4

    .line 220
    :cond_681
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatEditPhoto;

    move/from16 v35, v0

    if-eqz v35, :cond_6ea

    .line 221
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    move/from16 v35, v0

    if-eqz v35, :cond_6b4

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/MessageObject;->isMegagroup()Z

    move-result v35

    if-nez v35, :cond_6b4

    .line 222
    const-string v35, "ActionChannelChangedPhoto"

    const v36, 0x7f07003d

    invoke-static/range {v35 .. v36}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_a4

    .line 224
    :cond_6b4
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/MessageObject;->isOut()Z

    move-result v35

    if-eqz v35, :cond_6cb

    .line 225
    const-string v35, "ActionYouChangedPhoto"

    const v36, 0x7f07005c

    invoke-static/range {v35 .. v36}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_a4

    .line 227
    :cond_6cb
    const-string v35, "ActionChangedPhoto"

    const v36, 0x7f07003b

    invoke-static/range {v35 .. v36}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    const-string v36, "un1"

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    move-object/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/messenger/MessageObject;->replaceWithLink(Ljava/lang/CharSequence;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;)Ljava/lang/CharSequence;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_a4

    .line 230
    :cond_6ea
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatEditTitle;

    move/from16 v35, v0

    if-eqz v35, :cond_789

    .line 231
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    move/from16 v35, v0

    if-eqz v35, :cond_72f

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/MessageObject;->isMegagroup()Z

    move-result v35

    if-nez v35, :cond_72f

    .line 232
    const-string v35, "ActionChannelChangedTitle"

    const v36, 0x7f07003e

    invoke-static/range {v35 .. v36}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    const-string v36, "un2"

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageAction;->title:Ljava/lang/String;

    move-object/from16 v37, v0

    invoke-virtual/range {v35 .. v37}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_a4

    .line 234
    :cond_72f
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/MessageObject;->isOut()Z

    move-result v35

    if-eqz v35, :cond_758

    .line 235
    const-string v35, "ActionYouChangedTitle"

    const v36, 0x7f07005d

    invoke-static/range {v35 .. v36}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    const-string v36, "un2"

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageAction;->title:Ljava/lang/String;

    move-object/from16 v37, v0

    invoke-virtual/range {v35 .. v37}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_a4

    .line 237
    :cond_758
    const-string v35, "ActionChangedTitle"

    const v36, 0x7f07003c

    invoke-static/range {v35 .. v36}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    const-string v36, "un2"

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageAction;->title:Ljava/lang/String;

    move-object/from16 v37, v0

    invoke-virtual/range {v35 .. v37}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v35

    const-string v36, "un1"

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    move-object/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/messenger/MessageObject;->replaceWithLink(Ljava/lang/CharSequence;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;)Ljava/lang/CharSequence;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_a4

    .line 240
    :cond_789
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatDeletePhoto;

    move/from16 v35, v0

    if-eqz v35, :cond_7f2

    .line 241
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    move/from16 v35, v0

    if-eqz v35, :cond_7bc

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/MessageObject;->isMegagroup()Z

    move-result v35

    if-nez v35, :cond_7bc

    .line 242
    const-string v35, "ActionChannelRemovedPhoto"

    const v36, 0x7f07003f

    invoke-static/range {v35 .. v36}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_a4

    .line 244
    :cond_7bc
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/MessageObject;->isOut()Z

    move-result v35

    if-eqz v35, :cond_7d3

    .line 245
    const-string v35, "ActionYouRemovedPhoto"

    const v36, 0x7f070061

    invoke-static/range {v35 .. v36}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_a4

    .line 247
    :cond_7d3
    const-string v35, "ActionRemovedPhoto"

    const v36, 0x7f070056

    invoke-static/range {v35 .. v36}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    const-string v36, "un1"

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    move-object/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/messenger/MessageObject;->replaceWithLink(Ljava/lang/CharSequence;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;)Ljava/lang/CharSequence;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_a4

    .line 250
    :cond_7f2
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionTTLChange;

    move/from16 v35, v0

    if-eqz v35, :cond_8ae

    .line 251
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$MessageAction;->ttl:I

    move/from16 v35, v0

    if-eqz v35, :cond_876

    .line 252
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/MessageObject;->isOut()Z

    move-result v35

    if-eqz v35, :cond_841

    .line 253
    const-string v35, "MessageLifetimeChangedOutgoing"

    const v36, 0x7f070315

    const/16 v37, 0x1

    move/from16 v0, v37

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$MessageAction;->ttl:I

    move/from16 v39, v0

    invoke-static/range {v39 .. v39}, Lorg/telegram/messenger/LocaleController;->formatTTLString(I)Ljava/lang/String;

    move-result-object v39

    aput-object v39, v37, v38

    invoke-static/range {v35 .. v37}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_a4

    .line 255
    :cond_841
    const-string v35, "MessageLifetimeChanged"

    const v36, 0x7f070314

    const/16 v37, 0x2

    move/from16 v0, v37

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v39

    aput-object v39, v37, v38

    const/16 v38, 0x1

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$MessageAction;->ttl:I

    move/from16 v39, v0

    invoke-static/range {v39 .. v39}, Lorg/telegram/messenger/LocaleController;->formatTTLString(I)Ljava/lang/String;

    move-result-object v39

    aput-object v39, v37, v38

    invoke-static/range {v35 .. v37}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_a4

    .line 258
    :cond_876
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/MessageObject;->isOut()Z

    move-result v35

    if-eqz v35, :cond_88d

    .line 259
    const-string v35, "MessageLifetimeYouRemoved"

    const v36, 0x7f070317

    invoke-static/range {v35 .. v36}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_a4

    .line 261
    :cond_88d
    const-string v35, "MessageLifetimeRemoved"

    const v36, 0x7f070316

    const/16 v37, 0x1

    move/from16 v0, v37

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v39

    aput-object v39, v37, v38

    invoke-static/range {v35 .. v37}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_a4

    .line 264
    :cond_8ae
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionLoginUnknownLocation;

    move/from16 v35, v0

    if-eqz v35, :cond_9cd

    .line 266
    move-object/from16 v0, p1

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    move/from16 v35, v0

    move/from16 v0, v35

    int-to-long v0, v0

    move-wide/from16 v36, v0

    const-wide/16 v38, 0x3e8

    mul-long v30, v36, v38

    .line 267
    .local v30, "time":J
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v35

    move-object/from16 v0, v35

    iget-object v0, v0, Lorg/telegram/messenger/LocaleController;->formatterDay:Lorg/telegram/messenger/time/FastDateFormat;

    move-object/from16 v35, v0

    if-eqz v35, :cond_9af

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v35

    move-object/from16 v0, v35

    iget-object v0, v0, Lorg/telegram/messenger/LocaleController;->formatterYear:Lorg/telegram/messenger/time/FastDateFormat;

    move-object/from16 v35, v0

    if-eqz v35, :cond_9af

    .line 268
    const-string v35, "formatDateAtTime"

    const v36, 0x7f0705d1

    const/16 v37, 0x2

    move/from16 v0, v37

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v39

    move-object/from16 v0, v39

    iget-object v0, v0, Lorg/telegram/messenger/LocaleController;->formatterYear:Lorg/telegram/messenger/time/FastDateFormat;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    move-wide/from16 v1, v30

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/time/FastDateFormat;->format(J)Ljava/lang/String;

    move-result-object v39

    aput-object v39, v37, v38

    const/16 v38, 0x1

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v39

    move-object/from16 v0, v39

    iget-object v0, v0, Lorg/telegram/messenger/LocaleController;->formatterDay:Lorg/telegram/messenger/time/FastDateFormat;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    move-wide/from16 v1, v30

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/time/FastDateFormat;->format(J)Ljava/lang/String;

    move-result-object v39

    aput-object v39, v37, v38

    invoke-static/range {v35 .. v37}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 272
    .local v10, "date":Ljava/lang/String;
    :goto_920
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v29

    .line 273
    .local v29, "to_user":Lorg/telegram/tgnet/TLRPC$User;
    if-nez v29, :cond_968

    .line 274
    if-eqz p2, :cond_948

    .line 275
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    move/from16 v35, v0

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    move-object/from16 v0, p2

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v29

    .end local v29    # "to_user":Lorg/telegram/tgnet/TLRPC$User;
    check-cast v29, Lorg/telegram/tgnet/TLRPC$User;

    .line 277
    .restart local v29    # "to_user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_948
    if-nez v29, :cond_968

    .line 278
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v35

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    move/from16 v36, v0

    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v29

    .line 281
    :cond_968
    if-eqz v29, :cond_9ca

    invoke-static/range {v29 .. v29}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v20

    .line 282
    .local v20, "name":Ljava/lang/String;
    :goto_96e
    const-string v35, "NotificationUnrecognizedDevice"

    const v36, 0x7f0703ba

    const/16 v37, 0x4

    move/from16 v0, v37

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    aput-object v20, v37, v38

    const/16 v38, 0x1

    aput-object v10, v37, v38

    const/16 v38, 0x2

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageAction;->title:Ljava/lang/String;

    move-object/from16 v39, v0

    aput-object v39, v37, v38

    const/16 v38, 0x3

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageAction;->address:Ljava/lang/String;

    move-object/from16 v39, v0

    aput-object v39, v37, v38

    invoke-static/range {v35 .. v37}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_a4

    .line 270
    .end local v10    # "date":Ljava/lang/String;
    .end local v20    # "name":Ljava/lang/String;
    .end local v29    # "to_user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_9af
    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, ""

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, p1

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    move/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .restart local v10    # "date":Ljava/lang/String;
    goto/16 :goto_920

    .line 281
    .restart local v29    # "to_user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_9ca
    const-string v20, ""

    goto :goto_96e

    .line 283
    .end local v10    # "date":Ljava/lang/String;
    .end local v29    # "to_user":Lorg/telegram/tgnet/TLRPC$User;
    .end local v30    # "time":J
    :cond_9cd
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionUserJoined;

    move/from16 v35, v0

    if-eqz v35, :cond_9fc

    .line 284
    const-string v35, "NotificationContactJoined"

    const v36, 0x7f070393

    const/16 v37, 0x1

    move/from16 v0, v37

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v39

    aput-object v39, v37, v38

    invoke-static/range {v35 .. v37}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_a4

    .line 285
    :cond_9fc
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionUserUpdatedPhoto;

    move/from16 v35, v0

    if-eqz v35, :cond_a2b

    .line 286
    const-string v35, "NotificationContactNewPhoto"

    const v36, 0x7f070394

    const/16 v37, 0x1

    move/from16 v0, v37

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v39

    aput-object v39, v37, v38

    invoke-static/range {v35 .. v37}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_a4

    .line 287
    :cond_a2b
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageEncryptedAction;

    move/from16 v35, v0

    if-eqz v35, :cond_b41

    .line 288
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageAction;->encryptedAction:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionScreenshotMessages;

    move/from16 v35, v0

    if-eqz v35, :cond_a8b

    .line 289
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/MessageObject;->isOut()Z

    move-result v35

    if-eqz v35, :cond_a6c

    .line 290
    const-string v35, "ActionTakeScreenshootYou"

    const v36, 0x7f070058

    const/16 v37, 0x0

    move/from16 v0, v37

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v37, v0

    invoke-static/range {v35 .. v37}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_a4

    .line 292
    :cond_a6c
    const-string v35, "ActionTakeScreenshoot"

    const v36, 0x7f070057

    invoke-static/range {v35 .. v36}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    const-string v36, "un1"

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    move-object/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/messenger/MessageObject;->replaceWithLink(Ljava/lang/CharSequence;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;)Ljava/lang/CharSequence;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_a4

    .line 294
    :cond_a8b
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageAction;->encryptedAction:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionSetMessageTTL;

    move/from16 v35, v0

    if-eqz v35, :cond_a4

    .line 295
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget-object v8, v0, Lorg/telegram/tgnet/TLRPC$MessageAction;->encryptedAction:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    check-cast v8, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionSetMessageTTL;

    .line 296
    .local v8, "action":Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionSetMessageTTL;
    iget v0, v8, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionSetMessageTTL;->ttl_seconds:I

    move/from16 v35, v0

    if-eqz v35, :cond_b09

    .line 297
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/MessageObject;->isOut()Z

    move-result v35

    if-eqz v35, :cond_adc

    .line 298
    const-string v35, "MessageLifetimeChangedOutgoing"

    const v36, 0x7f070315

    const/16 v37, 0x1

    move/from16 v0, v37

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    iget v0, v8, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionSetMessageTTL;->ttl_seconds:I

    move/from16 v39, v0

    invoke-static/range {v39 .. v39}, Lorg/telegram/messenger/LocaleController;->formatTTLString(I)Ljava/lang/String;

    move-result-object v39

    aput-object v39, v37, v38

    invoke-static/range {v35 .. v37}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_a4

    .line 300
    :cond_adc
    const-string v35, "MessageLifetimeChanged"

    const v36, 0x7f070314

    const/16 v37, 0x2

    move/from16 v0, v37

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v39

    aput-object v39, v37, v38

    const/16 v38, 0x1

    iget v0, v8, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionSetMessageTTL;->ttl_seconds:I

    move/from16 v39, v0

    invoke-static/range {v39 .. v39}, Lorg/telegram/messenger/LocaleController;->formatTTLString(I)Ljava/lang/String;

    move-result-object v39

    aput-object v39, v37, v38

    invoke-static/range {v35 .. v37}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_a4

    .line 303
    :cond_b09
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/MessageObject;->isOut()Z

    move-result v35

    if-eqz v35, :cond_b20

    .line 304
    const-string v35, "MessageLifetimeYouRemoved"

    const v36, 0x7f070317

    invoke-static/range {v35 .. v36}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_a4

    .line 306
    :cond_b20
    const-string v35, "MessageLifetimeRemoved"

    const v36, 0x7f070316

    const/16 v37, 0x1

    move/from16 v0, v37

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v39

    aput-object v39, v37, v38

    invoke-static/range {v35 .. v37}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_a4

    .line 310
    .end local v8    # "action":Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionSetMessageTTL;
    :cond_b41
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionCreatedBroadcastList;

    move/from16 v35, v0

    if-eqz v35, :cond_b68

    .line 311
    const-string v35, "YouCreatedBroadcastList"

    const v36, 0x7f0705be

    const/16 v37, 0x0

    move/from16 v0, v37

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v37, v0

    invoke-static/range {v35 .. v37}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_a4

    .line 312
    :cond_b68
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionChannelCreate;

    move/from16 v35, v0

    if-eqz v35, :cond_b9e

    .line 313
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/MessageObject;->isMegagroup()Z

    move-result v35

    if-eqz v35, :cond_b8d

    .line 314
    const-string v35, "ActionCreateMega"

    const v36, 0x7f070042

    invoke-static/range {v35 .. v36}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_a4

    .line 316
    :cond_b8d
    const-string v35, "ActionCreateChannel"

    const v36, 0x7f070040

    invoke-static/range {v35 .. v36}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_a4

    .line 318
    :cond_b9e
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatMigrateTo;

    move/from16 v35, v0

    if-eqz v35, :cond_bbd

    .line 319
    const-string v35, "ActionMigrateFromGroup"

    const v36, 0x7f070048

    invoke-static/range {v35 .. v36}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_a4

    .line 320
    :cond_bbd
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionChannelMigrateFrom;

    move/from16 v35, v0

    if-eqz v35, :cond_bdc

    .line 321
    const-string v35, "ActionMigrateFromGroup"

    const v36, 0x7f070048

    invoke-static/range {v35 .. v36}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_a4

    .line 322
    :cond_bdc
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionPinMessage;

    move/from16 v35, v0

    if-eqz v35, :cond_c16

    .line 323
    if-nez v18, :cond_c13

    if-eqz p3, :cond_c13

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    move/from16 v35, v0

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    move-object/from16 v0, p3

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Lorg/telegram/tgnet/TLRPC$Chat;

    :goto_c08
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MessageObject;->generatePinMessageText(Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Chat;)V

    goto/16 :goto_a4

    :cond_c13
    const/16 v35, 0x0

    goto :goto_c08

    .line 324
    :cond_c16
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionHistoryClear;

    move/from16 v35, v0

    if-eqz v35, :cond_c35

    .line 325
    const-string v35, "HistoryCleared"

    const v36, 0x7f07027e

    invoke-static/range {v35 .. v36}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_a4

    .line 326
    :cond_c35
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionGameScore;

    move/from16 v35, v0

    if-eqz v35, :cond_c4c

    .line 327
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessageObject;->generateGameMessageText(Lorg/telegram/tgnet/TLRPC$User;)V

    goto/16 :goto_a4

    .line 328
    :cond_c4c
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionPhoneCall;

    move/from16 v35, v0

    if-eqz v35, :cond_d93

    .line 329
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget-object v9, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    check-cast v9, Lorg/telegram/tgnet/TLRPC$TL_messageActionPhoneCall;

    .line 330
    .local v9, "call":Lorg/telegram/tgnet/TLRPC$TL_messageActionPhoneCall;
    iget-object v0, v9, Lorg/telegram/tgnet/TLRPC$TL_messageActionPhoneCall;->reason:Lorg/telegram/tgnet/TLRPC$PhoneCallDiscardReason;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_phoneCallDiscardReasonMissed;

    move/from16 v19, v0

    .line 331
    .local v19, "isMissed":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    move/from16 v35, v0

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v36

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_d52

    .line 332
    if-eqz v19, :cond_d41

    .line 333
    const-string v35, "CallMessageOutgoingMissed"

    const v36, 0x7f0700f5

    invoke-static/range {v35 .. v36}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    .line 346
    :goto_c97
    iget v0, v9, Lorg/telegram/tgnet/TLRPC$TL_messageActionPhoneCall;->duration:I

    move/from16 v35, v0

    if-lez v35, :cond_a4

    .line 347
    iget v0, v9, Lorg/telegram/tgnet/TLRPC$TL_messageActionPhoneCall;->duration:I

    move/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lorg/telegram/messenger/LocaleController;->formatCallDuration(I)Ljava/lang/String;

    move-result-object v14

    .line 348
    .local v14, "duration":Ljava/lang/String;
    const-string v35, "CallMessageWithDuration"

    const v36, 0x7f0700f6

    const/16 v37, 0x2

    move/from16 v0, v37

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    move-object/from16 v39, v0

    aput-object v39, v37, v38

    const/16 v38, 0x1

    aput-object v14, v37, v38

    invoke-static/range {v35 .. v37}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    .line 349
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    move-object/from16 v35, v0

    invoke-interface/range {v35 .. v35}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    .line 350
    .local v6, "_messageText":Ljava/lang/String;
    invoke-virtual {v6, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v28

    .line 351
    .local v28, "start":I
    const/16 v35, -0x1

    move/from16 v0, v28

    move/from16 v1, v35

    if-eq v0, v1, :cond_a4

    .line 352
    new-instance v26, Landroid/text/SpannableString;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    move-object/from16 v35, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 353
    .local v26, "sp":Landroid/text/SpannableString;
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v35

    add-int v17, v28, v35

    .line 354
    .local v17, "end":I
    if-lez v28, :cond_d09

    add-int/lit8 v35, v28, -0x1

    move/from16 v0, v35

    invoke-virtual {v6, v0}, Ljava/lang/String;->charAt(I)C

    move-result v35

    const/16 v36, 0x28

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_d09

    .line 355
    add-int/lit8 v28, v28, -0x1

    .line 357
    :cond_d09
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v35

    move/from16 v0, v17

    move/from16 v1, v35

    if-ge v0, v1, :cond_d23

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/String;->charAt(I)C

    move-result v35

    const/16 v36, 0x29

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_d23

    .line 358
    add-int/lit8 v17, v17, 0x1

    .line 360
    :cond_d23
    new-instance v35, Lorg/telegram/ui/Components/TypefaceSpan;

    sget-object v36, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-direct/range {v35 .. v36}, Lorg/telegram/ui/Components/TypefaceSpan;-><init>(Landroid/graphics/Typeface;)V

    const/16 v36, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v35

    move/from16 v2, v28

    move/from16 v3, v17

    move/from16 v4, v36

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 361
    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_a4

    .line 335
    .end local v6    # "_messageText":Ljava/lang/String;
    .end local v14    # "duration":Ljava/lang/String;
    .end local v17    # "end":I
    .end local v26    # "sp":Landroid/text/SpannableString;
    .end local v28    # "start":I
    :cond_d41
    const-string v35, "CallMessageOutgoing"

    const v36, 0x7f0700f4

    invoke-static/range {v35 .. v36}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_c97

    .line 338
    :cond_d52
    if-eqz v19, :cond_d65

    .line 339
    const-string v35, "CallMessageIncomingMissed"

    const v36, 0x7f0700f3

    invoke-static/range {v35 .. v36}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_c97

    .line 340
    :cond_d65
    iget-object v0, v9, Lorg/telegram/tgnet/TLRPC$TL_messageActionPhoneCall;->reason:Lorg/telegram/tgnet/TLRPC$PhoneCallDiscardReason;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_phoneCallDiscardReasonBusy;

    move/from16 v35, v0

    if-eqz v35, :cond_d82

    .line 341
    const-string v35, "CallMessageIncomingDeclined"

    const v36, 0x7f0700f2

    invoke-static/range {v35 .. v36}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_c97

    .line 343
    :cond_d82
    const-string v35, "CallMessageIncoming"

    const v36, 0x7f0700f1

    invoke-static/range {v35 .. v36}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_c97

    .line 364
    .end local v9    # "call":Lorg/telegram/tgnet/TLRPC$TL_messageActionPhoneCall;
    .end local v19    # "isMissed":Z
    :cond_d93
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionPaymentSent;

    move/from16 v35, v0

    if-eqz v35, :cond_a4

    .line 365
    const/16 v33, 0x0

    .line 366
    .local v33, "user":Lorg/telegram/tgnet/TLRPC$User;
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v36

    move-wide/from16 v0, v36

    long-to-int v0, v0

    move/from16 v32, v0

    .line 367
    .local v32, "uid":I
    if-eqz p2, :cond_dbc

    .line 368
    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    move-object/from16 v0, p2

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    .end local v18    # "fromUser":Lorg/telegram/tgnet/TLRPC$User;
    check-cast v18, Lorg/telegram/tgnet/TLRPC$User;

    .line 370
    .restart local v18    # "fromUser":Lorg/telegram/tgnet/TLRPC$User;
    :cond_dbc
    if-nez v18, :cond_dca

    .line 371
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v35

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v18

    .line 373
    :cond_dca
    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessageObject;->generatePaymentSentMessageText(Lorg/telegram/tgnet/TLRPC$User;)V

    goto/16 :goto_a4

    .line 376
    .end local v32    # "uid":I
    .end local v33    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_dd3
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/MessageObject;->isMediaEmpty()Z

    move-result v35

    if-nez v35, :cond_f86

    .line 377
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;

    move/from16 v35, v0

    if-eqz v35, :cond_df8

    .line 378
    const-string v35, "AttachPhoto"

    const v36, 0x7f0700c2

    invoke-static/range {v35 .. v36}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_a4

    .line 379
    :cond_df8
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/MessageObject;->isVideo()Z

    move-result v35

    if-eqz v35, :cond_e0f

    .line 380
    const-string v35, "AttachVideo"

    const v36, 0x7f0700c4

    invoke-static/range {v35 .. v36}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_a4

    .line 381
    :cond_e0f
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/MessageObject;->isVoice()Z

    move-result v35

    if-eqz v35, :cond_e26

    .line 382
    const-string v35, "AttachAudio"

    const v36, 0x7f0700ba

    invoke-static/range {v35 .. v36}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_a4

    .line 383
    :cond_e26
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGeo;

    move/from16 v35, v0

    if-nez v35, :cond_e42

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;

    move/from16 v35, v0

    if-eqz v35, :cond_e53

    .line 384
    :cond_e42
    const-string v35, "AttachLocation"

    const v36, 0x7f0700c0

    invoke-static/range {v35 .. v36}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_a4

    .line 385
    :cond_e53
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaContact;

    move/from16 v35, v0

    if-eqz v35, :cond_e72

    .line 386
    const-string v35, "AttachContact"

    const v36, 0x7f0700bc

    invoke-static/range {v35 .. v36}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_a4

    .line 387
    :cond_e72
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGame;

    move/from16 v35, v0

    if-eqz v35, :cond_e8e

    .line 388
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_a4

    .line 389
    :cond_e8e
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaInvoice;

    move/from16 v35, v0

    if-eqz v35, :cond_eb0

    .line 390
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->description:Ljava/lang/String;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_a4

    .line 391
    :cond_eb0
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaUnsupported;

    move/from16 v35, v0

    if-eqz v35, :cond_ecf

    .line 392
    const-string v35, "UnsupportedMedia"

    const v36, 0x7f070558

    invoke-static/range {v35 .. v36}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_a4

    .line 393
    :cond_ecf
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    move/from16 v35, v0

    if-eqz v35, :cond_a4

    .line 394
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/MessageObject;->isSticker()Z

    move-result v35

    if-eqz v35, :cond_f27

    .line 395
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/MessageObject;->getStrickerChar()Ljava/lang/String;

    move-result-object v23

    .line 396
    .local v23, "sch":Ljava/lang/String;
    if-eqz v23, :cond_f16

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v35

    if-lez v35, :cond_f16

    .line 397
    const-string v35, "%s %s"

    const/16 v36, 0x2

    move/from16 v0, v36

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v36, v0

    const/16 v37, 0x0

    aput-object v23, v36, v37

    const/16 v37, 0x1

    const-string v38, "AttachSticker"

    const v39, 0x7f0700c3

    invoke-static/range {v38 .. v39}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v38

    aput-object v38, v36, v37

    invoke-static/range {v35 .. v36}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_a4

    .line 399
    :cond_f16
    const-string v35, "AttachSticker"

    const v36, 0x7f0700c3

    invoke-static/range {v35 .. v36}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_a4

    .line 401
    .end local v23    # "sch":Ljava/lang/String;
    :cond_f27
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result v35

    if-eqz v35, :cond_f3e

    .line 402
    const-string v35, "AttachMusic"

    const v36, 0x7f0700c1

    invoke-static/range {v35 .. v36}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_a4

    .line 403
    :cond_f3e
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/MessageObject;->isGif()Z

    move-result v35

    if-eqz v35, :cond_f55

    .line 404
    const-string v35, "AttachGif"

    const v36, 0x7f0700bf

    invoke-static/range {v35 .. v36}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_a4

    .line 406
    :cond_f55
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lorg/telegram/messenger/FileLoader;->getDocumentFileName(Lorg/telegram/tgnet/TLRPC$Document;)Ljava/lang/String;

    move-result-object v20

    .line 407
    .restart local v20    # "name":Ljava/lang/String;
    if-eqz v20, :cond_f75

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v35

    if-lez v35, :cond_f75

    .line 408
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_a4

    .line 410
    :cond_f75
    const-string v35, "AttachDocument"

    const v36, 0x7f0700bd

    invoke-static/range {v35 .. v36}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_a4

    .line 415
    .end local v20    # "name":Ljava/lang/String;
    :cond_f86
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_a4

    .line 445
    .restart local v11    # "dateDay":I
    .restart local v12    # "dateMonth":I
    .restart local v13    # "dateYear":I
    .restart local v22    # "rightNow":Ljava/util/Calendar;
    :cond_f94
    sget-object v21, Lorg/telegram/ui/ActionBar/Theme;->chat_msgTextPaint:Landroid/text/TextPaint;

    .restart local v21    # "paint":Landroid/text/TextPaint;
    goto/16 :goto_1cf

    .line 447
    :cond_f98
    const/4 v15, 0x0

    goto/16 :goto_1e1

    .line 454
    .restart local v15    # "emojiOnly":[I
    :pswitch_f9b
    sget-object v16, Lorg/telegram/ui/ActionBar/Theme;->chat_msgTextPaintOneEmoji:Landroid/text/TextPaint;

    .line 455
    .restart local v16    # "emojiPaint":Landroid/text/TextPaint;
    const/high16 v35, 0x42000000    # 32.0f

    invoke-static/range {v35 .. v35}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v25

    .line 456
    .restart local v25    # "size":I
    goto/16 :goto_22e

    .line 458
    .end local v16    # "emojiPaint":Landroid/text/TextPaint;
    .end local v25    # "size":I
    :pswitch_fa5
    sget-object v16, Lorg/telegram/ui/ActionBar/Theme;->chat_msgTextPaintTwoEmoji:Landroid/text/TextPaint;

    .line 459
    .restart local v16    # "emojiPaint":Landroid/text/TextPaint;
    const/high16 v35, 0x41e00000    # 28.0f

    invoke-static/range {v35 .. v35}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v25

    .line 460
    .restart local v25    # "size":I
    goto/16 :goto_22e

    .line 474
    .end local v16    # "emojiPaint":Landroid/text/TextPaint;
    .end local v25    # "size":I
    :cond_faf
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessageObject;->generateLayout(Lorg/telegram/tgnet/TLRPC$User;)V

    .line 476
    .end local v15    # "emojiOnly":[I
    .end local v21    # "paint":Landroid/text/TextPaint;
    :cond_fb6
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/telegram/messenger/MessageObject;->layoutCreated:Z

    .line 477
    const/16 v35, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessageObject;->generateThumbs(Z)V

    .line 478
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/MessageObject;->checkMediaExistance()V

    .line 479
    return-void

    .line 452
    nop

    :pswitch_data_fca
    .packed-switch 0x1
        :pswitch_f9b
        :pswitch_fa5
    .end packed-switch
.end method

.method public constructor <init>(Lorg/telegram/tgnet/TLRPC$Message;Ljava/util/AbstractMap;Z)V
    .registers 5
    .param p1, "message"    # Lorg/telegram/tgnet/TLRPC$Message;
    .param p3, "generateLayout"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/tgnet/TLRPC$Message;",
            "Ljava/util/AbstractMap",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/telegram/tgnet/TLRPC$User;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 105
    .local p2, "users":Ljava/util/AbstractMap;, "Ljava/util/AbstractMap<Ljava/lang/Integer;Lorg/telegram/tgnet/TLRPC$User;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lorg/telegram/messenger/MessageObject;-><init>(Lorg/telegram/tgnet/TLRPC$Message;Ljava/util/AbstractMap;Ljava/util/AbstractMap;Z)V

    .line 106
    return-void
.end method

.method public static addLinks(ZLjava/lang/CharSequence;)V
    .registers 3
    .param p0, "isOut"    # Z
    .param p1, "messageText"    # Ljava/lang/CharSequence;

    .prologue
    .line 1131
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lorg/telegram/messenger/MessageObject;->addLinks(ZLjava/lang/CharSequence;Z)V

    .line 1132
    return-void
.end method

.method public static addLinks(ZLjava/lang/CharSequence;Z)V
    .registers 7
    .param p0, "isOut"    # Z
    .param p1, "messageText"    # Ljava/lang/CharSequence;
    .param p2, "botCommands"    # Z

    .prologue
    .line 1135
    instance-of v2, p1, Landroid/text/Spannable;

    if-eqz v2, :cond_1d

    invoke-static {p1}, Lorg/telegram/messenger/MessageObject;->containsUrls(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 1136
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/16 v3, 0xc8

    if-ge v2, v3, :cond_23

    .line 1138
    :try_start_12
    move-object v0, p1

    check-cast v0, Landroid/text/Spannable;

    move-object v2, v0

    const/4 v3, 0x5

    invoke-static {v2, v3}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;I)Z
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_1a} :catch_1e

    .line 1149
    :goto_1a
    invoke-static {p0, p1, p2}, Lorg/telegram/messenger/MessageObject;->addUsernamesAndHashtags(ZLjava/lang/CharSequence;Z)V

    .line 1151
    :cond_1d
    return-void

    .line 1139
    :catch_1e
    move-exception v1

    .line 1140
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1a

    .line 1144
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_23
    :try_start_23
    move-object v0, p1

    check-cast v0, Landroid/text/Spannable;

    move-object v2, v0

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;I)Z
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_2b} :catch_2c

    goto :goto_1a

    .line 1145
    :catch_2c
    move-exception v1

    .line 1146
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1a
.end method

.method private static addUsernamesAndHashtags(ZLjava/lang/CharSequence;Z)V
    .registers 12
    .param p0, "isOut"    # Z
    .param p1, "charSequence"    # Ljava/lang/CharSequence;
    .param p2, "botCommands"    # Z

    .prologue
    const/16 v8, 0x2f

    .line 1102
    :try_start_2
    sget-object v6, Lorg/telegram/messenger/MessageObject;->urlPattern:Ljava/util/regex/Pattern;

    if-nez v6, :cond_e

    .line 1103
    const-string v6, "(^|\\s)/[a-zA-Z@\\d_]{1,255}|(^|\\s)@[a-zA-Z\\d_]{1,32}|(^|\\s)#[\\w\\.]+"

    invoke-static {v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v6

    sput-object v6, Lorg/telegram/messenger/MessageObject;->urlPattern:Ljava/util/regex/Pattern;

    .line 1105
    :cond_e
    sget-object v6, Lorg/telegram/messenger/MessageObject;->urlPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v6, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 1106
    .local v3, "matcher":Ljava/util/regex/Matcher;
    :cond_14
    :goto_14
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-eqz v6, :cond_5f

    .line 1107
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->start()I

    move-result v4

    .line 1108
    .local v4, "start":I
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->end()I

    move-result v2

    .line 1109
    .local v2, "end":I
    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    const/16 v7, 0x40

    if-eq v6, v7, :cond_3a

    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    const/16 v7, 0x23

    if-eq v6, v7, :cond_3a

    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    if-eq v6, v8, :cond_3a

    .line 1110
    add-int/lit8 v4, v4, 0x1

    .line 1112
    :cond_3a
    const/4 v5, 0x0

    .line 1113
    .local v5, "url":Lorg/telegram/ui/Components/URLSpanNoUnderline;
    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    if-ne v6, v8, :cond_60

    .line 1114
    if-eqz p2, :cond_50

    .line 1115
    new-instance v5, Lorg/telegram/ui/Components/URLSpanBotCommand;

    .end local v5    # "url":Lorg/telegram/ui/Components/URLSpanNoUnderline;
    invoke-interface {p1, v4, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, p0}, Lorg/telegram/ui/Components/URLSpanBotCommand;-><init>(Ljava/lang/String;Z)V

    .line 1120
    .restart local v5    # "url":Lorg/telegram/ui/Components/URLSpanNoUnderline;
    :cond_50
    :goto_50
    if-eqz v5, :cond_14

    .line 1121
    move-object v0, p1

    check-cast v0, Landroid/text/Spannable;

    move-object v6, v0

    const/4 v7, 0x0

    invoke-interface {v6, v5, v4, v2, v7}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5a} :catch_5b

    goto :goto_14

    .line 1124
    .end local v2    # "end":I
    .end local v3    # "matcher":Ljava/util/regex/Matcher;
    .end local v4    # "start":I
    .end local v5    # "url":Lorg/telegram/ui/Components/URLSpanNoUnderline;
    :catch_5b
    move-exception v1

    .line 1125
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1127
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_5f
    return-void

    .line 1118
    .restart local v2    # "end":I
    .restart local v3    # "matcher":Ljava/util/regex/Matcher;
    .restart local v4    # "start":I
    .restart local v5    # "url":Lorg/telegram/ui/Components/URLSpanNoUnderline;
    :cond_60
    :try_start_60
    new-instance v5, Lorg/telegram/ui/Components/URLSpanNoUnderline;

    .end local v5    # "url":Lorg/telegram/ui/Components/URLSpanNoUnderline;
    invoke-interface {p1, v4, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/telegram/ui/Components/URLSpanNoUnderline;-><init>(Ljava/lang/String;)V
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_6d} :catch_5b

    .restart local v5    # "url":Lorg/telegram/ui/Components/URLSpanNoUnderline;
    goto :goto_50
.end method

.method public static canDeleteMessage(Lorg/telegram/tgnet/TLRPC$Message;Lorg/telegram/tgnet/TLRPC$Chat;)Z
    .registers 6
    .param p0, "message"    # Lorg/telegram/tgnet/TLRPC$Message;
    .param p1, "chat"    # Lorg/telegram/tgnet/TLRPC$Chat;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 2041
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    if-gez v2, :cond_7

    .line 2065
    :cond_6
    :goto_6
    return v0

    .line 2044
    :cond_7
    if-nez p1, :cond_1f

    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    if-eqz v2, :cond_1f

    .line 2045
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p1

    .line 2047
    :cond_1f
    invoke-static {p1}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v2

    if-eqz v2, :cond_41

    .line 2048
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    if-ne v2, v0, :cond_2b

    move v0, v1

    .line 2049
    goto :goto_6

    .line 2051
    :cond_2b
    iget-boolean v2, p1, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    if-nez v2, :cond_6

    .line 2053
    iget-boolean v2, p1, Lorg/telegram/tgnet/TLRPC$Chat;->editor:Z

    if-eqz v2, :cond_50

    .line 2054
    invoke-static {p0}, Lorg/telegram/messenger/MessageObject;->isOut(Lorg/telegram/tgnet/TLRPC$Message;)Z

    move-result v2

    if-nez v2, :cond_6

    iget v2, p0, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    if-lez v2, :cond_41

    iget-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$Message;->post:Z

    if-eqz v2, :cond_6

    .line 2065
    :cond_41
    invoke-static {p0}, Lorg/telegram/messenger/MessageObject;->isOut(Lorg/telegram/tgnet/TLRPC$Message;)Z

    move-result v2

    if-nez v2, :cond_4d

    invoke-static {p1}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v2

    if-nez v2, :cond_4e

    :cond_4d
    move v1, v0

    :cond_4e
    move v0, v1

    goto :goto_6

    .line 2057
    :cond_50
    iget-boolean v2, p1, Lorg/telegram/tgnet/TLRPC$Chat;->moderator:Z

    if-eqz v2, :cond_5d

    .line 2058
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    if-lez v2, :cond_41

    iget-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$Message;->post:Z

    if-nez v2, :cond_41

    goto :goto_6

    .line 2062
    :cond_5d
    iget-boolean v2, p1, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v2, :cond_6b

    invoke-static {p0}, Lorg/telegram/messenger/MessageObject;->isOut(Lorg/telegram/tgnet/TLRPC$Message;)Z

    move-result v2

    if-eqz v2, :cond_6b

    iget v2, p0, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    if-gtz v2, :cond_6

    :cond_6b
    move v0, v1

    goto :goto_6
.end method

.method public static canEditMessage(Lorg/telegram/tgnet/TLRPC$Message;Lorg/telegram/tgnet/TLRPC$Chat;)Z
    .registers 6
    .param p0, "message"    # Lorg/telegram/tgnet/TLRPC$Message;
    .param p1, "chat"    # Lorg/telegram/tgnet/TLRPC$Chat;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2002
    if-eqz p0, :cond_20

    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    if-eqz v2, :cond_20

    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    if-eqz v2, :cond_12

    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_messageActionEmpty;

    if-eqz v2, :cond_20

    :cond_12
    invoke-static {p0}, Lorg/telegram/messenger/MessageObject;->isForwardedMessage(Lorg/telegram/tgnet/TLRPC$Message;)Z

    move-result v2

    if-nez v2, :cond_20

    iget v2, p0, Lorg/telegram/tgnet/TLRPC$Message;->via_bot_id:I

    if-nez v2, :cond_20

    iget v2, p0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    if-gez v2, :cond_21

    .line 2033
    :cond_20
    :goto_20
    return v1

    .line 2005
    :cond_21
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    if-ne v2, v3, :cond_33

    iget v2, p0, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v3

    if-ne v2, v3, :cond_33

    move v1, v0

    .line 2006
    goto :goto_20

    .line 2008
    :cond_33
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget v3, v3, Lorg/telegram/messenger/MessagesController;->maxEditTime:I

    if-gt v2, v3, :cond_20

    .line 2011
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    if-nez v2, :cond_82

    .line 2012
    iget-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    if-nez v2, :cond_5c

    iget v2, p0, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v3

    if-ne v2, v3, :cond_80

    :cond_5c
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;

    if-nez v2, :cond_7e

    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    if-eqz v2, :cond_6e

    .line 2013
    invoke-static {p0}, Lorg/telegram/messenger/MessageObject;->isStickerMessage(Lorg/telegram/tgnet/TLRPC$Message;)Z

    move-result v2

    if-eqz v2, :cond_7e

    :cond_6e
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;

    if-nez v2, :cond_7e

    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;

    if-nez v2, :cond_7e

    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-nez v2, :cond_80

    :cond_7e
    :goto_7e
    move v1, v0

    .line 2012
    goto :goto_20

    :cond_80
    move v0, v1

    .line 2013
    goto :goto_7e

    .line 2018
    :cond_82
    if-nez p1, :cond_9c

    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    if-eqz v2, :cond_9c

    .line 2019
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p1

    .line 2020
    if-eqz p1, :cond_20

    .line 2024
    :cond_9c
    iget-boolean v2, p1, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v2, :cond_a4

    iget-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    if-nez v2, :cond_ba

    :cond_a4
    iget-boolean v2, p1, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez v2, :cond_20

    iget-boolean v2, p1, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    if-nez v2, :cond_b6

    iget-boolean v2, p1, Lorg/telegram/tgnet/TLRPC$Chat;->editor:Z

    if-eqz v2, :cond_20

    invoke-static {p0}, Lorg/telegram/messenger/MessageObject;->isOut(Lorg/telegram/tgnet/TLRPC$Message;)Z

    move-result v2

    if-eqz v2, :cond_20

    :cond_b6
    iget-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$Message;->post:Z

    if-eqz v2, :cond_20

    .line 2025
    :cond_ba
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;

    if-nez v2, :cond_dc

    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    if-eqz v2, :cond_cc

    .line 2026
    invoke-static {p0}, Lorg/telegram/messenger/MessageObject;->isStickerMessage(Lorg/telegram/tgnet/TLRPC$Message;)Z

    move-result v2

    if-eqz v2, :cond_dc

    :cond_cc
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;

    if-nez v2, :cond_dc

    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;

    if-nez v2, :cond_dc

    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-nez v2, :cond_20

    :cond_dc
    move v1, v0

    .line 2030
    goto/16 :goto_20
.end method

.method private static containsUrls(Ljava/lang/CharSequence;)Z
    .registers 15
    .param p0, "message"    # Ljava/lang/CharSequence;

    .prologue
    const/16 v13, 0x2e

    const/4 v12, 0x2

    const/4 v8, 0x0

    const/16 v11, 0x20

    const/4 v7, 0x1

    .line 1001
    if-eqz p0, :cond_17

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v9

    if-lt v9, v12, :cond_17

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v9

    const/16 v10, 0x5000

    if-le v9, v10, :cond_19

    :cond_17
    move v7, v8

    .line 1057
    :cond_18
    :goto_18
    return v7

    .line 1005
    :cond_19
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v5

    .line 1007
    .local v5, "length":I
    const/4 v1, 0x0

    .line 1008
    .local v1, "digitsInRow":I
    const/4 v6, 0x0

    .line 1009
    .local v6, "schemeSequence":I
    const/4 v2, 0x0

    .line 1011
    .local v2, "dotSequence":I
    const/4 v4, 0x0

    .line 1013
    .local v4, "lastChar":C
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_22
    if-ge v3, v5, :cond_8c

    .line 1014
    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 1016
    .local v0, "c":C
    const/16 v9, 0x30

    if-lt v0, v9, :cond_64

    const/16 v9, 0x39

    if-gt v0, v9, :cond_64

    .line 1017
    add-int/lit8 v1, v1, 0x1

    .line 1018
    const/4 v9, 0x6

    if-ge v1, v9, :cond_18

    .line 1021
    const/4 v6, 0x0

    .line 1022
    const/4 v2, 0x0

    .line 1026
    :cond_37
    :goto_37
    const/16 v9, 0x40

    if-eq v0, v9, :cond_43

    const/16 v9, 0x23

    if-eq v0, v9, :cond_43

    const/16 v9, 0x2f

    if-ne v0, v9, :cond_45

    :cond_43
    if-eqz v3, :cond_18

    :cond_45
    if-eqz v3, :cond_59

    add-int/lit8 v9, v3, -0x1

    invoke-interface {p0, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    if-eq v9, v11, :cond_18

    add-int/lit8 v9, v3, -0x1

    invoke-interface {p0, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    const/16 v10, 0xa

    if-eq v9, v10, :cond_18

    .line 1029
    :cond_59
    const/16 v9, 0x3a

    if-ne v0, v9, :cond_6c

    .line 1030
    if-nez v6, :cond_6a

    .line 1031
    const/4 v6, 0x1

    .line 1055
    :goto_60
    move v4, v0

    .line 1013
    add-int/lit8 v3, v3, 0x1

    goto :goto_22

    .line 1023
    :cond_64
    if-eq v0, v11, :cond_68

    if-gtz v1, :cond_37

    .line 1024
    :cond_68
    const/4 v1, 0x0

    goto :goto_37

    .line 1033
    :cond_6a
    const/4 v6, 0x0

    goto :goto_60

    .line 1035
    :cond_6c
    const/16 v9, 0x2f

    if-ne v0, v9, :cond_79

    .line 1036
    if-eq v6, v12, :cond_18

    .line 1039
    if-ne v6, v7, :cond_77

    .line 1040
    add-int/lit8 v6, v6, 0x1

    goto :goto_60

    .line 1042
    :cond_77
    const/4 v6, 0x0

    goto :goto_60

    .line 1044
    :cond_79
    if-ne v0, v13, :cond_84

    .line 1045
    if-nez v2, :cond_82

    if-eq v4, v11, :cond_82

    .line 1046
    add-int/lit8 v2, v2, 0x1

    goto :goto_60

    .line 1048
    :cond_82
    const/4 v2, 0x0

    goto :goto_60

    .line 1050
    :cond_84
    if-eq v0, v11, :cond_8a

    if-ne v4, v13, :cond_8a

    if-eq v2, v7, :cond_18

    .line 1053
    :cond_8a
    const/4 v2, 0x0

    goto :goto_60

    .end local v0    # "c":C
    :cond_8c
    move v7, v8

    .line 1057
    goto :goto_18
.end method

.method public static getDialogId(Lorg/telegram/tgnet/TLRPC$Message;)J
    .registers 5
    .param p0, "message"    # Lorg/telegram/tgnet/TLRPC$Message;

    .prologue
    .line 1515
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_22

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    if-eqz v0, :cond_22

    .line 1516
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I

    if-eqz v0, :cond_2e

    .line 1517
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I

    if-gez v0, :cond_25

    .line 1518
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->makeBroadcastId(I)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    .line 1530
    :cond_22
    :goto_22
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    return-wide v0

    .line 1520
    :cond_25
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I

    neg-int v0, v0

    int-to-long v0, v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    goto :goto_22

    .line 1522
    :cond_2e
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    if-eqz v0, :cond_3d

    .line 1523
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    neg-int v0, v0

    int-to-long v0, v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    goto :goto_22

    .line 1524
    :cond_3d
    invoke-static {p0}, Lorg/telegram/messenger/MessageObject;->isOut(Lorg/telegram/tgnet/TLRPC$Message;)Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 1525
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    int-to-long v0, v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    goto :goto_22

    .line 1527
    :cond_4b
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    int-to-long v0, v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    goto :goto_22
.end method

.method public static getInputStickerSet(Lorg/telegram/tgnet/TLRPC$Message;)Lorg/telegram/tgnet/TLRPC$InputStickerSet;
    .registers 5
    .param p0, "message"    # Lorg/telegram/tgnet/TLRPC$Message;

    .prologue
    const/4 v1, 0x0

    .line 1713
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz v2, :cond_2b

    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v2, :cond_2b

    .line 1714
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    .line 1715
    .local v0, "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    instance-of v3, v0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeSticker;

    if-eqz v3, :cond_15

    .line 1716
    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->stickerset:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetEmpty;

    if-eqz v2, :cond_2c

    .line 1723
    .end local v0    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    :cond_2b
    :goto_2b
    return-object v1

    .line 1719
    .restart local v0    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    :cond_2c
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->stickerset:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    goto :goto_2b
.end method

.method public static getUnreadFlags(Lorg/telegram/tgnet/TLRPC$Message;)I
    .registers 3
    .param p0, "message"    # Lorg/telegram/tgnet/TLRPC$Message;

    .prologue
    .line 1458
    const/4 v0, 0x0

    .line 1459
    .local v0, "flags":I
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$Message;->unread:Z

    if-nez v1, :cond_7

    .line 1460
    or-int/lit8 v0, v0, 0x1

    .line 1462
    :cond_7
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$Message;->media_unread:Z

    if-nez v1, :cond_d

    .line 1463
    or-int/lit8 v0, v0, 0x2

    .line 1465
    :cond_d
    return v0
.end method

.method public static isContentUnread(Lorg/telegram/tgnet/TLRPC$Message;)Z
    .registers 2
    .param p0, "message"    # Lorg/telegram/tgnet/TLRPC$Message;

    .prologue
    .line 1495
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->media_unread:Z

    return v0
.end method

.method public static isForwardedMessage(Lorg/telegram/tgnet/TLRPC$Message;)Z
    .registers 2
    .param p0, "message"    # Lorg/telegram/tgnet/TLRPC$Message;

    .prologue
    .line 1982
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public static isGameMessage(Lorg/telegram/tgnet/TLRPC$Message;)Z
    .registers 2
    .param p0, "message"    # Lorg/telegram/tgnet/TLRPC$Message;

    .prologue
    .line 1705
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGame;

    return v0
.end method

.method public static isGifDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z
    .registers 3
    .param p0, "document"    # Lorg/telegram/tgnet/TLRPC$Document;

    .prologue
    .line 734
    if-eqz p0, :cond_1c

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    const-string v1, "image/gif"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    invoke-static {p0}, Lorg/telegram/messenger/MessageObject;->isNewGifDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v0

    if-eqz v0, :cond_1c

    :cond_1a
    const/4 v0, 0x1

    :goto_1b
    return v0

    :cond_1c
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method public static isImageWebDocument(Lorg/telegram/tgnet/TLRPC$TL_webDocument;)Z
    .registers 3
    .param p0, "webDocument"    # Lorg/telegram/tgnet/TLRPC$TL_webDocument;

    .prologue
    .line 1613
    if-eqz p0, :cond_e

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webDocument;->mime_type:Ljava/lang/String;

    const-string v1, "image/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public static isInvoiceMessage(Lorg/telegram/tgnet/TLRPC$Message;)Z
    .registers 2
    .param p0, "message"    # Lorg/telegram/tgnet/TLRPC$Message;

    .prologue
    .line 1709
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaInvoice;

    return v0
.end method

.method public static isMaskDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z
    .registers 4
    .param p0, "document"    # Lorg/telegram/tgnet/TLRPC$Document;

    .prologue
    .line 1585
    if-eqz p0, :cond_20

    .line 1586
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_3
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_20

    .line 1587
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    .line 1588
    .local v1, "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    instance-of v2, v1, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeSticker;

    if-eqz v2, :cond_1d

    iget-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->mask:Z

    if-eqz v2, :cond_1d

    .line 1589
    const/4 v2, 0x1

    .line 1593
    .end local v0    # "a":I
    .end local v1    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    :goto_1c
    return v2

    .line 1586
    .restart local v0    # "a":I
    .restart local v1    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    :cond_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1593
    .end local v0    # "a":I
    .end local v1    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    :cond_20
    const/4 v2, 0x0

    goto :goto_1c
.end method

.method public static isMaskMessage(Lorg/telegram/tgnet/TLRPC$Message;)Z
    .registers 2
    .param p0, "message"    # Lorg/telegram/tgnet/TLRPC$Message;

    .prologue
    .line 1669
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v0}, Lorg/telegram/messenger/MessageObject;->isMaskDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public static isMediaEmpty(Lorg/telegram/tgnet/TLRPC$Message;)Z
    .registers 2
    .param p0, "message"    # Lorg/telegram/tgnet/TLRPC$Message;

    .prologue
    .line 1994
    if-eqz p0, :cond_12

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;

    if-nez v0, :cond_12

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;

    if-eqz v0, :cond_14

    :cond_12
    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public static isMegagroup(Lorg/telegram/tgnet/TLRPC$Message;)Z
    .registers 3
    .param p0, "message"    # Lorg/telegram/tgnet/TLRPC$Message;

    .prologue
    .line 1503
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    const/high16 v1, -0x80000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public static isMusicDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z
    .registers 5
    .param p0, "document"    # Lorg/telegram/tgnet/TLRPC$Document;

    .prologue
    const/4 v2, 0x0

    .line 1621
    if-eqz p0, :cond_1d

    .line 1622
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_4
    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_1d

    .line 1623
    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    .line 1624
    .local v1, "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    instance-of v3, v1, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;

    if-eqz v3, :cond_1e

    .line 1625
    iget-boolean v3, v1, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->voice:Z

    if-nez v3, :cond_1d

    const/4 v2, 0x1

    .line 1629
    .end local v0    # "a":I
    .end local v1    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    :cond_1d
    return v2

    .line 1622
    .restart local v0    # "a":I
    .restart local v1    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    :cond_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_4
.end method

.method public static isMusicMessage(Lorg/telegram/tgnet/TLRPC$Message;)Z
    .registers 2
    .param p0, "message"    # Lorg/telegram/tgnet/TLRPC$Message;

    .prologue
    .line 1673
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;

    if-eqz v0, :cond_11

    .line 1674
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$WebPage;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v0}, Lorg/telegram/messenger/MessageObject;->isMusicDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v0

    .line 1676
    :goto_10
    return v0

    :cond_11
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz v0, :cond_27

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v0, :cond_27

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v0}, Lorg/telegram/messenger/MessageObject;->isMusicDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v0

    if-eqz v0, :cond_27

    const/4 v0, 0x1

    goto :goto_10

    :cond_27
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public static isNewGifDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z
    .registers 9
    .param p0, "document"    # Lorg/telegram/tgnet/TLRPC$Document;

    .prologue
    const/16 v7, 0x500

    .line 759
    if-eqz p0, :cond_3f

    iget-object v5, p0, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    if-eqz v5, :cond_3f

    iget-object v5, p0, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    const-string v6, "video/mp4"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3f

    .line 760
    const/4 v4, 0x0

    .line 761
    .local v4, "width":I
    const/4 v3, 0x0

    .line 762
    .local v3, "height":I
    const/4 v1, 0x0

    .line 763
    .local v1, "animated":Z
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_16
    iget-object v5, p0, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_37

    .line 764
    iget-object v5, p0, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    .line 765
    .local v2, "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    instance-of v5, v2, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAnimated;

    if-eqz v5, :cond_2e

    .line 766
    const/4 v1, 0x1

    .line 763
    :cond_2b
    :goto_2b
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 767
    :cond_2e
    instance-of v5, v2, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;

    if-eqz v5, :cond_2b

    .line 768
    iget v4, v2, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->w:I

    .line 769
    iget v3, v2, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->w:I

    goto :goto_2b

    .line 772
    .end local v2    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    :cond_37
    if-eqz v1, :cond_3f

    if-gt v4, v7, :cond_3f

    if-gt v3, v7, :cond_3f

    .line 773
    const/4 v5, 0x1

    .line 776
    .end local v0    # "a":I
    .end local v1    # "animated":Z
    .end local v3    # "height":I
    .end local v4    # "width":I
    :goto_3e
    return v5

    :cond_3f
    const/4 v5, 0x0

    goto :goto_3e
.end method

.method public static isNewGifMessage(Lorg/telegram/tgnet/TLRPC$Message;)Z
    .registers 2
    .param p0, "message"    # Lorg/telegram/tgnet/TLRPC$Message;

    .prologue
    .line 1691
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;

    if-eqz v0, :cond_11

    .line 1692
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$WebPage;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v0}, Lorg/telegram/messenger/MessageObject;->isNewGifDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v0

    .line 1694
    :goto_10
    return v0

    :cond_11
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz v0, :cond_27

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v0, :cond_27

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v0}, Lorg/telegram/messenger/MessageObject;->isNewGifDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v0

    if-eqz v0, :cond_27

    const/4 v0, 0x1

    goto :goto_10

    :cond_27
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public static isOut(Lorg/telegram/tgnet/TLRPC$Message;)Z
    .registers 2
    .param p0, "message"    # Lorg/telegram/tgnet/TLRPC$Message;

    .prologue
    .line 1507
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    return v0
.end method

.method public static isStickerDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z
    .registers 4
    .param p0, "document"    # Lorg/telegram/tgnet/TLRPC$Document;

    .prologue
    .line 1573
    if-eqz p0, :cond_1c

    .line 1574
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_3
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1c

    .line 1575
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    .line 1576
    .local v1, "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    instance-of v2, v1, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeSticker;

    if-eqz v2, :cond_19

    .line 1577
    const/4 v2, 0x1

    .line 1581
    .end local v0    # "a":I
    .end local v1    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    :goto_18
    return v2

    .line 1574
    .restart local v0    # "a":I
    .restart local v1    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1581
    .end local v0    # "a":I
    .end local v1    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    :cond_1c
    const/4 v2, 0x0

    goto :goto_18
.end method

.method public static isStickerMessage(Lorg/telegram/tgnet/TLRPC$Message;)Z
    .registers 2
    .param p0, "message"    # Lorg/telegram/tgnet/TLRPC$Message;

    .prologue
    .line 1665
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v0}, Lorg/telegram/messenger/MessageObject;->isStickerDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public static isUnread(Lorg/telegram/tgnet/TLRPC$Message;)Z
    .registers 2
    .param p0, "message"    # Lorg/telegram/tgnet/TLRPC$Message;

    .prologue
    .line 1491
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->unread:Z

    return v0
.end method

.method public static isVideoDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z
    .registers 10
    .param p0, "document"    # Lorg/telegram/tgnet/TLRPC$Document;

    .prologue
    const/16 v8, 0x500

    const/4 v6, 0x0

    .line 1633
    if-eqz p0, :cond_38

    .line 1634
    const/4 v3, 0x0

    .line 1635
    .local v3, "isAnimated":Z
    const/4 v4, 0x0

    .line 1636
    .local v4, "isVideo":Z
    const/4 v5, 0x0

    .line 1637
    .local v5, "width":I
    const/4 v2, 0x0

    .line 1639
    .local v2, "height":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_a
    iget-object v7, p0, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v0, v7, :cond_2c

    .line 1640
    iget-object v7, p0, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    .line 1641
    .local v1, "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    instance-of v7, v1, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;

    if-eqz v7, :cond_26

    .line 1642
    const/4 v4, 0x1

    .line 1643
    iget v5, v1, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->w:I

    .line 1644
    iget v2, v1, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->h:I

    .line 1639
    :cond_23
    :goto_23
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 1645
    :cond_26
    instance-of v7, v1, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAnimated;

    if-eqz v7, :cond_23

    .line 1646
    const/4 v3, 0x1

    goto :goto_23

    .line 1649
    .end local v1    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    :cond_2c
    if-eqz v3, :cond_33

    if-gt v5, v8, :cond_32

    if-le v2, v8, :cond_33

    .line 1650
    :cond_32
    const/4 v3, 0x0

    .line 1652
    :cond_33
    if-eqz v4, :cond_38

    if-nez v3, :cond_38

    const/4 v6, 0x1

    .line 1654
    .end local v0    # "a":I
    .end local v2    # "height":I
    .end local v3    # "isAnimated":Z
    .end local v4    # "isVideo":Z
    .end local v5    # "width":I
    :cond_38
    return v6
.end method

.method public static isVideoMessage(Lorg/telegram/tgnet/TLRPC$Message;)Z
    .registers 2
    .param p0, "message"    # Lorg/telegram/tgnet/TLRPC$Message;

    .prologue
    .line 1698
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;

    if-eqz v0, :cond_11

    .line 1699
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$WebPage;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v0}, Lorg/telegram/messenger/MessageObject;->isVideoDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v0

    .line 1701
    :goto_10
    return v0

    :cond_11
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz v0, :cond_27

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v0, :cond_27

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v0}, Lorg/telegram/messenger/MessageObject;->isVideoDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v0

    if-eqz v0, :cond_27

    const/4 v0, 0x1

    goto :goto_10

    :cond_27
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public static isVideoVoiceMessage(Lorg/telegram/tgnet/TLRPC$Message;)Z
    .registers 2
    .param p0, "message"    # Lorg/telegram/tgnet/TLRPC$Message;

    .prologue
    .line 1680
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v0}, Lorg/telegram/messenger/MessageObject;->isVoiceVideoDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public static isVideoWebDocument(Lorg/telegram/tgnet/TLRPC$TL_webDocument;)Z
    .registers 3
    .param p0, "webDocument"    # Lorg/telegram/tgnet/TLRPC$TL_webDocument;

    .prologue
    .line 1617
    if-eqz p0, :cond_e

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webDocument;->mime_type:Ljava/lang/String;

    const-string v1, "video/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public static isVoiceDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z
    .registers 4
    .param p0, "document"    # Lorg/telegram/tgnet/TLRPC$Document;

    .prologue
    .line 1597
    if-eqz p0, :cond_1d

    .line 1598
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_3
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1d

    .line 1599
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    .line 1600
    .local v1, "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    instance-of v2, v1, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;

    if-eqz v2, :cond_1a

    .line 1601
    iget-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->voice:Z

    .line 1605
    .end local v0    # "a":I
    .end local v1    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    :goto_19
    return v2

    .line 1598
    .restart local v0    # "a":I
    .restart local v1    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1605
    .end local v0    # "a":I
    .end local v1    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    :cond_1d
    const/4 v2, 0x0

    goto :goto_19
.end method

.method public static isVoiceMessage(Lorg/telegram/tgnet/TLRPC$Message;)Z
    .registers 2
    .param p0, "message"    # Lorg/telegram/tgnet/TLRPC$Message;

    .prologue
    .line 1684
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;

    if-eqz v0, :cond_11

    .line 1685
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$WebPage;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v0}, Lorg/telegram/messenger/MessageObject;->isVoiceDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v0

    .line 1687
    :goto_10
    return v0

    :cond_11
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz v0, :cond_27

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v0, :cond_27

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v0}, Lorg/telegram/messenger/MessageObject;->isVoiceDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v0

    if-eqz v0, :cond_27

    const/4 v0, 0x1

    goto :goto_10

    :cond_27
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public static isVoiceVideoDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z
    .registers 9
    .param p0, "document"    # Lorg/telegram/tgnet/TLRPC$Document;

    .prologue
    const/16 v7, 0x500

    .line 738
    if-eqz p0, :cond_3f

    iget-object v5, p0, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    if-eqz v5, :cond_3f

    iget-object v5, p0, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    const-string v6, "video/mp4"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3f

    .line 739
    const/4 v4, 0x0

    .line 740
    .local v4, "width":I
    const/4 v3, 0x0

    .line 741
    .local v3, "height":I
    const/4 v1, 0x0

    .line 742
    .local v1, "animated":Z
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_16
    iget-object v5, p0, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_37

    .line 743
    iget-object v5, p0, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    .line 744
    .local v2, "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    instance-of v5, v2, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAnimated;

    if-eqz v5, :cond_2e

    .line 745
    const/4 v1, 0x1

    .line 742
    :cond_2b
    :goto_2b
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 746
    :cond_2e
    instance-of v5, v2, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;

    if-eqz v5, :cond_2b

    .line 747
    iget v4, v2, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->w:I

    .line 748
    iget v3, v2, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->w:I

    goto :goto_2b

    .line 751
    .end local v2    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    :cond_37
    if-eqz v1, :cond_3f

    if-gt v4, v7, :cond_3f

    if-gt v3, v7, :cond_3f

    .line 752
    const/4 v5, 0x1

    .line 755
    .end local v0    # "a":I
    .end local v1    # "animated":Z
    .end local v3    # "height":I
    .end local v4    # "width":I
    :goto_3e
    return v5

    :cond_3f
    const/4 v5, 0x0

    goto :goto_3e
.end method

.method public static isVoiceWebDocument(Lorg/telegram/tgnet/TLRPC$TL_webDocument;)Z
    .registers 3
    .param p0, "webDocument"    # Lorg/telegram/tgnet/TLRPC$TL_webDocument;

    .prologue
    .line 1609
    if-eqz p0, :cond_e

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webDocument;->mime_type:Ljava/lang/String;

    const-string v1, "audio/ogg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public static setUnreadFlags(Lorg/telegram/tgnet/TLRPC$Message;I)V
    .registers 5
    .param p0, "message"    # Lorg/telegram/tgnet/TLRPC$Message;
    .param p1, "flag"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1486
    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_10

    move v0, v1

    :goto_7
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->unread:Z

    .line 1487
    and-int/lit8 v0, p1, 0x2

    if-nez v0, :cond_12

    :goto_d
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$Message;->media_unread:Z

    .line 1488
    return-void

    :cond_10
    move v0, v2

    .line 1486
    goto :goto_7

    :cond_12
    move v1, v2

    .line 1487
    goto :goto_d
.end method


# virtual methods
.method public applyNewText()V
    .registers 7

    .prologue
    .line 482
    iget-object v2, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 498
    :goto_a
    return-void

    .line 485
    :cond_b
    const/4 v0, 0x0

    .line 486
    .local v0, "fromUser":Lorg/telegram/tgnet/TLRPC$User;
    invoke-virtual {p0}, Lorg/telegram/messenger/MessageObject;->isFromUser()Z

    move-result v2

    if-eqz v2, :cond_22

    .line 487
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    .line 489
    :cond_22
    iget-object v2, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    iput-object v2, p0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    .line 491
    iget-object v2, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGame;

    if-eqz v2, :cond_49

    .line 492
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->chat_msgGameTextPaint:Landroid/text/TextPaint;

    .line 496
    .local v1, "paint":Landroid/text/TextPaint;
    :goto_32
    iget-object v2, p0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    invoke-virtual {v1}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v3

    const/high16 v4, 0x41a00000    # 20.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;IZ)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    .line 497
    invoke-virtual {p0, v0}, Lorg/telegram/messenger/MessageObject;->generateLayout(Lorg/telegram/tgnet/TLRPC$User;)V

    goto :goto_a

    .line 494
    .end local v1    # "paint":Landroid/text/TextPaint;
    :cond_49
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->chat_msgTextPaint:Landroid/text/TextPaint;

    .restart local v1    # "paint":Landroid/text/TextPaint;
    goto :goto_32
.end method

.method public canDeleteMessage(Lorg/telegram/tgnet/TLRPC$Chat;)Z
    .registers 3
    .param p1, "chat"    # Lorg/telegram/tgnet/TLRPC$Chat;

    .prologue
    .line 2037
    iget-object v0, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v0, p1}, Lorg/telegram/messenger/MessageObject;->canDeleteMessage(Lorg/telegram/tgnet/TLRPC$Message;Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    return v0
.end method

.method public canEditMessage(Lorg/telegram/tgnet/TLRPC$Chat;)Z
    .registers 3
    .param p1, "chat"    # Lorg/telegram/tgnet/TLRPC$Chat;

    .prologue
    .line 1998
    iget-object v0, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v0, p1}, Lorg/telegram/messenger/MessageObject;->canEditMessage(Lorg/telegram/tgnet/TLRPC$Message;Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    return v0
.end method

.method public checkLayout()Z
    .registers 9

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 691
    iget v5, p0, Lorg/telegram/messenger/MessageObject;->type:I

    if-nez v5, :cond_18

    iget-object v5, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    if-eqz v5, :cond_18

    iget-object v5, p0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    if-eqz v5, :cond_18

    iget-object v5, p0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-nez v5, :cond_1a

    :cond_18
    move v3, v4

    .line 716
    :goto_19
    return v3

    .line 694
    :cond_1a
    iget-boolean v5, p0, Lorg/telegram/messenger/MessageObject;->layoutCreated:Z

    if-eqz v5, :cond_39

    .line 695
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v5

    if-eqz v5, :cond_76

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getMinTabletSide()I

    move-result v1

    .line 696
    .local v1, "newMinSize":I
    :goto_28
    iget v5, p0, Lorg/telegram/messenger/MessageObject;->generatedWithMinSize:I

    sub-int/2addr v5, v1

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    const/high16 v6, 0x42500000    # 52.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    if-le v5, v6, :cond_39

    .line 697
    iput-boolean v4, p0, Lorg/telegram/messenger/MessageObject;->layoutCreated:Z

    .line 700
    .end local v1    # "newMinSize":I
    :cond_39
    iget-boolean v5, p0, Lorg/telegram/messenger/MessageObject;->layoutCreated:Z

    if-nez v5, :cond_7e

    .line 701
    iput-boolean v3, p0, Lorg/telegram/messenger/MessageObject;->layoutCreated:Z

    .line 702
    const/4 v0, 0x0

    .line 703
    .local v0, "fromUser":Lorg/telegram/tgnet/TLRPC$User;
    invoke-virtual {p0}, Lorg/telegram/messenger/MessageObject;->isFromUser()Z

    move-result v5

    if-eqz v5, :cond_56

    .line 704
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    iget-object v6, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    .line 707
    :cond_56
    iget-object v5, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v5, v5, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGame;

    if-eqz v5, :cond_7b

    .line 708
    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->chat_msgGameTextPaint:Landroid/text/TextPaint;

    .line 712
    .local v2, "paint":Landroid/text/TextPaint;
    :goto_60
    iget-object v5, p0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    invoke-virtual {v2}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v6

    const/high16 v7, 0x41a00000    # 20.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    invoke-static {v5, v6, v7, v4}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;IZ)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, p0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    .line 713
    invoke-virtual {p0, v0}, Lorg/telegram/messenger/MessageObject;->generateLayout(Lorg/telegram/tgnet/TLRPC$User;)V

    goto :goto_19

    .line 695
    .end local v0    # "fromUser":Lorg/telegram/tgnet/TLRPC$User;
    .end local v2    # "paint":Landroid/text/TextPaint;
    :cond_76
    sget-object v5, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v1, v5, Landroid/graphics/Point;->x:I

    goto :goto_28

    .line 710
    .restart local v0    # "fromUser":Lorg/telegram/tgnet/TLRPC$User;
    :cond_7b
    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->chat_msgTextPaint:Landroid/text/TextPaint;

    .restart local v2    # "paint":Landroid/text/TextPaint;
    goto :goto_60

    .end local v0    # "fromUser":Lorg/telegram/tgnet/TLRPC$User;
    .end local v2    # "paint":Landroid/text/TextPaint;
    :cond_7e
    move v3, v4

    .line 716
    goto :goto_19
.end method

.method public checkMediaExistance()V
    .registers 8

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 2086
    const/4 v0, 0x0

    .line 2087
    .local v0, "cacheFile":Ljava/io/File;
    iput-boolean v4, p0, Lorg/telegram/messenger/MessageObject;->attachPathExists:Z

    .line 2088
    iput-boolean v4, p0, Lorg/telegram/messenger/MessageObject;->mediaExists:Z

    .line 2089
    iget v4, p0, Lorg/telegram/messenger/MessageObject;->type:I

    if-ne v4, v6, :cond_24

    .line 2090
    iget-object v4, p0, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getPhotoSize()I

    move-result v5

    invoke-static {v4, v5}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v1

    .line 2091
    .local v1, "currentPhotoObject":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    if-eqz v1, :cond_23

    .line 2092
    iget-object v4, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v4}, Lorg/telegram/messenger/FileLoader;->getPathToMessage(Lorg/telegram/tgnet/TLRPC$Message;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    iput-boolean v4, p0, Lorg/telegram/messenger/MessageObject;->mediaExists:Z

    .line 2116
    .end local v1    # "currentPhotoObject":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    :cond_23
    :goto_23
    return-void

    .line 2094
    :cond_24
    iget v4, p0, Lorg/telegram/messenger/MessageObject;->type:I

    const/16 v5, 0x8

    if-eq v4, v5, :cond_40

    iget v4, p0, Lorg/telegram/messenger/MessageObject;->type:I

    const/4 v5, 0x3

    if-eq v4, v5, :cond_40

    iget v4, p0, Lorg/telegram/messenger/MessageObject;->type:I

    const/16 v5, 0x9

    if-eq v4, v5, :cond_40

    iget v4, p0, Lorg/telegram/messenger/MessageObject;->type:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_40

    iget v4, p0, Lorg/telegram/messenger/MessageObject;->type:I

    const/16 v5, 0xe

    if-ne v4, v5, :cond_70

    .line 2095
    :cond_40
    iget-object v4, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    if-eqz v4, :cond_5f

    iget-object v4, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_5f

    .line 2096
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2097
    .local v3, "f":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    iput-boolean v4, p0, Lorg/telegram/messenger/MessageObject;->attachPathExists:Z

    .line 2099
    .end local v3    # "f":Ljava/io/File;
    :cond_5f
    iget-boolean v4, p0, Lorg/telegram/messenger/MessageObject;->attachPathExists:Z

    if-nez v4, :cond_23

    .line 2100
    iget-object v4, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v4}, Lorg/telegram/messenger/FileLoader;->getPathToMessage(Lorg/telegram/tgnet/TLRPC$Message;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    iput-boolean v4, p0, Lorg/telegram/messenger/MessageObject;->mediaExists:Z

    goto :goto_23

    .line 2103
    :cond_70
    invoke-virtual {p0}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v2

    .line 2104
    .local v2, "document":Lorg/telegram/tgnet/TLRPC$Document;
    if-eqz v2, :cond_81

    .line 2105
    invoke-static {v2}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    iput-boolean v4, p0, Lorg/telegram/messenger/MessageObject;->mediaExists:Z

    goto :goto_23

    .line 2106
    :cond_81
    iget v4, p0, Lorg/telegram/messenger/MessageObject;->type:I

    if-nez v4, :cond_23

    .line 2107
    iget-object v4, p0, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getPhotoSize()I

    move-result v5

    invoke-static {v4, v5}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v1

    .line 2108
    .restart local v1    # "currentPhotoObject":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    if-eqz v1, :cond_23

    .line 2111
    if-eqz v1, :cond_23

    .line 2112
    invoke-static {v1, v6}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    iput-boolean v4, p0, Lorg/telegram/messenger/MessageObject;->mediaExists:Z

    goto :goto_23
.end method

.method public generateCaption()V
    .registers 6

    .prologue
    .line 1084
    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->caption:Ljava/lang/CharSequence;

    if-eqz v1, :cond_5

    .line 1098
    :cond_4
    :goto_4
    return-void

    .line 1087
    :cond_5
    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->caption:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->caption:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_4

    .line 1088
    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->caption:Ljava/lang/String;

    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->chat_msgTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v2

    const/high16 v3, 0x41a00000    # 20.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;IZ)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/messenger/MessageObject;->caption:Ljava/lang/CharSequence;

    .line 1089
    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->caption:Ljava/lang/CharSequence;

    invoke-static {v1}, Lorg/telegram/messenger/MessageObject;->containsUrls(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1091
    :try_start_40
    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->caption:Ljava/lang/CharSequence;

    check-cast v1, Landroid/text/Spannable;

    const/4 v2, 0x5

    invoke-static {v1, v2}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;I)Z
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_48} :catch_53

    .line 1095
    :goto_48
    invoke-virtual {p0}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z

    move-result v1

    iget-object v2, p0, Lorg/telegram/messenger/MessageObject;->caption:Ljava/lang/CharSequence;

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/MessageObject;->addUsernamesAndHashtags(ZLjava/lang/CharSequence;Z)V

    goto :goto_4

    .line 1092
    :catch_53
    move-exception v0

    .line 1093
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_48
.end method

.method public generateGameMessageText(Lorg/telegram/tgnet/TLRPC$User;)V
    .registers 9
    .param p1, "fromUser"    # Lorg/telegram/tgnet/TLRPC$User;

    .prologue
    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 501
    if-nez p1, :cond_1a

    .line 502
    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    if-lez v1, :cond_1a

    .line 503
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p1

    .line 506
    :cond_1a
    const/4 v0, 0x0

    .line 507
    .local v0, "game":Lorg/telegram/tgnet/TLRPC$TL_game;
    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v1, :cond_39

    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v1, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz v1, :cond_39

    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v1, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->game:Lorg/telegram/tgnet/TLRPC$TL_game;

    if-eqz v1, :cond_39

    .line 508
    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v1, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->game:Lorg/telegram/tgnet/TLRPC$TL_game;

    .line 510
    :cond_39
    if-nez v0, :cond_83

    .line 511
    if-eqz p1, :cond_61

    iget v1, p1, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v2

    if-ne v1, v2, :cond_61

    .line 512
    const-string v1, "ActionYouScored"

    const v2, 0x7f070062

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "Points"

    iget-object v5, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$MessageAction;->score:I

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    .line 524
    :goto_60
    return-void

    .line 514
    :cond_61
    const-string v1, "ActionUserScored"

    const v2, 0x7f070059

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "Points"

    iget-object v5, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$MessageAction;->score:I

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "un1"

    invoke-virtual {p0, v1, v2, p1}, Lorg/telegram/messenger/MessageObject;->replaceWithLink(Ljava/lang/CharSequence;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto :goto_60

    .line 517
    :cond_83
    if-eqz p1, :cond_b3

    iget v1, p1, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v2

    if-ne v1, v2, :cond_b3

    .line 518
    const-string v1, "ActionYouScoredInGame"

    const v2, 0x7f070063

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "Points"

    iget-object v5, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$MessageAction;->score:I

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    .line 522
    :goto_a8
    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    const-string v2, "un2"

    invoke-virtual {p0, v1, v2, v0}, Lorg/telegram/messenger/MessageObject;->replaceWithLink(Ljava/lang/CharSequence;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto :goto_60

    .line 520
    :cond_b3
    const-string v1, "ActionUserScoredInGame"

    const v2, 0x7f07005a

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "Points"

    iget-object v5, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$MessageAction;->score:I

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "un1"

    invoke-virtual {p0, v1, v2, p1}, Lorg/telegram/messenger/MessageObject;->replaceWithLink(Ljava/lang/CharSequence;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto :goto_a8
.end method

.method public generateLayout(Lorg/telegram/tgnet/TLRPC$User;)V
    .registers 49
    .param p1, "fromUser"    # Lorg/telegram/tgnet/TLRPC$User;

    .prologue
    .line 1154
    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/messenger/MessageObject;->type:I

    if-nez v3, :cond_1e

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    if-eqz v3, :cond_1e

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    if-eqz v3, :cond_1e

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_1f

    .line 1427
    :cond_1e
    :goto_1e
    return-void

    .line 1158
    :cond_1f
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/MessageObject;->generateLinkDescription()V

    .line 1159
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/telegram/messenger/MessageObject;->textLayoutBlocks:Ljava/util/ArrayList;

    .line 1160
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lorg/telegram/messenger/MessageObject;->textWidth:I

    .line 1163
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->send_state:I

    if-eqz v3, :cond_135

    .line 1164
    const/16 v25, 0x0

    .line 1165
    .local v25, "hasEntities":Z
    const/16 v16, 0x0

    .local v16, "a":I
    :goto_3c
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    move/from16 v0, v16

    if-ge v0, v3, :cond_5c

    .line 1166
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lorg/telegram/tgnet/TLRPC$TL_inputMessageEntityMentionName;

    if-nez v3, :cond_131

    .line 1167
    const/16 v25, 0x1

    .line 1175
    .end local v16    # "a":I
    :cond_5c
    :goto_5c
    if-nez v25, :cond_148

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    instance-of v3, v3, Lorg/telegram/tgnet/TLRPC$TL_message_old;

    if-nez v3, :cond_c0

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    instance-of v3, v3, Lorg/telegram/tgnet/TLRPC$TL_message_old2;

    if-nez v3, :cond_c0

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    instance-of v3, v3, Lorg/telegram/tgnet/TLRPC$TL_message_old3;

    if-nez v3, :cond_c0

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    instance-of v3, v3, Lorg/telegram/tgnet/TLRPC$TL_message_old4;

    if-nez v3, :cond_c0

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    instance-of v3, v3, Lorg/telegram/tgnet/TLRPC$TL_messageForwarded_old;

    if-nez v3, :cond_c0

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    instance-of v3, v3, Lorg/telegram/tgnet/TLRPC$TL_messageForwarded_old2;

    if-nez v3, :cond_c0

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    instance-of v3, v3, Lorg/telegram/tgnet/TLRPC$TL_message_secret;

    if-nez v3, :cond_c0

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v3, v3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaInvoice;

    if-nez v3, :cond_c0

    .line 1184
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/MessageObject;->isOut()Z

    move-result v3

    if-eqz v3, :cond_ae

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->send_state:I

    if-nez v3, :cond_c0

    :cond_ae
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    if-ltz v3, :cond_c0

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v3, v3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaUnsupported;

    if-eqz v3, :cond_148

    :cond_c0
    const/16 v46, 0x1

    .line 1187
    .local v46, "useManualParse":Z
    :goto_c2
    if-eqz v46, :cond_14c

    .line 1188
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z

    move-result v3

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    invoke-static {v3, v6}, Lorg/telegram/messenger/MessageObject;->addLinks(ZLjava/lang/CharSequence;)V

    .line 1199
    :cond_cf
    :goto_cf
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    instance-of v3, v3, Landroid/text/Spannable;

    if-eqz v3, :cond_41f

    .line 1200
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    move-object/from16 v40, v0

    check-cast v40, Landroid/text/Spannable;

    .line 1201
    .local v40, "spannable":Landroid/text/Spannable;
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v20

    .line 1202
    .local v20, "count":I
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    const-class v7, Landroid/text/style/URLSpan;

    move-object/from16 v0, v40

    invoke-interface {v0, v3, v6, v7}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v41

    check-cast v41, [Landroid/text/style/URLSpan;

    .line 1203
    .local v41, "spans":[Landroid/text/style/URLSpan;
    const/16 v16, 0x0

    .restart local v16    # "a":I
    :goto_fe
    move/from16 v0, v16

    move/from16 v1, v20

    if-ge v0, v1, :cond_41f

    .line 1204
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lorg/telegram/tgnet/TLRPC$MessageEntity;

    .line 1205
    .local v24, "entity":Lorg/telegram/tgnet/TLRPC$MessageEntity;
    move-object/from16 v0, v24

    iget v3, v0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->length:I

    if-lez v3, :cond_12e

    move-object/from16 v0, v24

    iget v3, v0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    if-ltz v3, :cond_12e

    move-object/from16 v0, v24

    iget v3, v0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lt v3, v6, :cond_172

    .line 1203
    :cond_12e
    :goto_12e
    add-int/lit8 v16, v16, 0x1

    goto :goto_fe

    .line 1165
    .end local v20    # "count":I
    .end local v24    # "entity":Lorg/telegram/tgnet/TLRPC$MessageEntity;
    .end local v40    # "spannable":Landroid/text/Spannable;
    .end local v41    # "spans":[Landroid/text/style/URLSpan;
    .end local v46    # "useManualParse":Z
    :cond_131
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_3c

    .line 1172
    .end local v16    # "a":I
    .end local v25    # "hasEntities":Z
    :cond_135
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_145

    const/16 v25, 0x1

    .restart local v25    # "hasEntities":Z
    :goto_143
    goto/16 :goto_5c

    .end local v25    # "hasEntities":Z
    :cond_145
    const/16 v25, 0x0

    goto :goto_143

    .line 1184
    .restart local v25    # "hasEntities":Z
    :cond_148
    const/16 v46, 0x0

    goto/16 :goto_c2

    .line 1190
    .restart local v46    # "useManualParse":Z
    :cond_14c
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    instance-of v3, v3, Landroid/text/Spannable;

    if-eqz v3, :cond_cf

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const/16 v6, 0xc8

    if-ge v3, v6, :cond_cf

    .line 1192
    :try_start_160
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    check-cast v3, Landroid/text/Spannable;

    const/4 v6, 0x4

    invoke-static {v3, v6}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;I)Z
    :try_end_16a
    .catch Ljava/lang/Throwable; {:try_start_160 .. :try_end_16a} :catch_16c

    goto/16 :goto_cf

    .line 1193
    :catch_16c
    move-exception v22

    .line 1194
    .local v22, "e":Ljava/lang/Throwable;
    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_cf

    .line 1207
    .end local v22    # "e":Ljava/lang/Throwable;
    .restart local v16    # "a":I
    .restart local v20    # "count":I
    .restart local v24    # "entity":Lorg/telegram/tgnet/TLRPC$MessageEntity;
    .restart local v40    # "spannable":Landroid/text/Spannable;
    .restart local v41    # "spans":[Landroid/text/style/URLSpan;
    :cond_172
    move-object/from16 v0, v24

    iget v3, v0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    move-object/from16 v0, v24

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->length:I

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-le v3, v6, :cond_19a

    .line 1208
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    move-object/from16 v0, v24

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    sub-int/2addr v3, v6

    move-object/from16 v0, v24

    iput v3, v0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->length:I

    .line 1210
    :cond_19a
    if-eqz v41, :cond_1f6

    move-object/from16 v0, v41

    array-length v3, v0

    if-lez v3, :cond_1f6

    .line 1211
    const/16 v17, 0x0

    .local v17, "b":I
    :goto_1a3
    move-object/from16 v0, v41

    array-length v3, v0

    move/from16 v0, v17

    if-ge v0, v3, :cond_1f6

    .line 1212
    aget-object v3, v41, v17

    if-nez v3, :cond_1b1

    .line 1211
    :cond_1ae
    :goto_1ae
    add-int/lit8 v17, v17, 0x1

    goto :goto_1a3

    .line 1215
    :cond_1b1
    aget-object v3, v41, v17

    move-object/from16 v0, v40

    invoke-interface {v0, v3}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v42

    .line 1216
    .local v42, "start":I
    aget-object v3, v41, v17

    move-object/from16 v0, v40

    invoke-interface {v0, v3}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v23

    .line 1217
    .local v23, "end":I
    move-object/from16 v0, v24

    iget v3, v0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    move/from16 v0, v42

    if-gt v3, v0, :cond_1d6

    move-object/from16 v0, v24

    iget v3, v0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    move-object/from16 v0, v24

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->length:I

    add-int/2addr v3, v6

    move/from16 v0, v42

    if-ge v3, v0, :cond_1eb

    :cond_1d6
    move-object/from16 v0, v24

    iget v3, v0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    move/from16 v0, v23

    if-gt v3, v0, :cond_1ae

    move-object/from16 v0, v24

    iget v3, v0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    move-object/from16 v0, v24

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->length:I

    add-int/2addr v3, v6

    move/from16 v0, v23

    if-lt v3, v0, :cond_1ae

    .line 1218
    :cond_1eb
    aget-object v3, v41, v17

    move-object/from16 v0, v40

    invoke-interface {v0, v3}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 1219
    const/4 v3, 0x0

    aput-object v3, v41, v17

    goto :goto_1ae

    .line 1223
    .end local v17    # "b":I
    .end local v23    # "end":I
    .end local v42    # "start":I
    :cond_1f6
    move-object/from16 v0, v24

    instance-of v3, v0, Lorg/telegram/tgnet/TLRPC$TL_messageEntityBold;

    if-eqz v3, :cond_21d

    .line 1224
    new-instance v3, Lorg/telegram/ui/Components/TypefaceSpan;

    const-string v6, "fonts/rmedium.ttf"

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v6

    invoke-direct {v3, v6}, Lorg/telegram/ui/Components/TypefaceSpan;-><init>(Landroid/graphics/Typeface;)V

    move-object/from16 v0, v24

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    move-object/from16 v0, v24

    iget v7, v0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    move-object/from16 v0, v24

    iget v10, v0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->length:I

    add-int/2addr v7, v10

    const/16 v10, 0x21

    move-object/from16 v0, v40

    invoke-interface {v0, v3, v6, v7, v10}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_12e

    .line 1225
    :cond_21d
    move-object/from16 v0, v24

    instance-of v3, v0, Lorg/telegram/tgnet/TLRPC$TL_messageEntityItalic;

    if-eqz v3, :cond_244

    .line 1226
    new-instance v3, Lorg/telegram/ui/Components/TypefaceSpan;

    const-string v6, "fonts/ritalic.ttf"

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v6

    invoke-direct {v3, v6}, Lorg/telegram/ui/Components/TypefaceSpan;-><init>(Landroid/graphics/Typeface;)V

    move-object/from16 v0, v24

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    move-object/from16 v0, v24

    iget v7, v0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    move-object/from16 v0, v24

    iget v10, v0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->length:I

    add-int/2addr v7, v10

    const/16 v10, 0x21

    move-object/from16 v0, v40

    invoke-interface {v0, v3, v6, v7, v10}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_12e

    .line 1227
    :cond_244
    move-object/from16 v0, v24

    instance-of v3, v0, Lorg/telegram/tgnet/TLRPC$TL_messageEntityCode;

    if-nez v3, :cond_250

    move-object/from16 v0, v24

    instance-of v3, v0, Lorg/telegram/tgnet/TLRPC$TL_messageEntityPre;

    if-eqz v3, :cond_27e

    .line 1228
    :cond_250
    new-instance v3, Lorg/telegram/ui/Components/URLSpanMono;

    move-object/from16 v0, v24

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    move-object/from16 v0, v24

    iget v7, v0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    move-object/from16 v0, v24

    iget v10, v0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->length:I

    add-int/2addr v7, v10

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z

    move-result v10

    move-object/from16 v0, v40

    invoke-direct {v3, v0, v6, v7, v10}, Lorg/telegram/ui/Components/URLSpanMono;-><init>(Ljava/lang/CharSequence;IIZ)V

    move-object/from16 v0, v24

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    move-object/from16 v0, v24

    iget v7, v0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    move-object/from16 v0, v24

    iget v10, v0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->length:I

    add-int/2addr v7, v10

    const/16 v10, 0x21

    move-object/from16 v0, v40

    invoke-interface {v0, v3, v6, v7, v10}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_12e

    .line 1229
    :cond_27e
    move-object/from16 v0, v24

    instance-of v3, v0, Lorg/telegram/tgnet/TLRPC$TL_messageEntityMentionName;

    if-eqz v3, :cond_2bc

    .line 1230
    new-instance v6, Lorg/telegram/ui/Components/URLSpanUserMention;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v3, v24

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_messageEntityMentionName;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$TL_messageEntityMentionName;->user_id:I

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z

    move-result v7

    invoke-direct {v6, v3, v7}, Lorg/telegram/ui/Components/URLSpanUserMention;-><init>(Ljava/lang/String;Z)V

    move-object/from16 v0, v24

    iget v3, v0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    move-object/from16 v0, v24

    iget v7, v0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    move-object/from16 v0, v24

    iget v10, v0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->length:I

    add-int/2addr v7, v10

    const/16 v10, 0x21

    move-object/from16 v0, v40

    invoke-interface {v0, v6, v3, v7, v10}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_12e

    .line 1231
    :cond_2bc
    move-object/from16 v0, v24

    instance-of v3, v0, Lorg/telegram/tgnet/TLRPC$TL_inputMessageEntityMentionName;

    if-eqz v3, :cond_2fc

    .line 1232
    new-instance v6, Lorg/telegram/ui/Components/URLSpanUserMention;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v3, v24

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_inputMessageEntityMentionName;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_inputMessageEntityMentionName;->user_id:Lorg/telegram/tgnet/TLRPC$InputUser;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$InputUser;->user_id:I

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z

    move-result v7

    invoke-direct {v6, v3, v7}, Lorg/telegram/ui/Components/URLSpanUserMention;-><init>(Ljava/lang/String;Z)V

    move-object/from16 v0, v24

    iget v3, v0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    move-object/from16 v0, v24

    iget v7, v0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    move-object/from16 v0, v24

    iget v10, v0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->length:I

    add-int/2addr v7, v10

    const/16 v10, 0x21

    move-object/from16 v0, v40

    invoke-interface {v0, v6, v3, v7, v10}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_12e

    .line 1233
    :cond_2fc
    if-nez v46, :cond_12e

    .line 1234
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    move-object/from16 v0, v24

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    move-object/from16 v0, v24

    iget v7, v0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    move-object/from16 v0, v24

    iget v10, v0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->length:I

    add-int/2addr v7, v10

    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v45

    .line 1235
    .local v45, "url":Ljava/lang/String;
    move-object/from16 v0, v24

    instance-of v3, v0, Lorg/telegram/tgnet/TLRPC$TL_messageEntityBotCommand;

    if-eqz v3, :cond_33c

    .line 1236
    new-instance v3, Lorg/telegram/ui/Components/URLSpanBotCommand;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z

    move-result v6

    move-object/from16 v0, v45

    invoke-direct {v3, v0, v6}, Lorg/telegram/ui/Components/URLSpanBotCommand;-><init>(Ljava/lang/String;Z)V

    move-object/from16 v0, v24

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    move-object/from16 v0, v24

    iget v7, v0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    move-object/from16 v0, v24

    iget v10, v0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->length:I

    add-int/2addr v7, v10

    const/16 v10, 0x21

    move-object/from16 v0, v40

    invoke-interface {v0, v3, v6, v7, v10}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_12e

    .line 1237
    :cond_33c
    move-object/from16 v0, v24

    instance-of v3, v0, Lorg/telegram/tgnet/TLRPC$TL_messageEntityHashtag;

    if-nez v3, :cond_348

    move-object/from16 v0, v24

    instance-of v3, v0, Lorg/telegram/tgnet/TLRPC$TL_messageEntityMention;

    if-eqz v3, :cond_365

    .line 1238
    :cond_348
    new-instance v3, Lorg/telegram/ui/Components/URLSpanNoUnderline;

    move-object/from16 v0, v45

    invoke-direct {v3, v0}, Lorg/telegram/ui/Components/URLSpanNoUnderline;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v24

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    move-object/from16 v0, v24

    iget v7, v0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    move-object/from16 v0, v24

    iget v10, v0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->length:I

    add-int/2addr v7, v10

    const/16 v10, 0x21

    move-object/from16 v0, v40

    invoke-interface {v0, v3, v6, v7, v10}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_12e

    .line 1239
    :cond_365
    move-object/from16 v0, v24

    instance-of v3, v0, Lorg/telegram/tgnet/TLRPC$TL_messageEntityEmail;

    if-eqz v3, :cond_39b

    .line 1240
    new-instance v3, Lorg/telegram/ui/Components/URLSpanReplacement;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mailto:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v45

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Lorg/telegram/ui/Components/URLSpanReplacement;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v24

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    move-object/from16 v0, v24

    iget v7, v0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    move-object/from16 v0, v24

    iget v10, v0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->length:I

    add-int/2addr v7, v10

    const/16 v10, 0x21

    move-object/from16 v0, v40

    invoke-interface {v0, v3, v6, v7, v10}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_12e

    .line 1241
    :cond_39b
    move-object/from16 v0, v24

    instance-of v3, v0, Lorg/telegram/tgnet/TLRPC$TL_messageEntityUrl;

    if-eqz v3, :cond_3fa

    .line 1242
    invoke-virtual/range {v45 .. v45}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v6, "http"

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3dd

    .line 1243
    new-instance v3, Landroid/text/style/URLSpan;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "http://"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v45

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v24

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    move-object/from16 v0, v24

    iget v7, v0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    move-object/from16 v0, v24

    iget v10, v0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->length:I

    add-int/2addr v7, v10

    const/16 v10, 0x21

    move-object/from16 v0, v40

    invoke-interface {v0, v3, v6, v7, v10}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_12e

    .line 1245
    :cond_3dd
    new-instance v3, Landroid/text/style/URLSpan;

    move-object/from16 v0, v45

    invoke-direct {v3, v0}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v24

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    move-object/from16 v0, v24

    iget v7, v0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    move-object/from16 v0, v24

    iget v10, v0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->length:I

    add-int/2addr v7, v10

    const/16 v10, 0x21

    move-object/from16 v0, v40

    invoke-interface {v0, v3, v6, v7, v10}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_12e

    .line 1247
    :cond_3fa
    move-object/from16 v0, v24

    instance-of v3, v0, Lorg/telegram/tgnet/TLRPC$TL_messageEntityTextUrl;

    if-eqz v3, :cond_12e

    .line 1248
    new-instance v3, Lorg/telegram/ui/Components/URLSpanReplacement;

    move-object/from16 v0, v24

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->url:Ljava/lang/String;

    invoke-direct {v3, v6}, Lorg/telegram/ui/Components/URLSpanReplacement;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v24

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    move-object/from16 v0, v24

    iget v7, v0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    move-object/from16 v0, v24

    iget v10, v0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->length:I

    add-int/2addr v7, v10

    const/16 v10, 0x21

    move-object/from16 v0, v40

    invoke-interface {v0, v3, v6, v7, v10}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_12e

    .line 1255
    .end local v16    # "a":I
    .end local v20    # "count":I
    .end local v24    # "entity":Lorg/telegram/tgnet/TLRPC$MessageEntity;
    .end local v40    # "spannable":Landroid/text/Spannable;
    .end local v41    # "spans":[Landroid/text/style/URLSpan;
    .end local v45    # "url":Ljava/lang/String;
    :cond_41f
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    if-lez v3, :cond_5fb

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    if-nez v3, :cond_44f

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I

    if-nez v3, :cond_44f

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v3, v3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGame;

    if-nez v3, :cond_44f

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v3, v3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaInvoice;

    if-eqz v3, :cond_5fb

    :cond_44f
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/MessageObject;->isOut()Z

    move-result v3

    if-nez v3, :cond_5fb

    const/16 v38, 0x1

    .line 1256
    .local v38, "needShare":Z
    :goto_457
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_5ff

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getMinTabletSide()I

    move-result v3

    :goto_461
    move-object/from16 v0, p0

    iput v3, v0, Lorg/telegram/messenger/MessageObject;->generatedWithMinSize:I

    .line 1257
    move-object/from16 v0, p0

    iget v6, v0, Lorg/telegram/messenger/MessageObject;->generatedWithMinSize:I

    if-eqz v38, :cond_605

    const/high16 v3, 0x42f40000    # 122.0f

    :goto_46d
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int v5, v6, v3

    .line 1258
    .local v5, "maxWidth":I
    if-eqz p1, :cond_47b

    move-object/from16 v0, p1

    iget-boolean v3, v0, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-nez v3, :cond_499

    :cond_47b
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/MessageObject;->isMegagroup()Z

    move-result v3

    if-nez v3, :cond_493

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    if-eqz v3, :cond_4a0

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;->channel_id:I

    if-eqz v3, :cond_4a0

    :cond_493
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/MessageObject;->isOut()Z

    move-result v3

    if-nez v3, :cond_4a0

    .line 1259
    :cond_499
    const/high16 v3, 0x41a00000    # 20.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int/2addr v5, v3

    .line 1261
    :cond_4a0
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v3, v3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGame;

    if-eqz v3, :cond_4b1

    .line 1262
    const/high16 v3, 0x41200000    # 10.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int/2addr v5, v3

    .line 1268
    :cond_4b1
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v3, v3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGame;

    if-eqz v3, :cond_609

    .line 1269
    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->chat_msgGameTextPaint:Landroid/text/TextPaint;

    .line 1275
    .local v4, "paint":Landroid/text/TextPaint;
    :goto_4bd
    :try_start_4bd
    new-instance v2, Landroid/text/StaticLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v2 .. v9}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V
    :try_end_4cc
    .catch Ljava/lang/Exception; {:try_start_4bd .. :try_end_4cc} :catch_60d

    .line 1281
    .local v2, "textLayout":Landroid/text/StaticLayout;
    invoke-virtual {v2}, Landroid/text/StaticLayout;->getHeight()I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lorg/telegram/messenger/MessageObject;->textHeight:I

    .line 1282
    invoke-virtual {v2}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v33

    .line 1284
    .local v33, "linesCount":I
    move/from16 v0, v33

    int-to-float v3, v0

    const/high16 v6, 0x41200000    # 10.0f

    div-float/2addr v3, v6

    float-to-double v6, v3

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v0, v6

    move/from16 v19, v0

    .line 1285
    .local v19, "blocksCount":I
    const/16 v36, 0x0

    .line 1286
    .local v36, "linesOffset":I
    const/16 v39, 0x0

    .line 1288
    .local v39, "prevOffset":F
    const/16 v16, 0x0

    .restart local v16    # "a":I
    :goto_4ec
    move/from16 v0, v16

    move/from16 v1, v19

    if-ge v0, v1, :cond_1e

    .line 1289
    const/16 v3, 0xa

    sub-int v6, v33, v36

    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    move-result v21

    .line 1290
    .local v21, "currentBlockLinesCount":I
    new-instance v18, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;

    invoke-direct/range {v18 .. v18}, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;-><init>()V

    .line 1292
    .local v18, "block":Lorg/telegram/messenger/MessageObject$TextLayoutBlock;
    const/4 v3, 0x1

    move/from16 v0, v19

    if-ne v0, v3, :cond_613

    .line 1293
    move-object/from16 v0, v18

    iput-object v2, v0, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->textLayout:Landroid/text/StaticLayout;

    .line 1294
    const/4 v3, 0x0

    move-object/from16 v0, v18

    iput v3, v0, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->textYOffset:F

    .line 1295
    const/4 v3, 0x0

    move-object/from16 v0, v18

    iput v3, v0, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->charactersOffset:I

    .line 1296
    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/messenger/MessageObject;->textHeight:I

    move-object/from16 v0, v18

    iput v3, v0, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->height:I

    .line 1327
    :cond_51a
    :goto_51a
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->textLayoutBlocks:Ljava/util/ArrayList;

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1331
    :try_start_523
    move-object/from16 v0, v18

    iget-object v3, v0, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->textLayout:Landroid/text/StaticLayout;

    add-int/lit8 v6, v21, -0x1

    invoke-virtual {v3, v6}, Landroid/text/StaticLayout;->getLineLeft(I)F

    move-result v28

    .line 1332
    .local v28, "lastLeft":F
    if-nez v16, :cond_535

    .line 1333
    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/messenger/MessageObject;->textXOffset:F
    :try_end_535
    .catch Ljava/lang/Exception; {:try_start_523 .. :try_end_535} :catch_6bd

    .line 1345
    :cond_535
    :goto_535
    :try_start_535
    move-object/from16 v0, v18

    iget-object v3, v0, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->textLayout:Landroid/text/StaticLayout;

    add-int/lit8 v6, v21, -0x1

    invoke-virtual {v3, v6}, Landroid/text/StaticLayout;->getLineWidth(I)F
    :try_end_53e
    .catch Ljava/lang/Exception; {:try_start_535 .. :try_end_53e} :catch_6cc

    move-result v29

    .line 1351
    .local v29, "lastLine":F
    :goto_53f
    move/from16 v0, v29

    float-to-double v6, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v0, v6

    move/from16 v34, v0

    .line 1355
    .local v34, "linesMaxWidth":I
    add-int/lit8 v3, v19, -0x1

    move/from16 v0, v16

    if-ne v0, v3, :cond_555

    .line 1356
    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/messenger/MessageObject;->lastLineWidth:I

    .line 1359
    :cond_555
    add-float v3, v29, v28

    float-to-double v6, v3

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v0, v6

    move/from16 v30, v0

    .local v30, "lastLineWidthWithLeft":I
    move/from16 v35, v30

    .line 1361
    .local v35, "linesMaxWidthWithLeft":I
    const/4 v3, 0x1

    move/from16 v0, v21

    if-le v0, v3, :cond_72b

    .line 1362
    const/16 v26, 0x0

    .line 1363
    .local v26, "hasNonRTL":Z
    const/16 v43, 0x0

    .local v43, "textRealMaxWidth":F
    const/16 v44, 0x0

    .line 1364
    .local v44, "textRealMaxWidthWithLeft":F
    const/16 v37, 0x0

    .local v37, "n":I
    :goto_56e
    move/from16 v0, v37

    move/from16 v1, v21

    if-ge v0, v1, :cond_6f6

    .line 1366
    :try_start_574
    move-object/from16 v0, v18

    iget-object v3, v0, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->textLayout:Landroid/text/StaticLayout;

    move/from16 v0, v37

    invoke-virtual {v3, v0}, Landroid/text/StaticLayout;->getLineWidth(I)F
    :try_end_57d
    .catch Ljava/lang/Exception; {:try_start_574 .. :try_end_57d} :catch_6d4

    move-result v32

    .line 1372
    .local v32, "lineWidth":F
    :goto_57e
    add-int/lit8 v3, v5, 0x14

    int-to-float v3, v3

    cmpl-float v3, v32, v3

    if-lez v3, :cond_588

    .line 1373
    int-to-float v0, v5

    move/from16 v32, v0

    .line 1377
    :cond_588
    :try_start_588
    move-object/from16 v0, v18

    iget-object v3, v0, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->textLayout:Landroid/text/StaticLayout;

    move/from16 v0, v37

    invoke-virtual {v3, v0}, Landroid/text/StaticLayout;->getLineLeft(I)F
    :try_end_591
    .catch Ljava/lang/Exception; {:try_start_588 .. :try_end_591} :catch_6dc

    move-result v31

    .line 1383
    .local v31, "lineLeft":F
    :goto_592
    const/4 v3, 0x0

    cmpl-float v3, v31, v3

    if-lez v3, :cond_6e4

    .line 1384
    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/messenger/MessageObject;->textXOffset:F

    move/from16 v0, v31

    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lorg/telegram/messenger/MessageObject;->textXOffset:F

    .line 1385
    move-object/from16 v0, v18

    iget-byte v3, v0, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->directionFlags:B

    or-int/lit8 v3, v3, 0x1

    int-to-byte v3, v3

    move-object/from16 v0, v18

    iput-byte v3, v0, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->directionFlags:B

    .line 1386
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lorg/telegram/messenger/MessageObject;->hasRtl:Z

    .line 1392
    :goto_5b5
    if-nez v26, :cond_5cb

    const/4 v3, 0x0

    cmpl-float v3, v31, v3

    if-nez v3, :cond_5cb

    :try_start_5bc
    move-object/from16 v0, v18

    iget-object v3, v0, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->textLayout:Landroid/text/StaticLayout;

    move/from16 v0, v37

    invoke-virtual {v3, v0}, Landroid/text/StaticLayout;->getParagraphDirection(I)I
    :try_end_5c5
    .catch Ljava/lang/Exception; {:try_start_5bc .. :try_end_5c5} :catch_6f1

    move-result v3

    const/4 v6, 0x1

    if-ne v3, v6, :cond_5cb

    .line 1393
    const/16 v26, 0x1

    .line 1399
    :cond_5cb
    :goto_5cb
    move/from16 v0, v43

    move/from16 v1, v32

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v43

    .line 1400
    add-float v3, v32, v31

    move/from16 v0, v44

    invoke-static {v0, v3}, Ljava/lang/Math;->max(FF)F

    move-result v44

    .line 1401
    move/from16 v0, v32

    float-to-double v6, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v3, v6

    move/from16 v0, v34

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v34

    .line 1402
    add-float v3, v32, v31

    float-to-double v6, v3

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v3, v6

    move/from16 v0, v35

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v35

    .line 1364
    add-int/lit8 v37, v37, 0x1

    goto/16 :goto_56e

    .line 1255
    .end local v2    # "textLayout":Landroid/text/StaticLayout;
    .end local v4    # "paint":Landroid/text/TextPaint;
    .end local v5    # "maxWidth":I
    .end local v16    # "a":I
    .end local v18    # "block":Lorg/telegram/messenger/MessageObject$TextLayoutBlock;
    .end local v19    # "blocksCount":I
    .end local v21    # "currentBlockLinesCount":I
    .end local v26    # "hasNonRTL":Z
    .end local v28    # "lastLeft":F
    .end local v29    # "lastLine":F
    .end local v30    # "lastLineWidthWithLeft":I
    .end local v31    # "lineLeft":F
    .end local v32    # "lineWidth":F
    .end local v33    # "linesCount":I
    .end local v34    # "linesMaxWidth":I
    .end local v35    # "linesMaxWidthWithLeft":I
    .end local v36    # "linesOffset":I
    .end local v37    # "n":I
    .end local v38    # "needShare":Z
    .end local v39    # "prevOffset":F
    .end local v43    # "textRealMaxWidth":F
    .end local v44    # "textRealMaxWidthWithLeft":F
    :cond_5fb
    const/16 v38, 0x0

    goto/16 :goto_457

    .line 1256
    .restart local v38    # "needShare":Z
    :cond_5ff
    sget-object v3, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    goto/16 :goto_461

    .line 1257
    :cond_605
    const/high16 v3, 0x42a00000    # 80.0f

    goto/16 :goto_46d

    .line 1271
    .restart local v5    # "maxWidth":I
    :cond_609
    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->chat_msgTextPaint:Landroid/text/TextPaint;

    .restart local v4    # "paint":Landroid/text/TextPaint;
    goto/16 :goto_4bd

    .line 1276
    :catch_60d
    move-exception v22

    .line 1277
    .local v22, "e":Ljava/lang/Exception;
    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_1e

    .line 1298
    .end local v22    # "e":Ljava/lang/Exception;
    .restart local v2    # "textLayout":Landroid/text/StaticLayout;
    .restart local v16    # "a":I
    .restart local v18    # "block":Lorg/telegram/messenger/MessageObject$TextLayoutBlock;
    .restart local v19    # "blocksCount":I
    .restart local v21    # "currentBlockLinesCount":I
    .restart local v33    # "linesCount":I
    .restart local v36    # "linesOffset":I
    .restart local v39    # "prevOffset":F
    :cond_613
    move/from16 v0, v36

    invoke-virtual {v2, v0}, Landroid/text/StaticLayout;->getLineStart(I)I

    move-result v8

    .line 1299
    .local v8, "startCharacter":I
    add-int v3, v36, v21

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Landroid/text/StaticLayout;->getLineEnd(I)I

    move-result v9

    .line 1300
    .local v9, "endCharacter":I
    if-ge v9, v8, :cond_627

    .line 1288
    .end local v8    # "startCharacter":I
    .end local v9    # "endCharacter":I
    :goto_623
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_4ec

    .line 1303
    .restart local v8    # "startCharacter":I
    .restart local v9    # "endCharacter":I
    :cond_627
    move-object/from16 v0, v18

    iput v8, v0, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->charactersOffset:I

    .line 1304
    move-object/from16 v0, v18

    iput v9, v0, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->charactersEnd:I

    .line 1306
    :try_start_62f
    new-instance v6, Landroid/text/StaticLayout;

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    sget-object v12, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v10, v4

    move v11, v5

    invoke-direct/range {v6 .. v15}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    move-object/from16 v0, v18

    iput-object v6, v0, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->textLayout:Landroid/text/StaticLayout;

    .line 1307
    move/from16 v0, v36

    invoke-virtual {v2, v0}, Landroid/text/StaticLayout;->getLineTop(I)I

    move-result v3

    int-to-float v3, v3

    move-object/from16 v0, v18

    iput v3, v0, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->textYOffset:F

    .line 1308
    if-eqz v16, :cond_65c

    .line 1309
    move-object/from16 v0, v18

    iget v3, v0, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->textYOffset:F

    sub-float v3, v3, v39

    float-to-int v3, v3

    move-object/from16 v0, v18

    iput v3, v0, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->height:I

    .line 1311
    :cond_65c
    move-object/from16 v0, v18

    iget v3, v0, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->height:I

    move-object/from16 v0, v18

    iget-object v6, v0, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->textLayout:Landroid/text/StaticLayout;

    move-object/from16 v0, v18

    iget-object v7, v0, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v7}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v6, v7}, Landroid/text/StaticLayout;->getLineBottom(I)I

    move-result v6

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    move-object/from16 v0, v18

    iput v3, v0, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->height:I

    .line 1312
    move-object/from16 v0, v18

    iget v0, v0, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->textYOffset:F

    move/from16 v39, v0
    :try_end_680
    .catch Ljava/lang/Exception; {:try_start_62f .. :try_end_680} :catch_6b7

    .line 1317
    add-int/lit8 v3, v19, -0x1

    move/from16 v0, v16

    if-ne v0, v3, :cond_51a

    .line 1318
    move-object/from16 v0, v18

    iget-object v3, v0, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v3}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v3

    move/from16 v0, v21

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v21

    .line 1320
    :try_start_694
    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/messenger/MessageObject;->textHeight:I

    move-object/from16 v0, v18

    iget v6, v0, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->textYOffset:F

    move-object/from16 v0, v18

    iget-object v7, v0, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v7}, Landroid/text/StaticLayout;->getHeight()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v6, v7

    float-to-int v6, v6

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lorg/telegram/messenger/MessageObject;->textHeight:I
    :try_end_6af
    .catch Ljava/lang/Exception; {:try_start_694 .. :try_end_6af} :catch_6b1

    goto/16 :goto_51a

    .line 1321
    :catch_6b1
    move-exception v22

    .line 1322
    .restart local v22    # "e":Ljava/lang/Exception;
    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_51a

    .line 1313
    .end local v22    # "e":Ljava/lang/Exception;
    :catch_6b7
    move-exception v22

    .line 1314
    .restart local v22    # "e":Ljava/lang/Exception;
    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_623

    .line 1335
    .end local v8    # "startCharacter":I
    .end local v9    # "endCharacter":I
    .end local v22    # "e":Ljava/lang/Exception;
    :catch_6bd
    move-exception v22

    .line 1336
    .restart local v22    # "e":Ljava/lang/Exception;
    const/16 v28, 0x0

    .line 1337
    .restart local v28    # "lastLeft":F
    if-nez v16, :cond_6c7

    .line 1338
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lorg/telegram/messenger/MessageObject;->textXOffset:F

    .line 1340
    :cond_6c7
    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_535

    .line 1346
    .end local v22    # "e":Ljava/lang/Exception;
    :catch_6cc
    move-exception v22

    .line 1347
    .restart local v22    # "e":Ljava/lang/Exception;
    const/16 v29, 0x0

    .line 1348
    .restart local v29    # "lastLine":F
    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_53f

    .line 1367
    .end local v22    # "e":Ljava/lang/Exception;
    .restart local v26    # "hasNonRTL":Z
    .restart local v30    # "lastLineWidthWithLeft":I
    .restart local v34    # "linesMaxWidth":I
    .restart local v35    # "linesMaxWidthWithLeft":I
    .restart local v37    # "n":I
    .restart local v43    # "textRealMaxWidth":F
    .restart local v44    # "textRealMaxWidthWithLeft":F
    :catch_6d4
    move-exception v22

    .line 1368
    .restart local v22    # "e":Ljava/lang/Exception;
    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1369
    const/16 v32, 0x0

    .restart local v32    # "lineWidth":F
    goto/16 :goto_57e

    .line 1378
    .end local v22    # "e":Ljava/lang/Exception;
    :catch_6dc
    move-exception v22

    .line 1379
    .restart local v22    # "e":Ljava/lang/Exception;
    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1380
    const/16 v31, 0x0

    .restart local v31    # "lineLeft":F
    goto/16 :goto_592

    .line 1388
    .end local v22    # "e":Ljava/lang/Exception;
    :cond_6e4
    move-object/from16 v0, v18

    iget-byte v3, v0, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->directionFlags:B

    or-int/lit8 v3, v3, 0x2

    int-to-byte v3, v3

    move-object/from16 v0, v18

    iput-byte v3, v0, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->directionFlags:B

    goto/16 :goto_5b5

    .line 1395
    :catch_6f1
    move-exception v27

    .line 1396
    .local v27, "ignore":Ljava/lang/Exception;
    const/16 v26, 0x1

    goto/16 :goto_5cb

    .line 1404
    .end local v27    # "ignore":Ljava/lang/Exception;
    .end local v31    # "lineLeft":F
    .end local v32    # "lineWidth":F
    :cond_6f6
    if-eqz v26, :cond_71e

    .line 1405
    move/from16 v43, v44

    .line 1406
    add-int/lit8 v3, v19, -0x1

    move/from16 v0, v16

    if-ne v0, v3, :cond_706

    .line 1407
    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/messenger/MessageObject;->lastLineWidth:I

    .line 1412
    :cond_706
    :goto_706
    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/messenger/MessageObject;->textWidth:I

    move/from16 v0, v43

    float-to-double v6, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v6, v6

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lorg/telegram/messenger/MessageObject;->textWidth:I

    .line 1425
    .end local v26    # "hasNonRTL":Z
    .end local v37    # "n":I
    .end local v43    # "textRealMaxWidth":F
    .end local v44    # "textRealMaxWidthWithLeft":F
    :goto_71a
    add-int v36, v36, v21

    goto/16 :goto_623

    .line 1409
    .restart local v26    # "hasNonRTL":Z
    .restart local v37    # "n":I
    .restart local v43    # "textRealMaxWidth":F
    .restart local v44    # "textRealMaxWidthWithLeft":F
    :cond_71e
    add-int/lit8 v3, v19, -0x1

    move/from16 v0, v16

    if-ne v0, v3, :cond_706

    .line 1410
    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/messenger/MessageObject;->lastLineWidth:I

    goto :goto_706

    .line 1414
    .end local v26    # "hasNonRTL":Z
    .end local v37    # "n":I
    .end local v43    # "textRealMaxWidth":F
    .end local v44    # "textRealMaxWidthWithLeft":F
    :cond_72b
    const/4 v3, 0x0

    cmpl-float v3, v28, v3

    if-lez v3, :cond_768

    .line 1415
    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/messenger/MessageObject;->textXOffset:F

    move/from16 v0, v28

    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lorg/telegram/messenger/MessageObject;->textXOffset:F

    .line 1416
    const/4 v3, 0x1

    move/from16 v0, v19

    if-eq v0, v3, :cond_766

    const/4 v3, 0x1

    :goto_744
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lorg/telegram/messenger/MessageObject;->hasRtl:Z

    .line 1417
    move-object/from16 v0, v18

    iget-byte v3, v0, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->directionFlags:B

    or-int/lit8 v3, v3, 0x1

    int-to-byte v3, v3

    move-object/from16 v0, v18

    iput-byte v3, v0, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->directionFlags:B

    .line 1422
    :goto_753
    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/messenger/MessageObject;->textWidth:I

    move/from16 v0, v34

    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lorg/telegram/messenger/MessageObject;->textWidth:I

    goto :goto_71a

    .line 1416
    :cond_766
    const/4 v3, 0x0

    goto :goto_744

    .line 1419
    :cond_768
    move-object/from16 v0, v18

    iget-byte v3, v0, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->directionFlags:B

    or-int/lit8 v3, v3, 0x2

    int-to-byte v3, v3

    move-object/from16 v0, v18

    iput-byte v3, v0, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->directionFlags:B

    goto :goto_753
.end method

.method public generateLinkDescription()V
    .registers 6

    .prologue
    .line 1061
    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->linkDescription:Ljava/lang/CharSequence;

    if-eqz v1, :cond_5

    .line 1081
    :cond_4
    :goto_4
    return-void

    .line 1064
    :cond_5
    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;

    if-eqz v1, :cond_5d

    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_webPage;

    if-eqz v1, :cond_5d

    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$WebPage;->description:Ljava/lang/String;

    if-eqz v1, :cond_5d

    .line 1065
    invoke-static {}, Landroid/text/Spannable$Factory;->getInstance()Landroid/text/Spannable$Factory;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$WebPage;->description:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/text/Spannable$Factory;->newSpannable(Ljava/lang/CharSequence;)Landroid/text/Spannable;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/messenger/MessageObject;->linkDescription:Ljava/lang/CharSequence;

    .line 1071
    :cond_33
    :goto_33
    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->linkDescription:Ljava/lang/CharSequence;

    if-eqz v1, :cond_4

    .line 1072
    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->linkDescription:Ljava/lang/CharSequence;

    invoke-static {v1}, Lorg/telegram/messenger/MessageObject;->containsUrls(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_47

    .line 1074
    :try_start_3f
    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->linkDescription:Ljava/lang/CharSequence;

    check-cast v1, Landroid/text/Spannable;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;I)Z
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_47} :catch_a3

    .line 1079
    :cond_47
    :goto_47
    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->linkDescription:Ljava/lang/CharSequence;

    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->chat_msgTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v2

    const/high16 v3, 0x41a00000    # 20.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;IZ)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/messenger/MessageObject;->linkDescription:Ljava/lang/CharSequence;

    goto :goto_4

    .line 1066
    :cond_5d
    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGame;

    if-eqz v1, :cond_82

    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->game:Lorg/telegram/tgnet/TLRPC$TL_game;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_game;->description:Ljava/lang/String;

    if-eqz v1, :cond_82

    .line 1067
    invoke-static {}, Landroid/text/Spannable$Factory;->getInstance()Landroid/text/Spannable$Factory;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->game:Lorg/telegram/tgnet/TLRPC$TL_game;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_game;->description:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/text/Spannable$Factory;->newSpannable(Ljava/lang/CharSequence;)Landroid/text/Spannable;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/messenger/MessageObject;->linkDescription:Ljava/lang/CharSequence;

    goto :goto_33

    .line 1068
    :cond_82
    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaInvoice;

    if-eqz v1, :cond_33

    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->description:Ljava/lang/String;

    if-eqz v1, :cond_33

    .line 1069
    invoke-static {}, Landroid/text/Spannable$Factory;->getInstance()Landroid/text/Spannable$Factory;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->description:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/text/Spannable$Factory;->newSpannable(Ljava/lang/CharSequence;)Landroid/text/Spannable;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/messenger/MessageObject;->linkDescription:Ljava/lang/CharSequence;

    goto :goto_33

    .line 1075
    :catch_a3
    move-exception v0

    .line 1076
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_47
.end method

.method public generatePaymentSentMessageText(Lorg/telegram/tgnet/TLRPC$User;)V
    .registers 13
    .param p1, "fromUser"    # Lorg/telegram/tgnet/TLRPC$User;

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 527
    if-nez p1, :cond_16

    .line 528
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-virtual {p0}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p1

    .line 531
    :cond_16
    if-eqz p1, :cond_5b

    .line 532
    invoke-static {p1}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v0

    .line 536
    .local v0, "name":Ljava/lang/String;
    :goto_1c
    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v1, :cond_5e

    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v1, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaInvoice;

    if-eqz v1, :cond_5e

    .line 537
    const-string v1, "PaymentSuccessfullyPaid"

    const v2, 0x7f070431

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-wide v6, v5, Lorg/telegram/tgnet/TLRPC$MessageAction;->total_amount:J

    iget-object v5, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$MessageAction;->currency:Ljava/lang/String;

    invoke-virtual {v4, v6, v7, v5}, Lorg/telegram/messenger/LocaleController;->formatCurrencyString(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v8

    aput-object v0, v3, v9

    iget-object v4, p0, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v4, v4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->title:Ljava/lang/String;

    aput-object v4, v3, v10

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    .line 541
    :goto_5a
    return-void

    .line 534
    .end local v0    # "name":Ljava/lang/String;
    :cond_5b
    const-string v0, ""

    .restart local v0    # "name":Ljava/lang/String;
    goto :goto_1c

    .line 539
    :cond_5e
    const-string v1, "PaymentSuccessfullyPaidNoItem"

    const v2, 0x7f070432

    new-array v3, v10, [Ljava/lang/Object;

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-wide v6, v5, Lorg/telegram/tgnet/TLRPC$MessageAction;->total_amount:J

    iget-object v5, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$MessageAction;->currency:Ljava/lang/String;

    invoke-virtual {v4, v6, v7, v5}, Lorg/telegram/messenger/LocaleController;->formatCurrencyString(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v8

    aput-object v0, v3, v9

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto :goto_5a
.end method

.method public generatePinMessageText(Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Chat;)V
    .registers 11
    .param p1, "fromUser"    # Lorg/telegram/tgnet/TLRPC$User;
    .param p2, "chat"    # Lorg/telegram/tgnet/TLRPC$Chat;

    .prologue
    const v5, 0x7f070050

    const/16 v4, 0x14

    const/4 v3, 0x1

    const/high16 v7, 0x41a00000    # 20.0f

    const/4 v6, 0x0

    .line 544
    if-nez p1, :cond_37

    if-nez p2, :cond_37

    .line 545
    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    if-lez v1, :cond_23

    .line 546
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p1

    .line 548
    :cond_23
    if-nez p1, :cond_37

    .line 549
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p2

    .line 552
    :cond_37
    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;

    if-nez v1, :cond_4e

    .line 553
    const-string v1, "ActionPinnedNoText"

    invoke-static {v1, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "un1"

    if-eqz p1, :cond_4c

    .end local p1    # "fromUser":Lorg/telegram/tgnet/TLRPC$User;
    :goto_45
    invoke-virtual {p0, v1, v2, p1}, Lorg/telegram/messenger/MessageObject;->replaceWithLink(Ljava/lang/CharSequence;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    .line 587
    :goto_4b
    return-void

    .restart local p1    # "fromUser":Lorg/telegram/tgnet/TLRPC$User;
    :cond_4c
    move-object p1, p2

    .line 553
    goto :goto_45

    .line 555
    :cond_4e
    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result v1

    if-eqz v1, :cond_6c

    .line 556
    const-string v1, "ActionPinnedMusic"

    const v2, 0x7f07004f

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "un1"

    if-eqz p1, :cond_6a

    .end local p1    # "fromUser":Lorg/telegram/tgnet/TLRPC$User;
    :goto_63
    invoke-virtual {p0, v1, v2, p1}, Lorg/telegram/messenger/MessageObject;->replaceWithLink(Ljava/lang/CharSequence;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto :goto_4b

    .restart local p1    # "fromUser":Lorg/telegram/tgnet/TLRPC$User;
    :cond_6a
    move-object p1, p2

    goto :goto_63

    .line 557
    :cond_6c
    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->isVideo()Z

    move-result v1

    if-eqz v1, :cond_8a

    .line 558
    const-string v1, "ActionPinnedVideo"

    const v2, 0x7f070054

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "un1"

    if-eqz p1, :cond_88

    .end local p1    # "fromUser":Lorg/telegram/tgnet/TLRPC$User;
    :goto_81
    invoke-virtual {p0, v1, v2, p1}, Lorg/telegram/messenger/MessageObject;->replaceWithLink(Ljava/lang/CharSequence;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto :goto_4b

    .restart local p1    # "fromUser":Lorg/telegram/tgnet/TLRPC$User;
    :cond_88
    move-object p1, p2

    goto :goto_81

    .line 559
    :cond_8a
    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->isGif()Z

    move-result v1

    if-eqz v1, :cond_a8

    .line 560
    const-string v1, "ActionPinnedGif"

    const v2, 0x7f07004e

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "un1"

    if-eqz p1, :cond_a6

    .end local p1    # "fromUser":Lorg/telegram/tgnet/TLRPC$User;
    :goto_9f
    invoke-virtual {p0, v1, v2, p1}, Lorg/telegram/messenger/MessageObject;->replaceWithLink(Ljava/lang/CharSequence;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto :goto_4b

    .restart local p1    # "fromUser":Lorg/telegram/tgnet/TLRPC$User;
    :cond_a6
    move-object p1, p2

    goto :goto_9f

    .line 561
    :cond_a8
    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->isVoice()Z

    move-result v1

    if-eqz v1, :cond_c6

    .line 562
    const-string v1, "ActionPinnedVoice"

    const v2, 0x7f070055

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "un1"

    if-eqz p1, :cond_c4

    .end local p1    # "fromUser":Lorg/telegram/tgnet/TLRPC$User;
    :goto_bd
    invoke-virtual {p0, v1, v2, p1}, Lorg/telegram/messenger/MessageObject;->replaceWithLink(Ljava/lang/CharSequence;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto :goto_4b

    .restart local p1    # "fromUser":Lorg/telegram/tgnet/TLRPC$User;
    :cond_c4
    move-object p1, p2

    goto :goto_bd

    .line 563
    :cond_c6
    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->isSticker()Z

    move-result v1

    if-eqz v1, :cond_e5

    .line 564
    const-string v1, "ActionPinnedSticker"

    const v2, 0x7f070052

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "un1"

    if-eqz p1, :cond_e3

    .end local p1    # "fromUser":Lorg/telegram/tgnet/TLRPC$User;
    :goto_db
    invoke-virtual {p0, v1, v2, p1}, Lorg/telegram/messenger/MessageObject;->replaceWithLink(Ljava/lang/CharSequence;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_4b

    .restart local p1    # "fromUser":Lorg/telegram/tgnet/TLRPC$User;
    :cond_e3
    move-object p1, p2

    goto :goto_db

    .line 565
    :cond_e5
    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v1, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    if-eqz v1, :cond_106

    .line 566
    const-string v1, "ActionPinnedFile"

    const v2, 0x7f07004b

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "un1"

    if-eqz p1, :cond_104

    .end local p1    # "fromUser":Lorg/telegram/tgnet/TLRPC$User;
    :goto_fc
    invoke-virtual {p0, v1, v2, p1}, Lorg/telegram/messenger/MessageObject;->replaceWithLink(Ljava/lang/CharSequence;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_4b

    .restart local p1    # "fromUser":Lorg/telegram/tgnet/TLRPC$User;
    :cond_104
    move-object p1, p2

    goto :goto_fc

    .line 567
    :cond_106
    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v1, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGeo;

    if-eqz v1, :cond_127

    .line 568
    const-string v1, "ActionPinnedGeo"

    const v2, 0x7f07004d

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "un1"

    if-eqz p1, :cond_125

    .end local p1    # "fromUser":Lorg/telegram/tgnet/TLRPC$User;
    :goto_11d
    invoke-virtual {p0, v1, v2, p1}, Lorg/telegram/messenger/MessageObject;->replaceWithLink(Ljava/lang/CharSequence;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_4b

    .restart local p1    # "fromUser":Lorg/telegram/tgnet/TLRPC$User;
    :cond_125
    move-object p1, p2

    goto :goto_11d

    .line 569
    :cond_127
    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v1, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaContact;

    if-eqz v1, :cond_148

    .line 570
    const-string v1, "ActionPinnedContact"

    const v2, 0x7f07004a

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "un1"

    if-eqz p1, :cond_146

    .end local p1    # "fromUser":Lorg/telegram/tgnet/TLRPC$User;
    :goto_13e
    invoke-virtual {p0, v1, v2, p1}, Lorg/telegram/messenger/MessageObject;->replaceWithLink(Ljava/lang/CharSequence;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_4b

    .restart local p1    # "fromUser":Lorg/telegram/tgnet/TLRPC$User;
    :cond_146
    move-object p1, p2

    goto :goto_13e

    .line 571
    :cond_148
    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v1, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;

    if-eqz v1, :cond_169

    .line 572
    const-string v1, "ActionPinnedPhoto"

    const v2, 0x7f070051

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "un1"

    if-eqz p1, :cond_167

    .end local p1    # "fromUser":Lorg/telegram/tgnet/TLRPC$User;
    :goto_15f
    invoke-virtual {p0, v1, v2, p1}, Lorg/telegram/messenger/MessageObject;->replaceWithLink(Ljava/lang/CharSequence;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_4b

    .restart local p1    # "fromUser":Lorg/telegram/tgnet/TLRPC$User;
    :cond_167
    move-object p1, p2

    goto :goto_15f

    .line 573
    :cond_169
    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v1, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGame;

    if-eqz v1, :cond_1bd

    .line 574
    const-string v1, "ActionPinnedGame"

    const v2, 0x7f07004c

    new-array v3, v3, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\ud83c\udfae "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v5, v5, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$MessageMedia;->game:Lorg/telegram/tgnet/TLRPC$TL_game;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$TL_game;->title:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "un1"

    if-eqz p1, :cond_1bb

    .end local p1    # "fromUser":Lorg/telegram/tgnet/TLRPC$User;
    :goto_1a1
    invoke-virtual {p0, v1, v2, p1}, Lorg/telegram/messenger/MessageObject;->replaceWithLink(Ljava/lang/CharSequence;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    .line 575
    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->chat_msgTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v2

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-static {v1, v2, v3, v6}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;IZ)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_4b

    .restart local p1    # "fromUser":Lorg/telegram/tgnet/TLRPC$User;
    :cond_1bb
    move-object p1, p2

    .line 574
    goto :goto_1a1

    .line 576
    :cond_1bd
    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v1, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    if-eqz v1, :cond_217

    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v1, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_217

    .line 577
    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    .line 578
    .local v0, "mess":Ljava/lang/CharSequence;
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-le v1, v4, :cond_1ee

    .line 579
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0, v6, v4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 581
    :cond_1ee
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->chat_msgTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v1

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-static {v0, v1, v2, v6}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;IZ)Ljava/lang/CharSequence;

    move-result-object v0

    .line 582
    const-string v1, "ActionPinnedText"

    const v2, 0x7f070053

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v6

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "un1"

    if-eqz p1, :cond_215

    .end local p1    # "fromUser":Lorg/telegram/tgnet/TLRPC$User;
    :goto_20d
    invoke-virtual {p0, v1, v2, p1}, Lorg/telegram/messenger/MessageObject;->replaceWithLink(Ljava/lang/CharSequence;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_4b

    .restart local p1    # "fromUser":Lorg/telegram/tgnet/TLRPC$User;
    :cond_215
    move-object p1, p2

    goto :goto_20d

    .line 584
    .end local v0    # "mess":Ljava/lang/CharSequence;
    :cond_217
    const-string v1, "ActionPinnedNoText"

    invoke-static {v1, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "un1"

    if-eqz p1, :cond_229

    .end local p1    # "fromUser":Lorg/telegram/tgnet/TLRPC$User;
    :goto_221
    invoke-virtual {p0, v1, v2, p1}, Lorg/telegram/messenger/MessageObject;->replaceWithLink(Ljava/lang/CharSequence;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto/16 :goto_4b

    .restart local p1    # "fromUser":Lorg/telegram/tgnet/TLRPC$User;
    :cond_229
    move-object p1, p2

    goto :goto_221
.end method

.method public generateThumbs(Z)V
    .registers 8
    .param p1, "update"    # Z

    .prologue
    const/4 v5, 0x0

    .line 780
    iget-object v4, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_messageService;

    if-eqz v4, :cond_73

    .line 781
    iget-object v4, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatEditPhoto;

    if-eqz v4, :cond_20

    .line 782
    if-nez p1, :cond_21

    .line 783
    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$MessageAction;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v4, p0, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    .line 898
    :cond_20
    :goto_20
    return-void

    .line 784
    :cond_21
    iget-object v4, p0, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    if-eqz v4, :cond_20

    iget-object v4, p0, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_20

    .line 785
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_2e
    iget-object v4, p0, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_20

    .line 786
    iget-object v4, p0, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 787
    .local v2, "photoObject":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    const/4 v1, 0x0

    .local v1, "b":I
    :goto_3f
    iget-object v4, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageAction;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_70

    .line 788
    iget-object v4, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageAction;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 789
    .local v3, "size":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    instance-of v4, v3, Lorg/telegram/tgnet/TLRPC$TL_photoSizeEmpty;

    if-eqz v4, :cond_62

    .line 787
    :cond_5f
    add-int/lit8 v1, v1, 0x1

    goto :goto_3f

    .line 792
    :cond_62
    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$PhotoSize;->type:Ljava/lang/String;

    iget-object v5, v2, Lorg/telegram/tgnet/TLRPC$PhotoSize;->type:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5f

    .line 793
    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iput-object v4, v2, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 785
    .end local v3    # "size":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    :cond_70
    add-int/lit8 v0, v0, 0x1

    goto :goto_2e

    .line 800
    .end local v0    # "a":I
    .end local v1    # "b":I
    .end local v2    # "photoObject":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    :cond_73
    iget-object v4, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz v4, :cond_20

    iget-object v4, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;

    if-nez v4, :cond_20

    .line 801
    iget-object v4, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;

    if-eqz v4, :cond_106

    .line 802
    if-eqz p1, :cond_a3

    iget-object v4, p0, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    if-eqz v4, :cond_b4

    iget-object v4, p0, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    iget-object v5, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-eq v4, v5, :cond_b4

    .line 803
    :cond_a3
    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v4, p0, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    goto/16 :goto_20

    .line 804
    :cond_b4
    iget-object v4, p0, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    if-eqz v4, :cond_20

    iget-object v4, p0, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_20

    .line 805
    const/4 v0, 0x0

    .restart local v0    # "a":I
    :goto_c1
    iget-object v4, p0, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_20

    .line 806
    iget-object v4, p0, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 807
    .restart local v2    # "photoObject":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    const/4 v1, 0x0

    .restart local v1    # "b":I
    :goto_d2
    iget-object v4, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_103

    .line 808
    iget-object v4, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 809
    .restart local v3    # "size":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    instance-of v4, v3, Lorg/telegram/tgnet/TLRPC$TL_photoSizeEmpty;

    if-eqz v4, :cond_f5

    .line 807
    :cond_f2
    add-int/lit8 v1, v1, 0x1

    goto :goto_d2

    .line 812
    :cond_f5
    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$PhotoSize;->type:Ljava/lang/String;

    iget-object v5, v2, Lorg/telegram/tgnet/TLRPC$PhotoSize;->type:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f2

    .line 813
    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iput-object v4, v2, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 805
    .end local v3    # "size":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    :cond_103
    add-int/lit8 v0, v0, 0x1

    goto :goto_c1

    .line 819
    .end local v0    # "a":I
    .end local v1    # "b":I
    .end local v2    # "photoObject":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    :cond_106
    iget-object v4, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    if-eqz v4, :cond_176

    .line 820
    iget-object v4, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_photoSizeEmpty;

    if-nez v4, :cond_20

    .line 821
    if-nez p1, :cond_132

    .line 822
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    .line 823
    iget-object v4, p0, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    iget-object v5, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_20

    .line 824
    :cond_132
    iget-object v4, p0, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    if-eqz v4, :cond_20

    iget-object v4, p0, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_20

    iget-object v4, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    if-eqz v4, :cond_20

    .line 825
    iget-object v4, p0, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 826
    .restart local v2    # "photoObject":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    iget-object v4, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iput-object v4, v2, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 827
    iget-object v4, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I

    iput v4, v2, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I

    .line 828
    iget-object v4, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I

    iput v4, v2, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I

    goto/16 :goto_20

    .line 831
    .end local v2    # "photoObject":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    :cond_176
    iget-object v4, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGame;

    if-eqz v4, :cond_261

    .line 832
    iget-object v4, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->game:Lorg/telegram/tgnet/TLRPC$TL_game;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_game;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v4, :cond_1ae

    .line 833
    iget-object v4, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->game:Lorg/telegram/tgnet/TLRPC$TL_game;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_game;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_photoSizeEmpty;

    if-nez v4, :cond_1ae

    .line 834
    if-nez p1, :cond_1e0

    .line 835
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    .line 836
    iget-object v4, p0, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    iget-object v5, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$MessageMedia;->game:Lorg/telegram/tgnet/TLRPC$TL_game;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$TL_game;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 843
    :cond_1ae
    :goto_1ae
    iget-object v4, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->game:Lorg/telegram/tgnet/TLRPC$TL_game;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_game;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    if-eqz v4, :cond_1cf

    .line 844
    if-eqz p1, :cond_1be

    iget-object v4, p0, Lorg/telegram/messenger/MessageObject;->photoThumbs2:Ljava/util/ArrayList;

    if-nez v4, :cond_20f

    .line 845
    :cond_1be
    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$MessageMedia;->game:Lorg/telegram/tgnet/TLRPC$TL_game;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$TL_game;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v4, p0, Lorg/telegram/messenger/MessageObject;->photoThumbs2:Ljava/util/ArrayList;

    .line 862
    :cond_1cf
    iget-object v4, p0, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    if-nez v4, :cond_20

    iget-object v4, p0, Lorg/telegram/messenger/MessageObject;->photoThumbs2:Ljava/util/ArrayList;

    if-eqz v4, :cond_20

    .line 863
    iget-object v4, p0, Lorg/telegram/messenger/MessageObject;->photoThumbs2:Ljava/util/ArrayList;

    iput-object v4, p0, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    .line 864
    const/4 v4, 0x0

    iput-object v4, p0, Lorg/telegram/messenger/MessageObject;->photoThumbs2:Ljava/util/ArrayList;

    goto/16 :goto_20

    .line 837
    :cond_1e0
    iget-object v4, p0, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    if-eqz v4, :cond_1ae

    iget-object v4, p0, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1ae

    iget-object v4, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->game:Lorg/telegram/tgnet/TLRPC$TL_game;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_game;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    if-eqz v4, :cond_1ae

    .line 838
    iget-object v4, p0, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 839
    .restart local v2    # "photoObject":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    iget-object v4, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->game:Lorg/telegram/tgnet/TLRPC$TL_game;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_game;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iput-object v4, v2, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    goto :goto_1ae

    .line 846
    .end local v2    # "photoObject":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    :cond_20f
    iget-object v4, p0, Lorg/telegram/messenger/MessageObject;->photoThumbs2:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1cf

    .line 847
    const/4 v0, 0x0

    .restart local v0    # "a":I
    :goto_218
    iget-object v4, p0, Lorg/telegram/messenger/MessageObject;->photoThumbs2:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_1cf

    .line 848
    iget-object v4, p0, Lorg/telegram/messenger/MessageObject;->photoThumbs2:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 849
    .restart local v2    # "photoObject":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    const/4 v1, 0x0

    .restart local v1    # "b":I
    :goto_229
    iget-object v4, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->game:Lorg/telegram/tgnet/TLRPC$TL_game;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_game;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_25e

    .line 850
    iget-object v4, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->game:Lorg/telegram/tgnet/TLRPC$TL_game;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_game;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 851
    .restart local v3    # "size":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    instance-of v4, v3, Lorg/telegram/tgnet/TLRPC$TL_photoSizeEmpty;

    if-eqz v4, :cond_250

    .line 849
    :cond_24d
    add-int/lit8 v1, v1, 0x1

    goto :goto_229

    .line 854
    :cond_250
    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$PhotoSize;->type:Ljava/lang/String;

    iget-object v5, v2, Lorg/telegram/tgnet/TLRPC$PhotoSize;->type:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_24d

    .line 855
    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iput-object v4, v2, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 847
    .end local v3    # "size":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    :cond_25e
    add-int/lit8 v0, v0, 0x1

    goto :goto_218

    .line 866
    .end local v0    # "a":I
    .end local v1    # "b":I
    .end local v2    # "photoObject":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    :cond_261
    iget-object v4, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;

    if-eqz v4, :cond_20

    .line 867
    iget-object v4, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$WebPage;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    if-eqz v4, :cond_2de

    .line 868
    if-eqz p1, :cond_279

    iget-object v4, p0, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    if-nez v4, :cond_28c

    .line 869
    :cond_279
    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$WebPage;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v4, p0, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    goto/16 :goto_20

    .line 870
    :cond_28c
    iget-object v4, p0, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_20

    .line 871
    const/4 v0, 0x0

    .restart local v0    # "a":I
    :goto_295
    iget-object v4, p0, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_20

    .line 872
    iget-object v4, p0, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 873
    .restart local v2    # "photoObject":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    const/4 v1, 0x0

    .restart local v1    # "b":I
    :goto_2a6
    iget-object v4, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$WebPage;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_2db

    .line 874
    iget-object v4, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$WebPage;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 875
    .restart local v3    # "size":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    instance-of v4, v3, Lorg/telegram/tgnet/TLRPC$TL_photoSizeEmpty;

    if-eqz v4, :cond_2cd

    .line 873
    :cond_2ca
    add-int/lit8 v1, v1, 0x1

    goto :goto_2a6

    .line 878
    :cond_2cd
    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$PhotoSize;->type:Ljava/lang/String;

    iget-object v5, v2, Lorg/telegram/tgnet/TLRPC$PhotoSize;->type:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2ca

    .line 879
    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iput-object v4, v2, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 871
    .end local v3    # "size":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    :cond_2db
    add-int/lit8 v0, v0, 0x1

    goto :goto_295

    .line 885
    .end local v0    # "a":I
    .end local v1    # "b":I
    .end local v2    # "photoObject":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    :cond_2de
    iget-object v4, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$WebPage;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v4, :cond_20

    .line 886
    iget-object v4, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$WebPage;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_photoSizeEmpty;

    if-nez v4, :cond_20

    .line 887
    if-nez p1, :cond_310

    .line 888
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    .line 889
    iget-object v4, p0, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    iget-object v5, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$WebPage;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_20

    .line 890
    :cond_310
    iget-object v4, p0, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    if-eqz v4, :cond_20

    iget-object v4, p0, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_20

    iget-object v4, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$WebPage;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    if-eqz v4, :cond_20

    .line 891
    iget-object v4, p0, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 892
    .restart local v2    # "photoObject":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    iget-object v4, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$WebPage;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iput-object v4, v2, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    goto/16 :goto_20
.end method

.method public getApproximateHeight()I
    .registers 12

    .prologue
    .line 1738
    iget v9, p0, Lorg/telegram/messenger/MessageObject;->type:I

    if-nez v9, :cond_30

    .line 1739
    iget v10, p0, Lorg/telegram/messenger/MessageObject;->textHeight:I

    iget-object v9, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v9, v9, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;

    if-eqz v9, :cond_2e

    iget-object v9, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    instance-of v9, v9, Lorg/telegram/tgnet/TLRPC$TL_webPage;

    if-eqz v9, :cond_2e

    const/high16 v9, 0x42c80000    # 100.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    :goto_1e
    add-int v3, v10, v9

    .line 1740
    .local v3, "height":I
    invoke-virtual {p0}, Lorg/telegram/messenger/MessageObject;->isReply()Z

    move-result v9

    if-eqz v9, :cond_2d

    .line 1741
    const/high16 v9, 0x42280000    # 42.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    add-int/2addr v3, v9

    .line 1825
    .end local v3    # "height":I
    :cond_2d
    :goto_2d
    return v3

    .line 1739
    :cond_2e
    const/4 v9, 0x0

    goto :goto_1e

    .line 1744
    :cond_30
    iget v9, p0, Lorg/telegram/messenger/MessageObject;->type:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_3c

    .line 1745
    const/high16 v9, 0x42900000    # 72.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    goto :goto_2d

    .line 1746
    :cond_3c
    iget v9, p0, Lorg/telegram/messenger/MessageObject;->type:I

    const/16 v10, 0xc

    if-ne v9, v10, :cond_49

    .line 1747
    const/high16 v9, 0x428e0000    # 71.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    goto :goto_2d

    .line 1748
    :cond_49
    iget v9, p0, Lorg/telegram/messenger/MessageObject;->type:I

    const/16 v10, 0x9

    if-ne v9, v10, :cond_56

    .line 1749
    const/high16 v9, 0x42c80000    # 100.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    goto :goto_2d

    .line 1750
    :cond_56
    iget v9, p0, Lorg/telegram/messenger/MessageObject;->type:I

    const/4 v10, 0x4

    if-ne v9, v10, :cond_62

    .line 1751
    const/high16 v9, 0x42e40000    # 114.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    goto :goto_2d

    .line 1752
    :cond_62
    iget v9, p0, Lorg/telegram/messenger/MessageObject;->type:I

    const/16 v10, 0xe

    if-ne v9, v10, :cond_6f

    .line 1753
    const/high16 v9, 0x42a40000    # 82.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    goto :goto_2d

    .line 1754
    :cond_6f
    iget v9, p0, Lorg/telegram/messenger/MessageObject;->type:I

    const/16 v10, 0xa

    if-ne v9, v10, :cond_7c

    .line 1755
    const/high16 v9, 0x41f00000    # 30.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    goto :goto_2d

    .line 1756
    :cond_7c
    iget v9, p0, Lorg/telegram/messenger/MessageObject;->type:I

    const/16 v10, 0xb

    if-ne v9, v10, :cond_89

    .line 1757
    const/high16 v9, 0x42480000    # 50.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    goto :goto_2d

    .line 1758
    :cond_89
    iget v9, p0, Lorg/telegram/messenger/MessageObject;->type:I

    const/16 v10, 0xd

    if-ne v9, v10, :cond_100

    .line 1759
    sget-object v9, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->y:I

    int-to-float v9, v9

    const v10, 0x3ecccccd

    mul-float v4, v9, v10

    .line 1761
    .local v4, "maxHeight":F
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v9

    if-eqz v9, :cond_f6

    .line 1762
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getMinTabletSide()I

    move-result v9

    int-to-float v9, v9

    const/high16 v10, 0x3f000000    # 0.5f

    mul-float v5, v9, v10

    .line 1766
    .local v5, "maxWidth":F
    :goto_a8
    const/4 v6, 0x0

    .line 1767
    .local v6, "photoHeight":I
    const/4 v7, 0x0

    .line 1768
    .local v7, "photoWidth":I
    iget-object v9, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_b6
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_ca

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    .line 1769
    .local v0, "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    instance-of v10, v0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeImageSize;

    if-eqz v10, :cond_b6

    .line 1770
    iget v7, v0, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->w:I

    .line 1771
    iget v6, v0, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->h:I

    .line 1775
    .end local v0    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    :cond_ca
    if-nez v7, :cond_d5

    .line 1776
    float-to-int v6, v4

    .line 1777
    const/high16 v9, 0x42c80000    # 100.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    add-int v7, v6, v9

    .line 1779
    :cond_d5
    int-to-float v9, v6

    cmpl-float v9, v9, v4

    if-lez v9, :cond_e1

    .line 1780
    int-to-float v9, v7

    int-to-float v10, v6

    div-float v10, v4, v10

    mul-float/2addr v9, v10

    float-to-int v7, v9

    .line 1781
    float-to-int v6, v4

    .line 1783
    :cond_e1
    int-to-float v9, v7

    cmpl-float v9, v9, v5

    if-lez v9, :cond_ec

    .line 1784
    int-to-float v9, v6

    int-to-float v10, v7

    div-float v10, v5, v10

    mul-float/2addr v9, v10

    float-to-int v6, v9

    .line 1786
    :cond_ec
    const/high16 v9, 0x41600000    # 14.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    add-int v3, v6, v9

    goto/16 :goto_2d

    .line 1764
    .end local v5    # "maxWidth":F
    .end local v6    # "photoHeight":I
    .end local v7    # "photoWidth":I
    :cond_f6
    sget-object v9, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->x:I

    int-to-float v9, v9

    const/high16 v10, 0x3f000000    # 0.5f

    mul-float v5, v9, v10

    .restart local v5    # "maxWidth":F
    goto :goto_a8

    .line 1791
    .end local v4    # "maxHeight":F
    .end local v5    # "maxWidth":F
    :cond_100
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v9

    if-eqz v9, :cond_16e

    .line 1792
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getMinTabletSide()I

    move-result v9

    int-to-float v9, v9

    const v10, 0x3f333333

    mul-float/2addr v9, v10

    float-to-int v7, v9

    .line 1796
    .restart local v7    # "photoWidth":I
    :goto_110
    const/high16 v9, 0x42c80000    # 100.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    add-int v6, v7, v9

    .line 1797
    .restart local v6    # "photoHeight":I
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getPhotoSize()I

    move-result v9

    if-le v7, v9, :cond_122

    .line 1798
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getPhotoSize()I

    move-result v7

    .line 1800
    :cond_122
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getPhotoSize()I

    move-result v9

    if-le v6, v9, :cond_12c

    .line 1801
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getPhotoSize()I

    move-result v6

    .line 1803
    :cond_12c
    iget-object v9, p0, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getPhotoSize()I

    move-result v10

    invoke-static {v9, v10}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v1

    .line 1805
    .local v1, "currentPhotoObject":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    if-eqz v1, :cond_164

    .line 1806
    iget v9, v1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I

    int-to-float v9, v9

    int-to-float v10, v7

    div-float v8, v9, v10

    .line 1807
    .local v8, "scale":F
    iget v9, v1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I

    int-to-float v9, v9

    div-float/2addr v9, v8

    float-to-int v2, v9

    .line 1808
    .local v2, "h":I
    if-nez v2, :cond_14b

    .line 1809
    const/high16 v9, 0x42c80000    # 100.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    .line 1811
    :cond_14b
    if-le v2, v6, :cond_181

    .line 1812
    move v2, v6

    .line 1816
    :cond_14e
    :goto_14e
    invoke-virtual {p0}, Lorg/telegram/messenger/MessageObject;->isSecretPhoto()Z

    move-result v9

    if-eqz v9, :cond_163

    .line 1817
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v9

    if-eqz v9, :cond_190

    .line 1818
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getMinTabletSide()I

    move-result v9

    int-to-float v9, v9

    const/high16 v10, 0x3f000000    # 0.5f

    mul-float/2addr v9, v10

    float-to-int v2, v9

    .line 1823
    :cond_163
    :goto_163
    move v6, v2

    .line 1825
    .end local v2    # "h":I
    .end local v8    # "scale":F
    :cond_164
    const/high16 v9, 0x41600000    # 14.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    add-int v3, v6, v9

    goto/16 :goto_2d

    .line 1794
    .end local v1    # "currentPhotoObject":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    .end local v6    # "photoHeight":I
    .end local v7    # "photoWidth":I
    :cond_16e
    sget-object v9, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->x:I

    sget-object v10, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v10, v10, Landroid/graphics/Point;->y:I

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    int-to-float v9, v9

    const v10, 0x3f333333

    mul-float/2addr v9, v10

    float-to-int v7, v9

    .restart local v7    # "photoWidth":I
    goto :goto_110

    .line 1813
    .restart local v1    # "currentPhotoObject":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    .restart local v2    # "h":I
    .restart local v6    # "photoHeight":I
    .restart local v8    # "scale":F
    :cond_181
    const/high16 v9, 0x42f00000    # 120.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    if-ge v2, v9, :cond_14e

    .line 1814
    const/high16 v9, 0x42f00000    # 120.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    goto :goto_14e

    .line 1820
    :cond_190
    sget-object v9, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->x:I

    sget-object v10, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v10, v10, Landroid/graphics/Point;->y:I

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    int-to-float v9, v9

    const/high16 v10, 0x3f000000    # 0.5f

    mul-float/2addr v9, v10

    float-to-int v2, v9

    goto :goto_163
.end method

.method public getDialogId()J
    .registers 3

    .prologue
    .line 1511
    iget-object v0, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v0}, Lorg/telegram/messenger/MessageObject;->getDialogId(Lorg/telegram/tgnet/TLRPC$Message;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getDocument()Lorg/telegram/tgnet/TLRPC$Document;
    .registers 2

    .prologue
    .line 1658
    iget-object v0, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;

    if-eqz v0, :cond_11

    .line 1659
    iget-object v0, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$WebPage;->document:Lorg/telegram/tgnet/TLRPC$Document;

    .line 1661
    :goto_10
    return-object v0

    :cond_11
    iget-object v0, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    goto :goto_10

    :cond_1e
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public getDocumentName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1564
    iget-object v0, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    if-eqz v0, :cond_13

    .line 1565
    iget-object v0, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->getDocumentFileName(Lorg/telegram/tgnet/TLRPC$Document;)Ljava/lang/String;

    move-result-object v0

    .line 1569
    :goto_12
    return-object v0

    .line 1566
    :cond_13
    iget-object v0, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;

    if-eqz v0, :cond_28

    .line 1567
    iget-object v0, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$WebPage;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->getDocumentFileName(Lorg/telegram/tgnet/TLRPC$Document;)Ljava/lang/String;

    move-result-object v0

    goto :goto_12

    .line 1569
    :cond_28
    const-string v0, ""

    goto :goto_12
.end method

.method public getDuration()I
    .registers 5

    .prologue
    .line 1918
    iget v3, p0, Lorg/telegram/messenger/MessageObject;->type:I

    if-nez v3, :cond_24

    .line 1919
    iget-object v3, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v2, v3, Lorg/telegram/tgnet/TLRPC$WebPage;->document:Lorg/telegram/tgnet/TLRPC$Document;

    .line 1923
    .local v2, "document":Lorg/telegram/tgnet/TLRPC$Document;
    :goto_c
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_d
    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_2e

    .line 1924
    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    .line 1925
    .local v1, "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    instance-of v3, v1, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;

    if-eqz v3, :cond_2b

    .line 1926
    iget v3, v1, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->duration:I

    .line 1929
    .end local v1    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    :goto_23
    return v3

    .line 1921
    .end local v0    # "a":I
    .end local v2    # "document":Lorg/telegram/tgnet/TLRPC$Document;
    :cond_24
    iget-object v3, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v2, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    .restart local v2    # "document":Lorg/telegram/tgnet/TLRPC$Document;
    goto :goto_c

    .line 1923
    .restart local v0    # "a":I
    .restart local v1    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    :cond_2b
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 1929
    .end local v1    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    :cond_2e
    const/4 v3, 0x0

    goto :goto_23
.end method

.method public getExtension()Ljava/lang/String;
    .registers 5

    .prologue
    .line 954
    invoke-virtual {p0}, Lorg/telegram/messenger/MessageObject;->getFileName()Ljava/lang/String;

    move-result-object v1

    .line 955
    .local v1, "fileName":Ljava/lang/String;
    const/16 v3, 0x2e

    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 956
    .local v2, "idx":I
    const/4 v0, 0x0

    .line 957
    .local v0, "ext":Ljava/lang/String;
    const/4 v3, -0x1

    if-eq v2, v3, :cond_14

    .line 958
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 960
    :cond_14
    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_24

    .line 961
    :cond_1c
    iget-object v3, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v0, v3, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    .line 963
    :cond_24
    if-nez v0, :cond_28

    .line 964
    const-string v0, ""

    .line 966
    :cond_28
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 967
    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .registers 4

    .prologue
    .line 971
    iget-object v2, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    if-eqz v2, :cond_13

    .line 972
    iget-object v2, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v2}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object v2

    .line 984
    :goto_12
    return-object v2

    .line 973
    :cond_13
    iget-object v2, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;

    if-eqz v2, :cond_38

    .line 974
    iget-object v2, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v1, v2, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    .line 975
    .local v1, "sizes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$PhotoSize;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_4d

    .line 976
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getPhotoSize()I

    move-result v2

    invoke-static {v1, v2}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v0

    .line 977
    .local v0, "sizeFull":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    if-eqz v0, :cond_4d

    .line 978
    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object v2

    goto :goto_12

    .line 981
    .end local v0    # "sizeFull":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    .end local v1    # "sizes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$PhotoSize;>;"
    :cond_38
    iget-object v2, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;

    if-eqz v2, :cond_4d

    .line 982
    iget-object v2, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$WebPage;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v2}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object v2

    goto :goto_12

    .line 984
    :cond_4d
    const-string v2, ""

    goto :goto_12
.end method

.method public getFileType()I
    .registers 2

    .prologue
    .line 988
    invoke-virtual {p0}, Lorg/telegram/messenger/MessageObject;->isVideo()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 989
    const/4 v0, 0x2

    .line 997
    :goto_7
    return v0

    .line 990
    :cond_8
    invoke-virtual {p0}, Lorg/telegram/messenger/MessageObject;->isVoice()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 991
    const/4 v0, 0x1

    goto :goto_7

    .line 992
    :cond_10
    iget-object v0, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    if-eqz v0, :cond_1a

    .line 993
    const/4 v0, 0x3

    goto :goto_7

    .line 994
    :cond_1a
    iget-object v0, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;

    if-eqz v0, :cond_24

    .line 995
    const/4 v0, 0x0

    goto :goto_7

    .line 997
    :cond_24
    const/4 v0, 0x4

    goto :goto_7
.end method

.method public getForwardedName()Ljava/lang/String;
    .registers 5

    .prologue
    .line 2069
    iget-object v2, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    if-eqz v2, :cond_46

    .line 2070
    iget-object v2, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;->channel_id:I

    if-eqz v2, :cond_25

    .line 2071
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;->channel_id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    .line 2072
    .local v0, "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    if-eqz v0, :cond_46

    .line 2073
    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    .line 2082
    .end local v0    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    :goto_24
    return-object v2

    .line 2075
    :cond_25
    iget-object v2, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;->from_id:I

    if-eqz v2, :cond_46

    .line 2076
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;->from_id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v1

    .line 2077
    .local v1, "user":Lorg/telegram/tgnet/TLRPC$User;
    if-eqz v1, :cond_46

    .line 2078
    invoke-static {v1}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v2

    goto :goto_24

    .line 2082
    .end local v1    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_46
    const/4 v2, 0x0

    goto :goto_24
.end method

.method public getId()I
    .registers 2

    .prologue
    .line 1473
    iget-object v0, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    return v0
.end method

.method public getInputStickerSet()Lorg/telegram/tgnet/TLRPC$InputStickerSet;
    .registers 2

    .prologue
    .line 1974
    iget-object v0, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v0}, Lorg/telegram/messenger/MessageObject;->getInputStickerSet(Lorg/telegram/tgnet/TLRPC$Message;)Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    move-result-object v0

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .registers 3

    .prologue
    .line 720
    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    if-eqz v1, :cond_11

    .line 721
    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    .line 730
    :goto_10
    return-object v1

    .line 722
    :cond_11
    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaInvoice;

    if-eqz v1, :cond_26

    .line 723
    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaInvoice;

    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaInvoice;->photo:Lorg/telegram/tgnet/TLRPC$TL_webDocument;

    .line 724
    .local v0, "photo":Lorg/telegram/tgnet/TLRPC$TL_webDocument;
    if-eqz v0, :cond_31

    .line 725
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_webDocument;->mime_type:Ljava/lang/String;

    goto :goto_10

    .line 727
    .end local v0    # "photo":Lorg/telegram/tgnet/TLRPC$TL_webDocument;
    :cond_26
    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;

    if-eqz v1, :cond_31

    .line 728
    const-string v1, "image/jpeg"

    goto :goto_10

    .line 730
    :cond_31
    const-string v1, ""

    goto :goto_10
.end method

.method public getMusicAuthor()Ljava/lang/String;
    .registers 9

    .prologue
    .line 1934
    iget v6, p0, Lorg/telegram/messenger/MessageObject;->type:I

    if-nez v6, :cond_47

    .line 1935
    iget-object v6, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v3, v6, Lorg/telegram/tgnet/TLRPC$WebPage;->document:Lorg/telegram/tgnet/TLRPC$Document;

    .line 1939
    .local v3, "document":Lorg/telegram/tgnet/TLRPC$Document;
    :goto_c
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_d
    iget-object v6, v3, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v0, v6, :cond_df

    .line 1940
    iget-object v6, v3, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    .line 1941
    .local v1, "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    instance-of v6, v1, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;

    if-eqz v6, :cond_db

    .line 1942
    iget-boolean v6, v1, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->voice:Z

    if-eqz v6, :cond_c6

    .line 1943
    invoke-virtual {p0}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z

    move-result v6

    if-nez v6, :cond_3d

    iget-object v6, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    if-eqz v6, :cond_4e

    iget-object v6, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;->from_id:I

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v7

    if-ne v6, v7, :cond_4e

    .line 1944
    :cond_3d
    const-string v6, "FromYou"

    const v7, 0x7f070266

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 1970
    .end local v1    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    :cond_46
    :goto_46
    return-object v4

    .line 1937
    .end local v0    # "a":I
    .end local v3    # "document":Lorg/telegram/tgnet/TLRPC$Document;
    :cond_47
    iget-object v6, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v3, v6, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    .restart local v3    # "document":Lorg/telegram/tgnet/TLRPC$Document;
    goto :goto_c

    .line 1946
    .restart local v0    # "a":I
    .restart local v1    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    :cond_4e
    const/4 v5, 0x0

    .line 1947
    .local v5, "user":Lorg/telegram/tgnet/TLRPC$User;
    const/4 v2, 0x0

    .line 1948
    .local v2, "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    iget-object v6, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    if-eqz v6, :cond_77

    iget-object v6, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;->channel_id:I

    if-eqz v6, :cond_77

    .line 1949
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    iget-object v7, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    iget v7, v7, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;->channel_id:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v2

    .line 1957
    :goto_70
    if-eqz v5, :cond_c1

    .line 1958
    invoke-static {v5}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v4

    goto :goto_46

    .line 1950
    :cond_77
    iget-object v6, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    if-eqz v6, :cond_98

    iget-object v6, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;->from_id:I

    if-eqz v6, :cond_98

    .line 1951
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    iget-object v7, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    iget v7, v7, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;->from_id:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v5

    goto :goto_70

    .line 1952
    :cond_98
    iget-object v6, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    if-gez v6, :cond_b0

    .line 1953
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    iget-object v7, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v7, v7, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    neg-int v7, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v2

    goto :goto_70

    .line 1955
    :cond_b0
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    iget-object v7, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v7, v7, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v5

    goto :goto_70

    .line 1959
    :cond_c1
    if-eqz v2, :cond_c6

    .line 1960
    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    goto :goto_46

    .line 1963
    .end local v2    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    .end local v5    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_c6
    iget-object v4, v1, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->performer:Ljava/lang/String;

    .line 1964
    .local v4, "performer":Ljava/lang/String;
    if-eqz v4, :cond_d0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_46

    .line 1965
    :cond_d0
    const-string v6, "AudioUnknownArtist"

    const v7, 0x7f0700c6

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_46

    .line 1939
    .end local v4    # "performer":Ljava/lang/String;
    :cond_db
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_d

    .line 1970
    .end local v1    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    :cond_df
    const-string v4, ""

    goto/16 :goto_46
.end method

.method public getMusicTitle()Ljava/lang/String;
    .registers 7

    .prologue
    .line 1892
    iget v4, p0, Lorg/telegram/messenger/MessageObject;->type:I

    if-nez v4, :cond_2f

    .line 1893
    iget-object v4, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v2, v4, Lorg/telegram/tgnet/TLRPC$WebPage;->document:Lorg/telegram/tgnet/TLRPC$Document;

    .line 1897
    .local v2, "document":Lorg/telegram/tgnet/TLRPC$Document;
    :goto_c
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_d
    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_59

    .line 1898
    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    .line 1899
    .local v1, "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    instance-of v4, v1, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;

    if-eqz v4, :cond_56

    .line 1900
    iget-boolean v4, v1, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->voice:Z

    if-eqz v4, :cond_36

    .line 1901
    iget-object v4, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    int-to-long v4, v4

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->formatDateAudio(J)Ljava/lang/String;

    move-result-object v3

    .line 1913
    .end local v1    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    :cond_2e
    :goto_2e
    return-object v3

    .line 1895
    .end local v0    # "a":I
    .end local v2    # "document":Lorg/telegram/tgnet/TLRPC$Document;
    :cond_2f
    iget-object v4, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v2, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    .restart local v2    # "document":Lorg/telegram/tgnet/TLRPC$Document;
    goto :goto_c

    .line 1903
    .restart local v0    # "a":I
    .restart local v1    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    :cond_36
    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->title:Ljava/lang/String;

    .line 1904
    .local v3, "title":Ljava/lang/String;
    if-eqz v3, :cond_40

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_2e

    .line 1905
    :cond_40
    invoke-static {v2}, Lorg/telegram/messenger/FileLoader;->getDocumentFileName(Lorg/telegram/tgnet/TLRPC$Document;)Ljava/lang/String;

    move-result-object v3

    .line 1906
    if-eqz v3, :cond_4c

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_2e

    .line 1907
    :cond_4c
    const-string v4, "AudioUnknownTitle"

    const v5, 0x7f0700c7

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    goto :goto_2e

    .line 1897
    .end local v3    # "title":Ljava/lang/String;
    :cond_56
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 1913
    .end local v1    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    :cond_59
    const-string v3, ""

    goto :goto_2e
.end method

.method public getSecretTimeString()Ljava/lang/String;
    .registers 6

    .prologue
    .line 1546
    invoke-virtual {p0}, Lorg/telegram/messenger/MessageObject;->isSecretMedia()Z

    move-result v2

    if-nez v2, :cond_8

    .line 1547
    const/4 v1, 0x0

    .line 1559
    :goto_7
    return-object v1

    .line 1549
    :cond_8
    iget-object v2, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v0, v2, Lorg/telegram/tgnet/TLRPC$Message;->ttl:I

    .line 1550
    .local v0, "secondsLeft":I
    iget-object v2, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->destroyTime:I

    if-eqz v2, :cond_24

    .line 1551
    const/4 v2, 0x0

    iget-object v3, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->destroyTime:I

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1554
    :cond_24
    const/16 v2, 0x3c

    if-ge v0, v2, :cond_3c

    .line 1555
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "s"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .local v1, "str":Ljava/lang/String;
    goto :goto_7

    .line 1557
    .end local v1    # "str":Ljava/lang/String;
    :cond_3c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    div-int/lit8 v3, v0, 0x3c

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "m"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "str":Ljava/lang/String;
    goto :goto_7
.end method

.method public getStickerEmoji()Ljava/lang/String;
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 1830
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_2
    iget-object v3, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_30

    .line 1831
    iget-object v3, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    .line 1832
    .local v1, "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    instance-of v3, v1, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeSticker;

    if-eqz v3, :cond_31

    .line 1833
    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->alt:Ljava/lang/String;

    if-eqz v3, :cond_30

    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->alt:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_30

    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->alt:Ljava/lang/String;

    .line 1836
    .end local v1    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    :cond_30
    return-object v2

    .line 1830
    .restart local v1    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    :cond_31
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public getStrickerChar()Ljava/lang/String;
    .registers 4

    .prologue
    .line 1727
    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz v1, :cond_2d

    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v1, :cond_2d

    .line 1728
    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    .line 1729
    .local v0, "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    instance-of v2, v0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeSticker;

    if-eqz v2, :cond_1a

    .line 1730
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->alt:Ljava/lang/String;

    .line 1734
    .end local v0    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    :goto_2c
    return-object v1

    :cond_2d
    const/4 v1, 0x0

    goto :goto_2c
.end method

.method public getUnradFlags()I
    .registers 2

    .prologue
    .line 1454
    iget-object v0, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v0}, Lorg/telegram/messenger/MessageObject;->getUnreadFlags(Lorg/telegram/tgnet/TLRPC$Message;)I

    move-result v0

    return v0
.end method

.method public hasPhotoStickers()Z
    .registers 2

    .prologue
    .line 1875
    iget-object v0, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Photo;->has_stickers:Z

    if-eqz v0, :cond_1a

    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public isContentUnread()Z
    .registers 2

    .prologue
    .line 1446
    iget-object v0, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media_unread:Z

    return v0
.end method

.method public isForwarded()Z
    .registers 2

    .prologue
    .line 1978
    iget-object v0, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v0}, Lorg/telegram/messenger/MessageObject;->isForwardedMessage(Lorg/telegram/tgnet/TLRPC$Message;)Z

    move-result v0

    return v0
.end method

.method public isFromUser()Z
    .registers 2

    .prologue
    .line 1438
    iget-object v0, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    if-lez v0, :cond_e

    iget-object v0, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->post:Z

    if-nez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public isGame()Z
    .registers 2

    .prologue
    .line 1863
    iget-object v0, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v0}, Lorg/telegram/messenger/MessageObject;->isGameMessage(Lorg/telegram/tgnet/TLRPC$Message;)Z

    move-result v0

    return v0
.end method

.method public isGif()Z
    .registers 2

    .prologue
    .line 1879
    iget-object v0, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v0}, Lorg/telegram/messenger/MessageObject;->isGifDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public isInvoice()Z
    .registers 2

    .prologue
    .line 1867
    iget-object v0, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v0}, Lorg/telegram/messenger/MessageObject;->isInvoiceMessage(Lorg/telegram/tgnet/TLRPC$Message;)Z

    move-result v0

    return v0
.end method

.method public isMask()Z
    .registers 2

    .prologue
    .line 1847
    iget-object v0, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v0}, Lorg/telegram/messenger/MessageObject;->isMaskMessage(Lorg/telegram/tgnet/TLRPC$Message;)Z

    move-result v0

    return v0
.end method

.method public isMediaEmpty()Z
    .registers 2

    .prologue
    .line 1990
    iget-object v0, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v0}, Lorg/telegram/messenger/MessageObject;->isMediaEmpty(Lorg/telegram/tgnet/TLRPC$Message;)Z

    move-result v0

    return v0
.end method

.method public isMegagroup()Z
    .registers 2

    .prologue
    .line 1499
    iget-object v0, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v0}, Lorg/telegram/messenger/MessageObject;->isMegagroup(Lorg/telegram/tgnet/TLRPC$Message;)Z

    move-result v0

    return v0
.end method

.method public isMusic()Z
    .registers 2

    .prologue
    .line 1851
    iget-object v0, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v0}, Lorg/telegram/messenger/MessageObject;->isMusicMessage(Lorg/telegram/tgnet/TLRPC$Message;)Z

    move-result v0

    return v0
.end method

.method public isNewGif()Z
    .registers 2

    .prologue
    .line 1887
    iget-object v0, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v0}, Lorg/telegram/messenger/MessageObject;->isNewGifDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public isOut()Z
    .registers 2

    .prologue
    .line 1430
    iget-object v0, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    return v0
.end method

.method public isOutOwner()Z
    .registers 2

    .prologue
    .line 1434
    iget-object v0, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    if-eqz v0, :cond_14

    iget-object v0, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    if-lez v0, :cond_14

    iget-object v0, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->post:Z

    if-nez v0, :cond_14

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public isReply()Z
    .registers 5

    .prologue
    .line 1986
    iget-object v0, p0, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageEmpty;

    if-nez v0, :cond_26

    :cond_c
    iget-object v0, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->reply_to_msg_id:I

    if-nez v0, :cond_1c

    iget-object v0, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->reply_to_random_id:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_26

    :cond_1c
    iget-object v0, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_26

    const/4 v0, 0x1

    :goto_25
    return v0

    :cond_26
    const/4 v0, 0x0

    goto :goto_25
.end method

.method public isSecretMedia()Z
    .registers 3

    .prologue
    .line 1481
    iget-object v0, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_message_secret;

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->ttl:I

    if-lez v0, :cond_1c

    iget-object v0, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->ttl:I

    const/16 v1, 0x3c

    if-le v0, v1, :cond_28

    .line 1482
    :cond_1c
    invoke-virtual {p0}, Lorg/telegram/messenger/MessageObject;->isVoice()Z

    move-result v0

    if-nez v0, :cond_28

    invoke-virtual {p0}, Lorg/telegram/messenger/MessageObject;->isVideo()Z

    move-result v0

    if-eqz v0, :cond_2a

    :cond_28
    const/4 v0, 0x1

    .line 1481
    :goto_29
    return v0

    .line 1482
    :cond_2a
    const/4 v0, 0x0

    goto :goto_29
.end method

.method public isSecretPhoto()Z
    .registers 3

    .prologue
    .line 1477
    iget-object v0, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_message_secret;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->ttl:I

    if-lez v0, :cond_1e

    iget-object v0, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->ttl:I

    const/16 v1, 0x3c

    if-gt v0, v1, :cond_1e

    const/4 v0, 0x1

    :goto_1d
    return v0

    :cond_1e
    const/4 v0, 0x0

    goto :goto_1d
.end method

.method public isSendError()Z
    .registers 3

    .prologue
    .line 1538
    iget-object v0, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->send_state:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_f

    iget-object v0, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    if-gez v0, :cond_f

    const/4 v0, 0x1

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public isSending()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 1534
    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->send_state:I

    if-ne v1, v0, :cond_e

    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    if-gez v1, :cond_e

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public isSent()Z
    .registers 2

    .prologue
    .line 1542
    iget-object v0, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->send_state:I

    if-eqz v0, :cond_c

    iget-object v0, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    if-lez v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public isSticker()Z
    .registers 3

    .prologue
    .line 1840
    iget v0, p0, Lorg/telegram/messenger/MessageObject;->type:I

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_10

    .line 1841
    iget v0, p0, Lorg/telegram/messenger/MessageObject;->type:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_e

    const/4 v0, 0x1

    .line 1843
    :goto_d
    return v0

    .line 1841
    :cond_e
    const/4 v0, 0x0

    goto :goto_d

    .line 1843
    :cond_10
    iget-object v0, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v0}, Lorg/telegram/messenger/MessageObject;->isStickerMessage(Lorg/telegram/tgnet/TLRPC$Message;)Z

    move-result v0

    goto :goto_d
.end method

.method public isUnread()Z
    .registers 2

    .prologue
    .line 1442
    iget-object v0, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->unread:Z

    return v0
.end method

.method public isVideo()Z
    .registers 2

    .prologue
    .line 1859
    iget-object v0, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v0}, Lorg/telegram/messenger/MessageObject;->isVideoMessage(Lorg/telegram/tgnet/TLRPC$Message;)Z

    move-result v0

    return v0
.end method

.method public isVideoVoice()Z
    .registers 2

    .prologue
    .line 1871
    iget-object v0, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v0}, Lorg/telegram/messenger/MessageObject;->isVideoVoiceMessage(Lorg/telegram/tgnet/TLRPC$Message;)Z

    move-result v0

    if-eqz v0, :cond_e

    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->DEBUG_PRIVATE_VERSION:Z

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public isVoice()Z
    .registers 2

    .prologue
    .line 1855
    iget-object v0, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v0}, Lorg/telegram/messenger/MessageObject;->isVoiceMessage(Lorg/telegram/tgnet/TLRPC$Message;)Z

    move-result v0

    return v0
.end method

.method public isWebpageDocument()Z
    .registers 2

    .prologue
    .line 1883
    iget-object v0, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;

    if-eqz v0, :cond_22

    iget-object v0, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$WebPage;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v0, :cond_22

    iget-object v0, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$WebPage;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v0}, Lorg/telegram/messenger/MessageObject;->isGifDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v0

    if-nez v0, :cond_22

    const/4 v0, 0x1

    :goto_21
    return v0

    :cond_22
    const/4 v0, 0x0

    goto :goto_21
.end method

.method public measureInlineBotButtons()V
    .registers 15

    .prologue
    const/4 v7, 0x0

    .line 590
    iput v7, p0, Lorg/telegram/messenger/MessageObject;->wantedBotKeyboardWidth:I

    .line 591
    iget-object v2, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->reply_markup:Lorg/telegram/tgnet/TLRPC$ReplyMarkup;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_replyInlineMarkup;

    if-nez v2, :cond_c

    .line 620
    :cond_b
    return-void

    .line 594
    :cond_c
    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->createChatResources(Landroid/content/Context;Z)V

    .line 595
    iget-object v2, p0, Lorg/telegram/messenger/MessageObject;->botButtonsLayout:Ljava/lang/StringBuilder;

    if-nez v2, :cond_9c

    .line 596
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v2, p0, Lorg/telegram/messenger/MessageObject;->botButtonsLayout:Ljava/lang/StringBuilder;

    .line 600
    :goto_1c
    const/4 v8, 0x0

    .local v8, "a":I
    :goto_1d
    iget-object v2, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->reply_markup:Lorg/telegram/tgnet/TLRPC$ReplyMarkup;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$ReplyMarkup;->rows:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v8, v2, :cond_b

    .line 601
    iget-object v2, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->reply_markup:Lorg/telegram/tgnet/TLRPC$ReplyMarkup;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$ReplyMarkup;->rows:Ljava/util/ArrayList;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonRow;

    .line 602
    .local v12, "row":Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonRow;
    const/4 v11, 0x0

    .line 603
    .local v11, "maxButtonSize":I
    iget-object v2, v12, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonRow;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v13

    .line 604
    .local v13, "size":I
    const/4 v9, 0x0

    .local v9, "b":I
    :goto_3d
    if-ge v9, v13, :cond_b6

    .line 605
    iget-object v2, v12, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonRow;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/telegram/tgnet/TLRPC$KeyboardButton;

    .line 606
    .local v10, "button":Lorg/telegram/tgnet/TLRPC$KeyboardButton;
    iget-object v2, p0, Lorg/telegram/messenger/MessageObject;->botButtonsLayout:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 608
    instance-of v2, v10, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonBuy;

    if-eqz v2, :cond_a3

    iget-object v2, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->flags:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_a3

    .line 609
    const-string v2, "PaymentReceipt"

    const v3, 0x7f070421

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 613
    .local v1, "text":Ljava/lang/CharSequence;
    :goto_67
    new-instance v0, Landroid/text/StaticLayout;

    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->chat_msgBotButtonPaint:Landroid/text/TextPaint;

    const/high16 v3, 0x44fa0000    # 2000.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 614
    .local v0, "staticLayout":Landroid/text/StaticLayout;
    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v2

    if-lez v2, :cond_99

    .line 615
    invoke-virtual {v0, v7}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v2

    invoke-virtual {v0, v7}, Landroid/text/StaticLayout;->getLineLeft(I)F

    move-result v3

    sub-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    const/high16 v3, 0x40800000    # 4.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {v11, v2}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 604
    :cond_99
    add-int/lit8 v9, v9, 0x1

    goto :goto_3d

    .line 598
    .end local v0    # "staticLayout":Landroid/text/StaticLayout;
    .end local v1    # "text":Ljava/lang/CharSequence;
    .end local v8    # "a":I
    .end local v9    # "b":I
    .end local v10    # "button":Lorg/telegram/tgnet/TLRPC$KeyboardButton;
    .end local v11    # "maxButtonSize":I
    .end local v12    # "row":Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonRow;
    .end local v13    # "size":I
    :cond_9c
    iget-object v2, p0, Lorg/telegram/messenger/MessageObject;->botButtonsLayout:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    goto/16 :goto_1c

    .line 611
    .restart local v8    # "a":I
    .restart local v9    # "b":I
    .restart local v10    # "button":Lorg/telegram/tgnet/TLRPC$KeyboardButton;
    .restart local v11    # "maxButtonSize":I
    .restart local v12    # "row":Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonRow;
    .restart local v13    # "size":I
    :cond_a3
    iget-object v2, v10, Lorg/telegram/tgnet/TLRPC$KeyboardButton;->text:Ljava/lang/String;

    sget-object v3, Lorg/telegram/ui/ActionBar/Theme;->chat_msgBotButtonPaint:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v3

    const/high16 v4, 0x41700000    # 15.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-static {v2, v3, v4, v7}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;IZ)Ljava/lang/CharSequence;

    move-result-object v1

    .restart local v1    # "text":Ljava/lang/CharSequence;
    goto :goto_67

    .line 618
    .end local v1    # "text":Ljava/lang/CharSequence;
    .end local v10    # "button":Lorg/telegram/tgnet/TLRPC$KeyboardButton;
    :cond_b6
    iget v2, p0, Lorg/telegram/messenger/MessageObject;->wantedBotKeyboardWidth:I

    const/high16 v3, 0x41400000    # 12.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    add-int/2addr v3, v11

    mul-int/2addr v3, v13

    const/high16 v4, 0x40a00000    # 5.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    add-int/lit8 v5, v13, -0x1

    mul-int/2addr v4, v5

    add-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lorg/telegram/messenger/MessageObject;->wantedBotKeyboardWidth:I

    .line 600
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1d
.end method

.method public replaceWithLink(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/AbstractMap;)Ljava/lang/CharSequence;
    .registers 15
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "param"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/AbstractMap",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/telegram/tgnet/TLRPC$User;",
            ">;)",
            "Ljava/lang/CharSequence;"
        }
    .end annotation

    .prologue
    .local p3, "uids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local p4, "usersDict":Ljava/util/AbstractMap;, "Ljava/util/AbstractMap<Ljava/lang/Integer;Lorg/telegram/tgnet/TLRPC$User;>;"
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 901
    invoke-static {p1, p2}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v3

    .line 902
    .local v3, "start":I
    if-ltz v3, :cond_7e

    .line 903
    new-instance v2, Landroid/text/SpannableStringBuilder;

    const-string v5, ""

    invoke-direct {v2, v5}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 904
    .local v2, "names":Landroid/text/SpannableStringBuilder;
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_10
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_72

    .line 905
    const/4 v4, 0x0

    .line 906
    .local v4, "user":Lorg/telegram/tgnet/TLRPC$User;
    if-eqz p4, :cond_23

    .line 907
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p4, v5}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "user":Lorg/telegram/tgnet/TLRPC$User;
    check-cast v4, Lorg/telegram/tgnet/TLRPC$User;

    .line 909
    .restart local v4    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_23
    if-nez v4, :cond_33

    .line 910
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v6, v5}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v4

    .line 912
    :cond_33
    if-eqz v4, :cond_6f

    .line 913
    invoke-static {v4}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v1

    .line 914
    .local v1, "name":Ljava/lang/String;
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    .line 915
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    if-eqz v5, :cond_48

    .line 916
    const-string v5, ", "

    invoke-virtual {v2, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 918
    :cond_48
    invoke-virtual {v2, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 919
    new-instance v5, Lorg/telegram/ui/Components/URLSpanNoUnderlineBold;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v4, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/telegram/ui/Components/URLSpanNoUnderlineBold;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v3

    const/16 v7, 0x21

    invoke-virtual {v2, v5, v3, v6, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 904
    .end local v1    # "name":Ljava/lang/String;
    :cond_6f
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 922
    .end local v4    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_72
    new-array v5, v9, [Ljava/lang/String;

    aput-object p2, v5, v8

    new-array v6, v9, [Ljava/lang/CharSequence;

    aput-object v2, v6, v8

    invoke-static {p1, v5, v6}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 924
    .end local v0    # "a":I
    .end local v2    # "names":Landroid/text/SpannableStringBuilder;
    .end local p1    # "source":Ljava/lang/CharSequence;
    :cond_7e
    return-object p1
.end method

.method public replaceWithLink(Ljava/lang/CharSequence;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;)Ljava/lang/CharSequence;
    .registers 13
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "param"    # Ljava/lang/String;
    .param p3, "object"    # Lorg/telegram/tgnet/TLObject;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 928
    invoke-static {p1, p2}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v4

    .line 929
    .local v4, "start":I
    if-ltz v4, :cond_91

    .line 932
    instance-of v5, p3, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v5, :cond_5e

    move-object v5, p3

    .line 933
    check-cast v5, Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v5}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v3

    .line 934
    .local v3, "name":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    check-cast p3, Lorg/telegram/tgnet/TLRPC$User;

    .end local p3    # "object":Lorg/telegram/tgnet/TLObject;
    iget v6, p3, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 946
    .local v2, "id":Ljava/lang/String;
    :goto_2a
    new-instance v0, Landroid/text/SpannableStringBuilder;

    new-array v5, v8, [Ljava/lang/String;

    aput-object p2, v5, v7

    new-array v6, v8, [Ljava/lang/String;

    aput-object v3, v6, v7

    invoke-static {p1, v5, v6}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-direct {v0, v5}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 947
    .local v0, "builder":Landroid/text/SpannableStringBuilder;
    new-instance v5, Lorg/telegram/ui/Components/URLSpanNoUnderlineBold;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/telegram/ui/Components/URLSpanNoUnderlineBold;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v4

    const/16 v7, 0x21

    invoke-virtual {v0, v5, v4, v6, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 950
    .end local v0    # "builder":Landroid/text/SpannableStringBuilder;
    .end local v2    # "id":Ljava/lang/String;
    .end local v3    # "name":Ljava/lang/String;
    :goto_5d
    return-object v0

    .line 935
    .restart local p3    # "object":Lorg/telegram/tgnet/TLObject;
    :cond_5e
    instance-of v5, p3, Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v5, :cond_80

    move-object v5, p3

    .line 936
    check-cast v5, Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v3, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    .line 937
    .restart local v3    # "name":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    check-cast p3, Lorg/telegram/tgnet/TLRPC$Chat;

    .end local p3    # "object":Lorg/telegram/tgnet/TLObject;
    iget v6, p3, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    neg-int v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "id":Ljava/lang/String;
    goto :goto_2a

    .line 938
    .end local v2    # "id":Ljava/lang/String;
    .end local v3    # "name":Ljava/lang/String;
    .restart local p3    # "object":Lorg/telegram/tgnet/TLObject;
    :cond_80
    instance-of v5, p3, Lorg/telegram/tgnet/TLRPC$TL_game;

    if-eqz v5, :cond_8c

    move-object v1, p3

    .line 939
    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_game;

    .line 940
    .local v1, "game":Lorg/telegram/tgnet/TLRPC$TL_game;
    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_game;->title:Ljava/lang/String;

    .line 941
    .restart local v3    # "name":Ljava/lang/String;
    const-string v2, "game"

    .line 942
    .restart local v2    # "id":Ljava/lang/String;
    goto :goto_2a

    .line 943
    .end local v1    # "game":Lorg/telegram/tgnet/TLRPC$TL_game;
    .end local v2    # "id":Ljava/lang/String;
    .end local v3    # "name":Ljava/lang/String;
    :cond_8c
    const-string v3, ""

    .line 944
    .restart local v3    # "name":Ljava/lang/String;
    const-string v2, "0"

    .restart local v2    # "id":Ljava/lang/String;
    goto :goto_2a

    .end local v2    # "id":Ljava/lang/String;
    .end local v3    # "name":Ljava/lang/String;
    :cond_91
    move-object v0, p1

    .line 950
    goto :goto_5d
.end method

.method public setContentIsRead()V
    .registers 3

    .prologue
    .line 1469
    iget-object v0, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->media_unread:Z

    .line 1470
    return-void
.end method

.method public setIsRead()V
    .registers 3

    .prologue
    .line 1450
    iget-object v0, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->unread:Z

    .line 1451
    return-void
.end method

.method public setType()V
    .registers 8

    .prologue
    const/16 v6, 0xa

    const/16 v5, 0x9

    const/4 v4, 0x1

    const/4 v2, -0x1

    const/4 v3, 0x0

    .line 623
    iget v0, p0, Lorg/telegram/messenger/MessageObject;->type:I

    .line 624
    .local v0, "oldType":I
    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_message;

    if-nez v1, :cond_15

    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_messageForwarded_old2;

    if-eqz v1, :cond_f7

    .line 625
    :cond_15
    invoke-virtual {p0}, Lorg/telegram/messenger/MessageObject;->isMediaEmpty()Z

    move-result v1

    if-eqz v1, :cond_39

    .line 626
    iput v3, p0, Lorg/telegram/messenger/MessageObject;->type:I

    .line 627
    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    if-eqz v1, :cond_29

    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_2d

    .line 628
    :cond_29
    const-string v1, "Empty message"

    iput-object v1, p0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    .line 685
    :cond_2d
    :goto_2d
    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_38

    iget v1, p0, Lorg/telegram/messenger/MessageObject;->type:I

    if-eq v0, v1, :cond_38

    .line 686
    invoke-virtual {p0, v3}, Lorg/telegram/messenger/MessageObject;->generateThumbs(Z)V

    .line 688
    :cond_38
    return-void

    .line 630
    :cond_39
    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;

    if-eqz v1, :cond_44

    .line 631
    iput v4, p0, Lorg/telegram/messenger/MessageObject;->type:I

    goto :goto_2d

    .line 632
    :cond_44
    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGeo;

    if-nez v1, :cond_54

    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;

    if-eqz v1, :cond_58

    .line 633
    :cond_54
    const/4 v1, 0x4

    iput v1, p0, Lorg/telegram/messenger/MessageObject;->type:I

    goto :goto_2d

    .line 634
    :cond_58
    invoke-virtual {p0}, Lorg/telegram/messenger/MessageObject;->isVideo()Z

    move-result v1

    if-eqz v1, :cond_62

    .line 635
    const/4 v1, 0x3

    iput v1, p0, Lorg/telegram/messenger/MessageObject;->type:I

    goto :goto_2d

    .line 636
    :cond_62
    invoke-virtual {p0}, Lorg/telegram/messenger/MessageObject;->isVoice()Z

    move-result v1

    if-eqz v1, :cond_6c

    .line 637
    const/4 v1, 0x2

    iput v1, p0, Lorg/telegram/messenger/MessageObject;->type:I

    goto :goto_2d

    .line 638
    :cond_6c
    invoke-virtual {p0}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result v1

    if-eqz v1, :cond_77

    .line 639
    const/16 v1, 0xe

    iput v1, p0, Lorg/telegram/messenger/MessageObject;->type:I

    goto :goto_2d

    .line 640
    :cond_77
    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaContact;

    if-eqz v1, :cond_84

    .line 641
    const/16 v1, 0xc

    iput v1, p0, Lorg/telegram/messenger/MessageObject;->type:I

    goto :goto_2d

    .line 642
    :cond_84
    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaUnsupported;

    if-eqz v1, :cond_8f

    .line 643
    iput v3, p0, Lorg/telegram/messenger/MessageObject;->type:I

    goto :goto_2d

    .line 644
    :cond_8f
    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    if-eqz v1, :cond_df

    .line 645
    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v1, :cond_db

    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    if-eqz v1, :cond_db

    .line 646
    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v1}, Lorg/telegram/messenger/MessageObject;->isGifDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v1

    if-eqz v1, :cond_bb

    .line 647
    const/16 v1, 0x8

    iput v1, p0, Lorg/telegram/messenger/MessageObject;->type:I

    goto/16 :goto_2d

    .line 648
    :cond_bb
    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    const-string v2, "image/webp"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d7

    invoke-virtual {p0}, Lorg/telegram/messenger/MessageObject;->isSticker()Z

    move-result v1

    if-eqz v1, :cond_d7

    .line 649
    const/16 v1, 0xd

    iput v1, p0, Lorg/telegram/messenger/MessageObject;->type:I

    goto/16 :goto_2d

    .line 651
    :cond_d7
    iput v5, p0, Lorg/telegram/messenger/MessageObject;->type:I

    goto/16 :goto_2d

    .line 654
    :cond_db
    iput v5, p0, Lorg/telegram/messenger/MessageObject;->type:I

    goto/16 :goto_2d

    .line 656
    :cond_df
    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGame;

    if-eqz v1, :cond_eb

    .line 657
    iput v3, p0, Lorg/telegram/messenger/MessageObject;->type:I

    goto/16 :goto_2d

    .line 658
    :cond_eb
    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaInvoice;

    if-eqz v1, :cond_2d

    .line 659
    iput v3, p0, Lorg/telegram/messenger/MessageObject;->type:I

    goto/16 :goto_2d

    .line 661
    :cond_f7
    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_messageService;

    if-eqz v1, :cond_2d

    .line 662
    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_messageActionLoginUnknownLocation;

    if-eqz v1, :cond_109

    .line 663
    iput v3, p0, Lorg/telegram/messenger/MessageObject;->type:I

    goto/16 :goto_2d

    .line 664
    :cond_109
    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatEditPhoto;

    if-nez v1, :cond_119

    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_messageActionUserUpdatedPhoto;

    if-eqz v1, :cond_121

    .line 665
    :cond_119
    iput v4, p0, Lorg/telegram/messenger/MessageObject;->contentType:I

    .line 666
    const/16 v1, 0xb

    iput v1, p0, Lorg/telegram/messenger/MessageObject;->type:I

    goto/16 :goto_2d

    .line 667
    :cond_121
    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_messageEncryptedAction;

    if-eqz v1, :cond_149

    .line 668
    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageAction;->encryptedAction:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionScreenshotMessages;

    if-nez v1, :cond_13d

    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageAction;->encryptedAction:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionSetMessageTTL;

    if-eqz v1, :cond_143

    .line 669
    :cond_13d
    iput v4, p0, Lorg/telegram/messenger/MessageObject;->contentType:I

    .line 670
    iput v6, p0, Lorg/telegram/messenger/MessageObject;->type:I

    goto/16 :goto_2d

    .line 672
    :cond_143
    iput v2, p0, Lorg/telegram/messenger/MessageObject;->contentType:I

    .line 673
    iput v2, p0, Lorg/telegram/messenger/MessageObject;->type:I

    goto/16 :goto_2d

    .line 675
    :cond_149
    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_messageActionHistoryClear;

    if-eqz v1, :cond_157

    .line 676
    iput v2, p0, Lorg/telegram/messenger/MessageObject;->contentType:I

    .line 677
    iput v2, p0, Lorg/telegram/messenger/MessageObject;->type:I

    goto/16 :goto_2d

    .line 678
    :cond_157
    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_messageActionPhoneCall;

    if-eqz v1, :cond_165

    .line 679
    const/16 v1, 0x10

    iput v1, p0, Lorg/telegram/messenger/MessageObject;->type:I

    goto/16 :goto_2d

    .line 681
    :cond_165
    iput v4, p0, Lorg/telegram/messenger/MessageObject;->contentType:I

    .line 682
    iput v6, p0, Lorg/telegram/messenger/MessageObject;->type:I

    goto/16 :goto_2d
.end method
