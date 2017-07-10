.class public Lorg/telegram/ui/Cells/ProfileSearchCell;
.super Lorg/telegram/ui/Cells/BaseCell;
.source "ProfileSearchCell.java"


# instance fields
.field private avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

.field private avatarImage:Lorg/telegram/messenger/ImageReceiver;

.field private chat:Lorg/telegram/tgnet/TLRPC$Chat;

.field private countLayout:Landroid/text/StaticLayout;

.field private countLeft:I

.field private countTop:I

.field private countWidth:I

.field private currentName:Ljava/lang/CharSequence;

.field private dialog_id:J

.field private drawCheck:Z

.field private drawCount:Z

.field private drawNameBot:Z

.field private drawNameBroadcast:Z

.field private drawNameGroup:Z

.field private drawNameLock:Z

.field private encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

.field private lastAvatar:Lorg/telegram/tgnet/TLRPC$FileLocation;

.field private lastName:Ljava/lang/String;

.field private lastStatus:I

.field private lastUnreadCount:I

.field private nameLayout:Landroid/text/StaticLayout;

.field private nameLeft:I

.field private nameLockLeft:I

.field private nameLockTop:I

.field private nameTop:I

.field private onlineLayout:Landroid/text/StaticLayout;

.field private onlineLeft:I

.field private paddingRight:I

.field private rect:Landroid/graphics/RectF;

.field private subLabel:Ljava/lang/CharSequence;

.field public useSeparator:Z

.field private user:Lorg/telegram/tgnet/TLRPC$User;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 78
    invoke-direct {p0, p1}, Lorg/telegram/ui/Cells/BaseCell;-><init>(Landroid/content/Context;)V

    .line 41
    iput-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    .line 42
    iput-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    .line 43
    iput-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    .line 46
    iput-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->lastName:Ljava/lang/String;

    .line 47
    iput v1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->lastStatus:I

    .line 48
    iput-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->lastAvatar:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 50
    iput-boolean v1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->useSeparator:Z

    .line 64
    const/high16 v0, 0x41c80000    # 25.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->countTop:I

    .line 75
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->rect:Landroid/graphics/RectF;

    .line 80
    new-instance v0, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/ImageReceiver;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    .line 81
    iget-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    const/high16 v1, 0x41d00000    # 26.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    .line 82
    new-instance v0, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v0}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    .line 83
    return-void
.end method


# virtual methods
.method public buildLayout()V
    .registers 29

    .prologue
    .line 136
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->drawNameBroadcast:Z

    .line 137
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->drawNameLock:Z

    .line 138
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->drawNameGroup:Z

    .line 139
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->drawCheck:Z

    .line 140
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->drawNameBot:Z

    .line 142
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    if-eqz v2, :cond_303

    .line 143
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->drawNameLock:Z

    .line 144
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->id:I

    int-to-long v12, v2

    const/16 v2, 0x20

    shl-long/2addr v12, v2

    move-object/from16 v0, p0

    iput-wide v12, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->dialog_id:J

    .line 145
    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v2, :cond_2de

    .line 146
    sget v2, Lorg/telegram/messenger/AndroidUtilities;->leftBaseline:I

    int-to-float v2, v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLockLeft:I

    .line 147
    sget v2, Lorg/telegram/messenger/AndroidUtilities;->leftBaseline:I

    add-int/lit8 v2, v2, 0x4

    int-to-float v2, v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->dialogs_lockDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    add-int/2addr v2, v4

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLeft:I

    .line 152
    :goto_55
    const/high16 v2, 0x41840000    # 16.5f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLockTop:I

    .line 201
    :goto_5f
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->currentName:Ljava/lang/CharSequence;

    if-eqz v2, :cond_476

    .line 202
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->currentName:Ljava/lang/CharSequence;

    move-object/from16 v20, v0

    .line 212
    .local v20, "nameString":Ljava/lang/CharSequence;
    :goto_6b
    invoke-interface/range {v20 .. v20}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_ac

    .line 213
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v2, :cond_4a1

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    if-eqz v2, :cond_4a1

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_4a1

    .line 214
    invoke-static {}, Lorg/telegram/PhoneFormat/PhoneFormat;->getInstance()Lorg/telegram/PhoneFormat/PhoneFormat;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "+"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/telegram/PhoneFormat/PhoneFormat;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 219
    :cond_ac
    :goto_ac
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    if-eqz v2, :cond_4ac

    .line 220
    sget-object v17, Lorg/telegram/ui/ActionBar/Theme;->dialogs_nameEncryptedPaint:Landroid/text/TextPaint;

    .line 227
    .local v17, "currentNamePaint":Landroid/text/TextPaint;
    :goto_b4
    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v2, :cond_4b0

    .line 228
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/ProfileSearchCell;->getMeasuredWidth()I

    move-result v2

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLeft:I

    sub-int/2addr v2, v4

    const/high16 v4, 0x41600000    # 14.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int v7, v2, v4

    .local v7, "nameWidth":I
    move/from16 v24, v7

    .line 232
    .local v24, "onlineWidth":I
    :goto_cb
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->drawNameLock:Z

    if-eqz v2, :cond_4c6

    .line 233
    const/high16 v2, 0x40c00000    # 6.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->dialogs_lockDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    add-int/2addr v2, v4

    sub-int/2addr v7, v2

    .line 242
    :cond_df
    :goto_df
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->paddingRight:I

    sub-int v22, v7, v2

    .line 243
    .end local v7    # "nameWidth":I
    .local v22, "nameWidth":I
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->paddingRight:I

    sub-int v24, v24, v2

    .line 245
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->drawCount:Z

    if-eqz v2, :cond_52c

    .line 246
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController;->dialogs_dict:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->dialog_id:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    .line 247
    .local v18, "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    if-eqz v18, :cond_51e

    move-object/from16 v0, v18

    iget v2, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->unread_count:I

    if-eqz v2, :cond_51e

    .line 248
    move-object/from16 v0, v18

    iget v2, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->unread_count:I

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->lastUnreadCount:I

    .line 249
    const-string v2, "%d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    move-object/from16 v0, v18

    iget v8, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->unread_count:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v4, v6

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 250
    .local v3, "countString":Ljava/lang/String;
    const/high16 v2, 0x41400000    # 12.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->dialogs_countTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v4, v3}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v4

    float-to-double v12, v4

    invoke-static {v12, v13}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v12

    double-to-int v4, v12

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->countWidth:I

    .line 251
    new-instance v2, Landroid/text/StaticLayout;

    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->dialogs_countTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget v5, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->countWidth:I

    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v2 .. v9}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->countLayout:Landroid/text/StaticLayout;

    .line 252
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->countWidth:I

    const/high16 v4, 0x41900000    # 18.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    add-int v25, v2, v4

    .line 253
    .local v25, "w":I
    sub-int v7, v22, v25

    .line 254
    .end local v22    # "nameWidth":I
    .restart local v7    # "nameWidth":I
    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v2, :cond_508

    .line 255
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/ProfileSearchCell;->getMeasuredWidth()I

    move-result v2

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->countWidth:I

    sub-int/2addr v2, v4

    const/high16 v4, 0x41980000    # 19.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int/2addr v2, v4

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->countLeft:I

    .line 269
    .end local v3    # "countString":Ljava/lang/String;
    .end local v18    # "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    .end local v25    # "w":I
    :goto_17e
    const/high16 v2, 0x41400000    # 12.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int v2, v7, v2

    int-to-float v2, v2

    sget-object v4, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-static {v0, v1, v2, v4}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v5

    .line 270
    .local v5, "nameStringFinal":Ljava/lang/CharSequence;
    new-instance v4, Landroid/text/StaticLayout;

    sget-object v8, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v6, v17

    invoke-direct/range {v4 .. v11}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLayout:Landroid/text/StaticLayout;

    .line 272
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v2, :cond_1ae

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->subLabel:Ljava/lang/CharSequence;

    if-eqz v2, :cond_59d

    .line 273
    :cond_1ae
    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v2, :cond_537

    .line 274
    sget v2, Lorg/telegram/messenger/AndroidUtilities;->leftBaseline:I

    int-to-float v2, v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->onlineLeft:I

    .line 279
    :goto_1bd
    const-string v23, ""

    .line 280
    .local v23, "onlineString":Ljava/lang/CharSequence;
    sget-object v10, Lorg/telegram/ui/ActionBar/Theme;->dialogs_offlinePaint:Landroid/text/TextPaint;

    .line 282
    .local v10, "currentOnlinePaint":Landroid/text/TextPaint;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->subLabel:Ljava/lang/CharSequence;

    if-eqz v2, :cond_543

    .line 283
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->subLabel:Ljava/lang/CharSequence;

    move-object/from16 v23, v0

    .line 296
    :cond_1cd
    :goto_1cd
    const/high16 v2, 0x41400000    # 12.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int v2, v24, v2

    int-to-float v2, v2

    sget-object v4, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, v23

    invoke-static {v0, v10, v2, v4}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v9

    .line 297
    .local v9, "onlineStringFinal":Ljava/lang/CharSequence;
    new-instance v8, Landroid/text/StaticLayout;

    sget-object v12, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v14, 0x0

    const/4 v15, 0x0

    move/from16 v11, v24

    invoke-direct/range {v8 .. v15}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    move-object/from16 v0, p0

    iput-object v8, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->onlineLayout:Landroid/text/StaticLayout;

    .line 298
    const/high16 v2, 0x41500000    # 13.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameTop:I

    .line 299
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->subLabel:Ljava/lang/CharSequence;

    if-eqz v2, :cond_214

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v2, :cond_214

    .line 300
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLockTop:I

    const/high16 v4, 0x41400000    # 12.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int/2addr v2, v4

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLockTop:I

    .line 308
    .end local v9    # "onlineStringFinal":Ljava/lang/CharSequence;
    .end local v10    # "currentOnlinePaint":Landroid/text/TextPaint;
    .end local v23    # "onlineString":Ljava/lang/CharSequence;
    :cond_214
    :goto_214
    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v2, :cond_5b2

    .line 309
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_5ae

    const/high16 v2, 0x41500000    # 13.0f

    :goto_220
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v16

    .line 314
    .local v16, "avatarLeft":I
    :goto_224
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    const/high16 v4, 0x41200000    # 10.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    const/high16 v6, 0x42500000    # 52.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    const/high16 v8, 0x42500000    # 52.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    move/from16 v0, v16

    invoke-virtual {v2, v0, v4, v6, v8}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(IIII)V

    .line 318
    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_5c9

    .line 319
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v2

    if-lez v2, :cond_27c

    .line 320
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLayout:Landroid/text/StaticLayout;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/text/StaticLayout;->getLineLeft(I)F

    move-result v19

    .line 321
    .local v19, "left":F
    const/4 v2, 0x0

    cmpl-float v2, v19, v2

    if-nez v2, :cond_27c

    .line 322
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLayout:Landroid/text/StaticLayout;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v2

    float-to-double v12, v2

    invoke-static {v12, v13}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v26

    .line 323
    .local v26, "widthpx":D
    int-to-double v12, v7

    cmpg-double v2, v26, v12

    if-gez v2, :cond_27c

    .line 324
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLeft:I

    int-to-double v12, v2

    int-to-double v14, v7

    sub-double v14, v14, v26

    add-double/2addr v12, v14

    double-to-int v2, v12

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLeft:I

    .line 328
    .end local v19    # "left":F
    .end local v26    # "widthpx":D
    :cond_27c
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->onlineLayout:Landroid/text/StaticLayout;

    if-eqz v2, :cond_2bf

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->onlineLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v2

    if-lez v2, :cond_2bf

    .line 329
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->onlineLayout:Landroid/text/StaticLayout;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/text/StaticLayout;->getLineLeft(I)F

    move-result v19

    .line 330
    .restart local v19    # "left":F
    const/4 v2, 0x0

    cmpl-float v2, v19, v2

    if-nez v2, :cond_2bf

    .line 331
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->onlineLayout:Landroid/text/StaticLayout;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v2

    float-to-double v12, v2

    invoke-static {v12, v13}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v26

    .line 332
    .restart local v26    # "widthpx":D
    move/from16 v0, v24

    int-to-double v12, v0

    cmpg-double v2, v26, v12

    if-gez v2, :cond_2bf

    .line 333
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->onlineLeft:I

    int-to-double v12, v2

    move/from16 v0, v24

    int-to-double v14, v0

    sub-double v14, v14, v26

    add-double/2addr v12, v14

    double-to-int v2, v12

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->onlineLeft:I

    .line 358
    .end local v19    # "left":F
    .end local v26    # "widthpx":D
    :cond_2bf
    :goto_2bf
    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_2dd

    .line 359
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLeft:I

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->paddingRight:I

    add-int/2addr v2, v4

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLeft:I

    .line 360
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->onlineLeft:I

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->paddingRight:I

    add-int/2addr v2, v4

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->onlineLeft:I

    .line 362
    :cond_2dd
    return-void

    .line 149
    .end local v5    # "nameStringFinal":Ljava/lang/CharSequence;
    .end local v7    # "nameWidth":I
    .end local v16    # "avatarLeft":I
    .end local v17    # "currentNamePaint":Landroid/text/TextPaint;
    .end local v20    # "nameString":Ljava/lang/CharSequence;
    .end local v24    # "onlineWidth":I
    :cond_2de
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/ProfileSearchCell;->getMeasuredWidth()I

    move-result v2

    sget v4, Lorg/telegram/messenger/AndroidUtilities;->leftBaseline:I

    add-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int/2addr v2, v4

    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->dialogs_lockDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    sub-int/2addr v2, v4

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLockLeft:I

    .line 150
    const/high16 v2, 0x41300000    # 11.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLeft:I

    goto/16 :goto_55

    .line 154
    :cond_303
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v2, :cond_3dc

    .line 155
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    if-gez v2, :cond_363

    .line 156
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->makeBroadcastId(I)J

    move-result-wide v12

    move-object/from16 v0, p0

    iput-wide v12, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->dialog_id:J

    .line 157
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->drawNameBroadcast:Z

    .line 158
    const/high16 v2, 0x41e40000    # 28.5f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLockTop:I

    .line 169
    :goto_32e
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->verified:Z

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->drawCheck:Z

    .line 170
    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v2, :cond_3a8

    .line 171
    sget v2, Lorg/telegram/messenger/AndroidUtilities;->leftBaseline:I

    int-to-float v2, v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLockLeft:I

    .line 172
    sget v2, Lorg/telegram/messenger/AndroidUtilities;->leftBaseline:I

    add-int/lit8 v2, v2, 0x4

    int-to-float v2, v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->drawNameGroup:Z

    if-eqz v2, :cond_3a1

    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_groupDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    :goto_35c
    add-int/2addr v2, v4

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLeft:I

    goto/16 :goto_5f

    .line 160
    :cond_363
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    neg-int v2, v2

    int-to-long v12, v2

    move-object/from16 v0, p0

    iput-wide v12, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->dialog_id:J

    .line 161
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v2}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v2

    if-eqz v2, :cond_391

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez v2, :cond_391

    .line 162
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->drawNameBroadcast:Z

    .line 163
    const/high16 v2, 0x41e40000    # 28.5f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLockTop:I

    goto :goto_32e

    .line 165
    :cond_391
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->drawNameGroup:Z

    .line 166
    const/high16 v2, 0x41f00000    # 30.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLockTop:I

    goto :goto_32e

    .line 172
    :cond_3a1
    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_broadcastDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    goto :goto_35c

    .line 174
    :cond_3a8
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/ProfileSearchCell;->getMeasuredWidth()I

    move-result v2

    sget v4, Lorg/telegram/messenger/AndroidUtilities;->leftBaseline:I

    add-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int v4, v2, v4

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->drawNameGroup:Z

    if-eqz v2, :cond_3d5

    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_groupDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    :goto_3c3
    sub-int v2, v4, v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLockLeft:I

    .line 175
    const/high16 v2, 0x41300000    # 11.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLeft:I

    goto/16 :goto_5f

    .line 174
    :cond_3d5
    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_broadcastDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    goto :goto_3c3

    .line 178
    :cond_3dc
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$User;->id:I

    int-to-long v12, v2

    move-object/from16 v0, p0

    iput-wide v12, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->dialog_id:J

    .line 179
    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v2, :cond_43c

    .line 180
    sget v2, Lorg/telegram/messenger/AndroidUtilities;->leftBaseline:I

    int-to-float v2, v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLeft:I

    .line 184
    :goto_3f6
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-eqz v2, :cond_46b

    .line 185
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->drawNameBot:Z

    .line 186
    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v2, :cond_447

    .line 187
    sget v2, Lorg/telegram/messenger/AndroidUtilities;->leftBaseline:I

    int-to-float v2, v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLockLeft:I

    .line 188
    sget v2, Lorg/telegram/messenger/AndroidUtilities;->leftBaseline:I

    add-int/lit8 v2, v2, 0x4

    int-to-float v2, v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->dialogs_botDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    add-int/2addr v2, v4

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLeft:I

    .line 193
    :goto_426
    const/high16 v2, 0x41840000    # 16.5f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLockTop:I

    .line 197
    :goto_430
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$User;->verified:Z

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->drawCheck:Z

    goto/16 :goto_5f

    .line 182
    :cond_43c
    const/high16 v2, 0x41300000    # 11.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLeft:I

    goto :goto_3f6

    .line 190
    :cond_447
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/ProfileSearchCell;->getMeasuredWidth()I

    move-result v2

    sget v4, Lorg/telegram/messenger/AndroidUtilities;->leftBaseline:I

    add-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int/2addr v2, v4

    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->dialogs_botDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    sub-int/2addr v2, v4

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLockLeft:I

    .line 191
    const/high16 v2, 0x41300000    # 11.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLeft:I

    goto :goto_426

    .line 195
    :cond_46b
    const/high16 v2, 0x41880000    # 17.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLockTop:I

    goto :goto_430

    .line 204
    :cond_476
    const-string v21, ""

    .line 205
    .local v21, "nameString2":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v2, :cond_492

    .line 206
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v0, v2, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v21, v0

    .line 210
    :cond_486
    :goto_486
    const/16 v2, 0xa

    const/16 v4, 0x20

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v20

    .restart local v20    # "nameString":Ljava/lang/CharSequence;
    goto/16 :goto_6b

    .line 207
    .end local v20    # "nameString":Ljava/lang/CharSequence;
    :cond_492
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v2, :cond_486

    .line 208
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v2}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v21

    goto :goto_486

    .line 216
    .end local v21    # "nameString2":Ljava/lang/String;
    .restart local v20    # "nameString":Ljava/lang/CharSequence;
    :cond_4a1
    const-string v2, "HiddenName"

    const v4, 0x7f07027c

    invoke-static {v2, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v20

    goto/16 :goto_ac

    .line 222
    :cond_4ac
    sget-object v17, Lorg/telegram/ui/ActionBar/Theme;->dialogs_namePaint:Landroid/text/TextPaint;

    .restart local v17    # "currentNamePaint":Landroid/text/TextPaint;
    goto/16 :goto_b4

    .line 230
    :cond_4b0
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/ProfileSearchCell;->getMeasuredWidth()I

    move-result v2

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLeft:I

    sub-int/2addr v2, v4

    sget v4, Lorg/telegram/messenger/AndroidUtilities;->leftBaseline:I

    int-to-float v4, v4

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int v7, v2, v4

    .restart local v7    # "nameWidth":I
    move/from16 v24, v7

    .restart local v24    # "onlineWidth":I
    goto/16 :goto_cb

    .line 234
    :cond_4c6
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->drawNameBroadcast:Z

    if-eqz v2, :cond_4dc

    .line 235
    const/high16 v2, 0x40c00000    # 6.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->dialogs_broadcastDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    add-int/2addr v2, v4

    sub-int/2addr v7, v2

    goto/16 :goto_df

    .line 236
    :cond_4dc
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->drawNameGroup:Z

    if-eqz v2, :cond_4f2

    .line 237
    const/high16 v2, 0x40c00000    # 6.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->dialogs_groupDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    add-int/2addr v2, v4

    sub-int/2addr v7, v2

    goto/16 :goto_df

    .line 238
    :cond_4f2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->drawNameBot:Z

    if-eqz v2, :cond_df

    .line 239
    const/high16 v2, 0x40c00000    # 6.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->dialogs_botDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    add-int/2addr v2, v4

    sub-int/2addr v7, v2

    goto/16 :goto_df

    .line 257
    .restart local v3    # "countString":Ljava/lang/String;
    .restart local v18    # "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    .restart local v25    # "w":I
    :cond_508
    const/high16 v2, 0x41980000    # 19.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->countLeft:I

    .line 258
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLeft:I

    add-int v2, v2, v25

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLeft:I

    goto/16 :goto_17e

    .line 261
    .end local v3    # "countString":Ljava/lang/String;
    .end local v7    # "nameWidth":I
    .end local v25    # "w":I
    .restart local v22    # "nameWidth":I
    :cond_51e
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->lastUnreadCount:I

    .line 262
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->countLayout:Landroid/text/StaticLayout;

    .end local v18    # "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    :goto_528
    move/from16 v7, v22

    .end local v22    # "nameWidth":I
    .restart local v7    # "nameWidth":I
    goto/16 :goto_17e

    .line 265
    .end local v7    # "nameWidth":I
    .restart local v22    # "nameWidth":I
    :cond_52c
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->lastUnreadCount:I

    .line 266
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->countLayout:Landroid/text/StaticLayout;

    goto :goto_528

    .line 276
    .end local v22    # "nameWidth":I
    .restart local v5    # "nameStringFinal":Ljava/lang/CharSequence;
    .restart local v7    # "nameWidth":I
    :cond_537
    const/high16 v2, 0x41300000    # 11.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->onlineLeft:I

    goto/16 :goto_1bd

    .line 284
    .restart local v10    # "currentOnlinePaint":Landroid/text/TextPaint;
    .restart local v23    # "onlineString":Ljava/lang/CharSequence;
    :cond_543
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v2, :cond_1cd

    .line 285
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-eqz v2, :cond_55c

    .line 286
    const-string v2, "Bot"

    const v4, 0x7f0700d9

    invoke-static {v2, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v23

    goto/16 :goto_1cd

    .line 288
    :cond_55c
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->formatUserStatus(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v23

    .line 289
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v2, :cond_1cd

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v4

    if-eq v2, v4, :cond_590

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    if-eqz v2, :cond_1cd

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v4

    if-le v2, v4, :cond_1cd

    .line 290
    :cond_590
    sget-object v10, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlinePaint:Landroid/text/TextPaint;

    .line 291
    const-string v2, "Online"

    const v4, 0x7f0703d6

    invoke-static {v2, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v23

    goto/16 :goto_1cd

    .line 303
    .end local v10    # "currentOnlinePaint":Landroid/text/TextPaint;
    .end local v23    # "onlineString":Ljava/lang/CharSequence;
    :cond_59d
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->onlineLayout:Landroid/text/StaticLayout;

    .line 304
    const/high16 v2, 0x41c80000    # 25.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameTop:I

    goto/16 :goto_214

    .line 309
    :cond_5ae
    const/high16 v2, 0x41100000    # 9.0f

    goto/16 :goto_220

    .line 311
    :cond_5b2
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/ProfileSearchCell;->getMeasuredWidth()I

    move-result v4

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_5c6

    const/high16 v2, 0x42820000    # 65.0f

    :goto_5be
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int v16, v4, v2

    .restart local v16    # "avatarLeft":I
    goto/16 :goto_224

    .end local v16    # "avatarLeft":I
    :cond_5c6
    const/high16 v2, 0x42740000    # 61.0f

    goto :goto_5be

    .line 338
    .restart local v16    # "avatarLeft":I
    :cond_5c9
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v2

    if-lez v2, :cond_602

    .line 339
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLayout:Landroid/text/StaticLayout;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/text/StaticLayout;->getLineRight(I)F

    move-result v19

    .line 340
    .restart local v19    # "left":F
    int-to-float v2, v7

    cmpl-float v2, v19, v2

    if-nez v2, :cond_602

    .line 341
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLayout:Landroid/text/StaticLayout;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v2

    float-to-double v12, v2

    invoke-static {v12, v13}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v26

    .line 342
    .restart local v26    # "widthpx":D
    int-to-double v12, v7

    cmpg-double v2, v26, v12

    if-gez v2, :cond_602

    .line 343
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLeft:I

    int-to-double v12, v2

    int-to-double v14, v7

    sub-double v14, v14, v26

    sub-double/2addr v12, v14

    double-to-int v2, v12

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLeft:I

    .line 347
    .end local v19    # "left":F
    .end local v26    # "widthpx":D
    :cond_602
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->onlineLayout:Landroid/text/StaticLayout;

    if-eqz v2, :cond_2bf

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->onlineLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v2

    if-lez v2, :cond_2bf

    .line 348
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->onlineLayout:Landroid/text/StaticLayout;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/text/StaticLayout;->getLineRight(I)F

    move-result v19

    .line 349
    .restart local v19    # "left":F
    move/from16 v0, v24

    int-to-float v2, v0

    cmpl-float v2, v19, v2

    if-nez v2, :cond_2bf

    .line 350
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->onlineLayout:Landroid/text/StaticLayout;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v2

    float-to-double v12, v2

    invoke-static {v12, v13}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v26

    .line 351
    .restart local v26    # "widthpx":D
    move/from16 v0, v24

    int-to-double v12, v0

    cmpg-double v2, v26, v12

    if-gez v2, :cond_2bf

    .line 352
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->onlineLeft:I

    int-to-double v12, v2

    move/from16 v0, v24

    int-to-double v14, v0

    sub-double v14, v14, v26

    sub-double/2addr v12, v14

    double-to-int v2, v12

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->onlineLeft:I

    goto/16 :goto_2bf
.end method

.method protected onAttachedToWindow()V
    .registers 2

    .prologue
    .line 112
    invoke-super {p0}, Lorg/telegram/ui/Cells/BaseCell;->onAttachedToWindow()V

    .line 113
    iget-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onAttachedToWindow()Z

    .line 114
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .prologue
    .line 106
    invoke-super {p0}, Lorg/telegram/ui/Cells/BaseCell;->onDetachedFromWindow()V

    .line 107
    iget-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onDetachedFromWindow()V

    .line 108
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v8, 0x41380000    # 11.5f

    const/high16 v7, 0x40800000    # 4.0f

    .line 444
    iget-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    if-nez v0, :cond_11

    iget-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-nez v0, :cond_11

    iget-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    if-nez v0, :cond_11

    .line 507
    :goto_10
    return-void

    .line 448
    :cond_11
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->useSeparator:Z

    if-eqz v0, :cond_3b

    .line 449
    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_117

    .line 450
    const/4 v1, 0x0

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/ProfileSearchCell;->getMeasuredHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v2, v0

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/ProfileSearchCell;->getMeasuredWidth()I

    move-result v0

    sget v3, Lorg/telegram/messenger/AndroidUtilities;->leftBaseline:I

    int-to-float v3, v3

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int/2addr v0, v3

    int-to-float v3, v0

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/ProfileSearchCell;->getMeasuredHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v4, v0

    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 456
    :cond_3b
    :goto_3b
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->drawNameLock:Z

    if-eqz v0, :cond_13a

    .line 457
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_lockDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLockLeft:I

    iget v2, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLockTop:I

    invoke-virtual {p0, v0, v1, v2}, Lorg/telegram/ui/Cells/ProfileSearchCell;->setDrawableBounds(Landroid/graphics/drawable/Drawable;II)V

    .line 458
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_lockDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 470
    :cond_4d
    :goto_4d
    iget-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_94

    .line 471
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 472
    iget v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLeft:I

    int-to-float v0, v0

    iget v1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameTop:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 473
    iget-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 474
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 475
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->drawCheck:Z

    if-eqz v0, :cond_94

    .line 477
    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_176

    .line 478
    iget v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLeft:I

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int/2addr v0, v1

    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->dialogs_checkDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    sub-int v6, v0, v1

    .line 482
    .local v6, "x":I
    :goto_7c
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_verifiedDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLockTop:I

    invoke-virtual {p0, v0, v6, v1}, Lorg/telegram/ui/Cells/ProfileSearchCell;->setDrawableBounds(Landroid/graphics/drawable/Drawable;II)V

    .line 483
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_verifiedCheckDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLockTop:I

    invoke-virtual {p0, v0, v6, v1}, Lorg/telegram/ui/Cells/ProfileSearchCell;->setDrawableBounds(Landroid/graphics/drawable/Drawable;II)V

    .line 484
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_verifiedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 485
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_verifiedCheckDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 489
    .end local v6    # "x":I
    :cond_94
    iget-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->onlineLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_b0

    .line 490
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 491
    iget v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->onlineLeft:I

    int-to-float v0, v0

    const/high16 v1, 0x42200000    # 40.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 492
    iget-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->onlineLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 493
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 496
    :cond_b0
    iget-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->countLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_110

    .line 497
    iget v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->countLeft:I

    const/high16 v1, 0x40b00000    # 5.5f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int v6, v0, v1

    .line 498
    .restart local v6    # "x":I
    iget-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->rect:Landroid/graphics/RectF;

    int-to-float v1, v6

    iget v2, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->countTop:I

    int-to-float v2, v2

    iget v3, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->countWidth:I

    add-int/2addr v3, v6

    const/high16 v4, 0x41300000    # 11.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->countTop:I

    const/high16 v5, 0x41b80000    # 23.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 499
    iget-object v1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->rect:Landroid/graphics/RectF;

    sget v0, Lorg/telegram/messenger/AndroidUtilities;->density:F

    mul-float v2, v8, v0

    sget v0, Lorg/telegram/messenger/AndroidUtilities;->density:F

    mul-float v3, v8, v0

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v4, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->dialog_id:J

    invoke-virtual {v0, v4, v5}, Lorg/telegram/messenger/MessagesController;->isDialogMuted(J)Z

    move-result v0

    if-eqz v0, :cond_189

    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_countGrayPaint:Landroid/graphics/Paint;

    :goto_f4
    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 500
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 501
    iget v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->countLeft:I

    int-to-float v0, v0

    iget v1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->countTop:I

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 502
    iget-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->countLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 503
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 506
    .end local v6    # "x":I
    :cond_110
    iget-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    goto/16 :goto_10

    .line 452
    :cond_117
    sget v0, Lorg/telegram/messenger/AndroidUtilities;->leftBaseline:I

    int-to-float v0, v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v1, v0

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/ProfileSearchCell;->getMeasuredHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v2, v0

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/ProfileSearchCell;->getMeasuredWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/ProfileSearchCell;->getMeasuredHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v4, v0

    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_3b

    .line 459
    :cond_13a
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->drawNameGroup:Z

    if-eqz v0, :cond_14e

    .line 460
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_groupDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLockLeft:I

    iget v2, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLockTop:I

    invoke-virtual {p0, v0, v1, v2}, Lorg/telegram/ui/Cells/ProfileSearchCell;->setDrawableBounds(Landroid/graphics/drawable/Drawable;II)V

    .line 461
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_groupDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_4d

    .line 462
    :cond_14e
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->drawNameBroadcast:Z

    if-eqz v0, :cond_162

    .line 463
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_broadcastDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLockLeft:I

    iget v2, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLockTop:I

    invoke-virtual {p0, v0, v1, v2}, Lorg/telegram/ui/Cells/ProfileSearchCell;->setDrawableBounds(Landroid/graphics/drawable/Drawable;II)V

    .line 464
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_broadcastDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_4d

    .line 465
    :cond_162
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->drawNameBot:Z

    if-eqz v0, :cond_4d

    .line 466
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_botDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLockLeft:I

    iget v2, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLockTop:I

    invoke-virtual {p0, v0, v1, v2}, Lorg/telegram/ui/Cells/ProfileSearchCell;->setDrawableBounds(Landroid/graphics/drawable/Drawable;II)V

    .line 467
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_botDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_4d

    .line 480
    :cond_176
    iget v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLeft:I

    iget-object v1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLayout:Landroid/text/StaticLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    add-int v6, v0, v1

    .restart local v6    # "x":I
    goto/16 :goto_7c

    .line 499
    :cond_189
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_countPaint:Landroid/graphics/Paint;

    goto/16 :goto_f4
.end method

.method protected onLayout(ZIIII)V
    .registers 7
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 123
    iget-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    if-nez v0, :cond_10

    iget-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-nez v0, :cond_10

    iget-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    if-nez v0, :cond_10

    .line 124
    invoke-super/range {p0 .. p5}, Lorg/telegram/ui/Cells/BaseCell;->onLayout(ZIIII)V

    .line 130
    :cond_f
    :goto_f
    return-void

    .line 127
    :cond_10
    if-eqz p1, :cond_f

    .line 128
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/ProfileSearchCell;->buildLayout()V

    goto :goto_f
.end method

.method protected onMeasure(II)V
    .registers 5
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 118
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    const/high16 v1, 0x42900000    # 72.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Cells/ProfileSearchCell;->setMeasuredDimension(II)V

    .line 119
    return-void
.end method

.method public setData(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$EncryptedChat;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V
    .registers 8
    .param p1, "object"    # Lorg/telegram/tgnet/TLObject;
    .param p2, "ec"    # Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    .param p3, "n"    # Ljava/lang/CharSequence;
    .param p4, "s"    # Ljava/lang/CharSequence;
    .param p5, "needCount"    # Z

    .prologue
    const/4 v1, 0x0

    .line 86
    iput-object p3, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->currentName:Ljava/lang/CharSequence;

    .line 87
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v0, :cond_18

    .line 88
    check-cast p1, Lorg/telegram/tgnet/TLRPC$User;

    .end local p1    # "object":Lorg/telegram/tgnet/TLObject;
    iput-object p1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    .line 89
    iput-object v1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    .line 94
    :cond_d
    :goto_d
    iput-object p2, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    .line 95
    iput-object p4, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->subLabel:Ljava/lang/CharSequence;

    .line 96
    iput-boolean p5, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->drawCount:Z

    .line 97
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Cells/ProfileSearchCell;->update(I)V

    .line 98
    return-void

    .line 90
    .restart local p1    # "object":Lorg/telegram/tgnet/TLObject;
    :cond_18
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v0, :cond_d

    .line 91
    check-cast p1, Lorg/telegram/tgnet/TLRPC$Chat;

    .end local p1    # "object":Lorg/telegram/tgnet/TLObject;
    iput-object p1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    .line 92
    iput-object v1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    goto :goto_d
.end method

.method public setPaddingRight(I)V
    .registers 2
    .param p1, "padding"    # I

    .prologue
    .line 101
    iput p1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->paddingRight:I

    .line 102
    return-void
.end method

.method public update(I)V
    .registers 14
    .param p1, "mask"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 365
    const/4 v1, 0x0

    .line 366
    .local v1, "photo":Lorg/telegram/tgnet/TLRPC$FileLocation;
    iget-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v0, :cond_ce

    .line 367
    iget-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    if-eqz v0, :cond_13

    .line 368
    iget-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 370
    :cond_13
    iget-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    iget-object v2, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$User;)V

    .line 380
    :goto_1a
    if-eqz p1, :cond_f3

    .line 381
    const/4 v6, 0x0

    .line 382
    .local v6, "continueUpdate":Z
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_25

    iget-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    if-nez v0, :cond_2d

    :cond_25
    and-int/lit8 v0, p1, 0x8

    if-eqz v0, :cond_52

    iget-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v0, :cond_52

    .line 383
    :cond_2d
    iget-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->lastAvatar:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v0, :cond_33

    if-eqz v1, :cond_51

    :cond_33
    iget-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->lastAvatar:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-nez v0, :cond_52

    if-eqz v1, :cond_52

    iget-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->lastAvatar:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v0, :cond_52

    if-eqz v1, :cond_52

    iget-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->lastAvatar:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget-wide v2, v0, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    iget-wide v10, v1, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    cmp-long v0, v2, v10

    if-nez v0, :cond_51

    iget-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->lastAvatar:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    iget v2, v1, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    if-eq v0, v2, :cond_52

    .line 384
    :cond_51
    const/4 v6, 0x1

    .line 387
    :cond_52
    if-nez v6, :cond_6e

    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_6e

    iget-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v0, :cond_6e

    .line 388
    const/4 v9, 0x0

    .line 389
    .local v9, "newStatus":I
    iget-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    if-eqz v0, :cond_69

    .line 390
    iget-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    iget v9, v0, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    .line 392
    :cond_69
    iget v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->lastStatus:I

    if-eq v9, v0, :cond_6e

    .line 393
    const/4 v6, 0x1

    .line 396
    .end local v9    # "newStatus":I
    :cond_6e
    if-nez v6, :cond_78

    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_78

    iget-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    if-nez v0, :cond_80

    :cond_78
    and-int/lit8 v0, p1, 0x10

    if-eqz v0, :cond_a6

    iget-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v0, :cond_a6

    .line 398
    :cond_80
    iget-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v0, :cond_ee

    .line 399
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 403
    .local v8, "newName":Ljava/lang/String;
    :goto_9d
    iget-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->lastName:Ljava/lang/String;

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a6

    .line 404
    const/4 v6, 0x1

    .line 407
    .end local v8    # "newName":Ljava/lang/String;
    :cond_a6
    if-nez v6, :cond_cb

    iget-boolean v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->drawCount:Z

    if-eqz v0, :cond_cb

    and-int/lit16 v0, p1, 0x100

    if-eqz v0, :cond_cb

    .line 408
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogs_dict:Ljava/util/concurrent/ConcurrentHashMap;

    iget-wide v2, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->dialog_id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    .line 409
    .local v7, "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    if-eqz v7, :cond_cb

    iget v0, v7, Lorg/telegram/tgnet/TLRPC$TL_dialog;->unread_count:I

    iget v2, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->lastUnreadCount:I

    if-eq v0, v2, :cond_cb

    .line 410
    const/4 v6, 0x1

    .line 414
    .end local v7    # "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    :cond_cb
    if-nez v6, :cond_f3

    .line 440
    .end local v6    # "continueUpdate":Z
    :goto_cd
    return-void

    .line 371
    :cond_ce
    iget-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v0, :cond_e7

    .line 372
    iget-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    if-eqz v0, :cond_de

    .line 373
    iget-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$ChatPhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 375
    :cond_de
    iget-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    iget-object v2, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$Chat;)V

    goto/16 :goto_1a

    .line 377
    :cond_e7
    iget-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v0, v5, v4, v4, v5}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(ILjava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1a

    .line 401
    .restart local v6    # "continueUpdate":Z
    :cond_ee
    iget-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v8, v0, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    .restart local v8    # "newName":Ljava/lang/String;
    goto :goto_9d

    .line 419
    .end local v6    # "continueUpdate":Z
    .end local v8    # "newName":Ljava/lang/String;
    :cond_f3
    iget-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v0, :cond_141

    .line 420
    iget-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    if-eqz v0, :cond_13e

    .line 421
    iget-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    iput v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->lastStatus:I

    .line 425
    :goto_105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->lastName:Ljava/lang/String;

    .line 431
    :cond_120
    :goto_120
    iput-object v1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->lastAvatar:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 432
    iget-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    const-string v2, "50_50"

    iget-object v3, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Z)V

    .line 434
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/ProfileSearchCell;->getMeasuredWidth()I

    move-result v0

    if-nez v0, :cond_137

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/ProfileSearchCell;->getMeasuredHeight()I

    move-result v0

    if-eqz v0, :cond_14c

    .line 435
    :cond_137
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/ProfileSearchCell;->buildLayout()V

    .line 439
    :goto_13a
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/ProfileSearchCell;->postInvalidate()V

    goto :goto_cd

    .line 423
    :cond_13e
    iput v5, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->lastStatus:I

    goto :goto_105

    .line 426
    :cond_141
    iget-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v0, :cond_120

    .line 427
    iget-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    iput-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->lastName:Ljava/lang/String;

    goto :goto_120

    .line 437
    :cond_14c
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/ProfileSearchCell;->requestLayout()V

    goto :goto_13a
.end method
