.class public Lorg/telegram/ui/Cells/DialogCell;
.super Lorg/telegram/ui/Cells/BaseCell;
.source "DialogCell.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Cells/DialogCell$CustomDialog;
    }
.end annotation


# instance fields
.field private avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

.field private avatarImage:Lorg/telegram/messenger/ImageReceiver;

.field private avatarLeftMargin:I

.field private avatarSize:I

.field private avatarTop:I

.field private chat:Lorg/telegram/tgnet/TLRPC$Chat;

.field private checkDrawLeft:I

.field private checkDrawTop:I

.field private countLayout:Landroid/text/StaticLayout;

.field private countLeft:I

.field private countTop:I

.field private countWidth:I

.field private currentDialogId:J

.field private currentEditDate:I

.field private customDialog:Lorg/telegram/ui/Cells/DialogCell$CustomDialog;

.field private dialogMuted:Z

.field private dialogsType:I

.field private draftMessage:Lorg/telegram/tgnet/TLRPC$DraftMessage;

.field private drawCheck1:Z

.field private drawCheck2:Z

.field private drawClock:Z

.field private drawCount:Z

.field private drawError:Z

.field private drawNameBot:Z

.field private drawNameBroadcast:Z

.field private drawNameGroup:Z

.field private drawNameLock:Z

.field private drawPin:Z

.field private drawStatus:Z

.field private drawVerified:Z

.field private encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

.field private errorLeft:I

.field private errorTop:I

.field private halfCheckDrawLeft:I

.field private index:I

.field private isDialogCell:Z

.field private isSelected:Z

.field private lastMessageDate:I

.field private lastPrintString:Ljava/lang/CharSequence;

.field private lastSendState:I

.field private lastUnreadState:Z

.field private message:Lorg/telegram/messenger/MessageObject;

.field private messageLayout:Landroid/text/StaticLayout;

.field private messageLeft:I

.field private messageTop:I

.field private nameLayout:Landroid/text/StaticLayout;

.field private nameLeft:I

.field private nameLockLeft:I

.field private nameLockTop:I

.field private nameMuteLeft:I

.field private pinLeft:I

.field private pinTop:I

.field private rect:Landroid/graphics/RectF;

.field private statusBG:Landroid/graphics/drawable/GradientDrawable;

.field private timeLayout:Landroid/text/StaticLayout;

.field private timeLeft:I

.field private timeTop:I

.field private unreadCount:I

.field public useSeparator:Z

.field private user:Lorg/telegram/tgnet/TLRPC$User;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/high16 v2, 0x421c0000    # 39.0f

    const/4 v1, 0x0

    .line 142
    invoke-direct {p0, p1}, Lorg/telegram/ui/Cells/BaseCell;-><init>(Landroid/content/Context;)V

    .line 77
    new-instance v0, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/ImageReceiver;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    .line 78
    new-instance v0, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v0}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    .line 80
    iput-object v1, p0, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    .line 81
    iput-object v1, p0, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    .line 82
    iput-object v1, p0, Lorg/telegram/ui/Cells/DialogCell;->encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    .line 83
    iput-object v1, p0, Lorg/telegram/ui/Cells/DialogCell;->lastPrintString:Ljava/lang/CharSequence;

    .line 86
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->useSeparator:Z

    .line 99
    const/high16 v0, 0x41880000    # 17.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Cells/DialogCell;->timeTop:I

    .line 106
    const/high16 v0, 0x41900000    # 18.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Cells/DialogCell;->checkDrawTop:I

    .line 109
    const/high16 v0, 0x42200000    # 40.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Cells/DialogCell;->messageTop:I

    .line 114
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Cells/DialogCell;->errorTop:I

    .line 118
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Cells/DialogCell;->pinTop:I

    .line 122
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Cells/DialogCell;->countTop:I

    .line 129
    const/high16 v0, 0x41200000    # 10.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Cells/DialogCell;->avatarTop:I

    .line 135
    const/high16 v0, 0x42500000    # 52.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Cells/DialogCell;->avatarSize:I

    .line 136
    const/16 v0, 0xa

    iput v0, p0, Lorg/telegram/ui/Cells/DialogCell;->avatarLeftMargin:I

    .line 139
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->rect:Landroid/graphics/RectF;

    .line 144
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->createDialogsResources(Landroid/content/Context;)V

    .line 145
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    const/high16 v1, 0x41d00000    # 26.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    .line 148
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->statusBG:Landroid/graphics/drawable/GradientDrawable;

    .line 149
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->statusBG:Landroid/graphics/drawable/GradientDrawable;

    const v1, -0x777778

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 150
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->statusBG:Landroid/graphics/drawable/GradientDrawable;

    const/high16 v1, 0x41800000    # 16.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 151
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->statusBG:Landroid/graphics/drawable/GradientDrawable;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 152
    return-void
.end method

.method private getDialogsArray()Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$TL_dialog;",
            ">;"
        }
    .end annotation

    .prologue
    .line 787
    iget v0, p0, Lorg/telegram/ui/Cells/DialogCell;->dialogsType:I

    if-nez v0, :cond_b

    .line 788
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogs:Ljava/util/ArrayList;

    .line 808
    :goto_a
    return-object v0

    .line 789
    :cond_b
    iget v0, p0, Lorg/telegram/ui/Cells/DialogCell;->dialogsType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_17

    .line 790
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogsServerOnly:Ljava/util/ArrayList;

    goto :goto_a

    .line 791
    :cond_17
    iget v0, p0, Lorg/telegram/ui/Cells/DialogCell;->dialogsType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_23

    .line 792
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogsGroupsOnly:Ljava/util/ArrayList;

    goto :goto_a

    .line 793
    :cond_23
    iget v0, p0, Lorg/telegram/ui/Cells/DialogCell;->dialogsType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2f

    .line 794
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogsChannels:Ljava/util/ArrayList;

    goto :goto_a

    .line 795
    :cond_2f
    iget v0, p0, Lorg/telegram/ui/Cells/DialogCell;->dialogsType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3b

    .line 796
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogsGroups:Ljava/util/ArrayList;

    goto :goto_a

    .line 797
    :cond_3b
    iget v0, p0, Lorg/telegram/ui/Cells/DialogCell;->dialogsType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_47

    .line 798
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogsBots:Ljava/util/ArrayList;

    goto :goto_a

    .line 799
    :cond_47
    iget v0, p0, Lorg/telegram/ui/Cells/DialogCell;->dialogsType:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_53

    .line 800
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogsUsers:Ljava/util/ArrayList;

    goto :goto_a

    .line 801
    :cond_53
    iget v0, p0, Lorg/telegram/ui/Cells/DialogCell;->dialogsType:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_5f

    .line 802
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogsMegaGroups:Ljava/util/ArrayList;

    goto :goto_a

    .line 803
    :cond_5f
    iget v0, p0, Lorg/telegram/ui/Cells/DialogCell;->dialogsType:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_6c

    .line 804
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogsFavs:Ljava/util/ArrayList;

    goto :goto_a

    .line 805
    :cond_6c
    iget v0, p0, Lorg/telegram/ui/Cells/DialogCell;->dialogsType:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_79

    .line 806
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogsGroupsAll:Ljava/util/ArrayList;

    goto :goto_a

    .line 808
    :cond_79
    const/4 v0, 0x0

    goto :goto_a
.end method

.method private setStatusColor()V
    .registers 6

    .prologue
    const v4, -0x333334

    .line 1092
    iget-object v2, p0, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v2, :cond_3b

    iget-object v2, p0, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->formatUserStatus(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v1

    .line 1093
    .local v1, "s":Ljava/lang/String;
    :goto_d
    const-string v2, "ALongTimeAgo"

    const v3, 0x7f070031

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 1094
    iget-object v2, p0, Lorg/telegram/ui/Cells/DialogCell;->statusBG:Landroid/graphics/drawable/GradientDrawable;

    const/high16 v3, -0x1000000

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 1102
    :goto_23
    iget-object v2, p0, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v2, :cond_2d

    iget-object v2, p0, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    if-nez v2, :cond_74

    :cond_2d
    const/4 v0, -0x2

    .line 1103
    .local v0, "l":I
    :goto_2e
    if-lez v0, :cond_3a

    const v2, 0x15180

    if-ge v0, v2, :cond_3a

    .line 1104
    iget-object v2, p0, Lorg/telegram/ui/Cells/DialogCell;->statusBG:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 1106
    :cond_3a
    return-void

    .line 1092
    .end local v0    # "l":I
    .end local v1    # "s":Ljava/lang/String;
    :cond_3b
    const-string v1, "armv7_bazaar"

    goto :goto_d

    .line 1095
    .restart local v1    # "s":Ljava/lang/String;
    :cond_3e
    const-string v2, "Online"

    const v3, 0x7f0703d6

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_56

    .line 1096
    iget-object v2, p0, Lorg/telegram/ui/Cells/DialogCell;->statusBG:Landroid/graphics/drawable/GradientDrawable;

    const v3, -0xff198a

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    goto :goto_23

    .line 1097
    :cond_56
    const-string v2, "Lately"

    const v3, 0x7f0702d7

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6b

    .line 1098
    iget-object v2, p0, Lorg/telegram/ui/Cells/DialogCell;->statusBG:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    goto :goto_23

    .line 1100
    :cond_6b
    iget-object v2, p0, Lorg/telegram/ui/Cells/DialogCell;->statusBG:Landroid/graphics/drawable/GradientDrawable;

    const v3, -0x777778

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    goto :goto_23

    .line 1102
    :cond_74
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    sub-int v0, v2, v3

    goto :goto_2e
.end method


# virtual methods
.method public buildLayout()V
    .registers 41

    .prologue
    .line 214
    const-string v33, ""

    .line 215
    .local v33, "nameString":Ljava/lang/String;
    const-string v3, ""

    .line 216
    .local v3, "timeString":Ljava/lang/String;
    const/16 v20, 0x0

    .line 217
    .local v20, "countString":Ljava/lang/String;
    const-string v30, ""

    .line 218
    .local v30, "messageString":Ljava/lang/CharSequence;
    const/16 v34, 0x0

    .line 219
    .local v34, "printingString":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell;->isDialogCell:Z

    if-eqz v2, :cond_24

    .line 220
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController;->printingStrings:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/telegram/ui/Cells/DialogCell;->currentDialogId:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v34

    .end local v34    # "printingString":Ljava/lang/CharSequence;
    check-cast v34, Ljava/lang/CharSequence;

    .line 222
    .restart local v34    # "printingString":Ljava/lang/CharSequence;
    :cond_24
    sget-object v22, Lorg/telegram/ui/ActionBar/Theme;->dialogs_namePaint:Landroid/text/TextPaint;

    .line 223
    .local v22, "currentNamePaint":Landroid/text/TextPaint;
    sget-object v21, Lorg/telegram/ui/ActionBar/Theme;->dialogs_messagePaint:Landroid/text/TextPaint;

    .line 224
    .local v21, "currentMessagePaint":Landroid/text/TextPaint;
    const/16 v19, 0x1

    .line 226
    .local v19, "checkMessage":Z
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell;->drawNameGroup:Z

    .line 227
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell;->drawNameBroadcast:Z

    .line 228
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell;->drawNameLock:Z

    .line 229
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell;->drawNameBot:Z

    .line 230
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell;->drawVerified:Z

    .line 233
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell;->drawStatus:Z

    .line 235
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->customDialog:Lorg/telegram/ui/Cells/DialogCell$CustomDialog;

    if-eqz v2, :cond_501

    .line 236
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->customDialog:Lorg/telegram/ui/Cells/DialogCell$CustomDialog;

    iget v2, v2, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->type:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_3f5

    .line 237
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell;->drawNameLock:Z

    .line 238
    const/high16 v2, 0x41840000    # 16.5f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/DialogCell;->nameLockTop:I

    .line 239
    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v2, :cond_3d2

    .line 240
    sget v2, Lorg/telegram/messenger/AndroidUtilities;->leftBaseline:I

    int-to-float v2, v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/DialogCell;->nameLockLeft:I

    .line 241
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

    iput v2, v0, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    .line 267
    :goto_89
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->customDialog:Lorg/telegram/ui/Cells/DialogCell$CustomDialog;

    iget v2, v2, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->type:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_4d0

    .line 268
    const-string v2, "FromYou"

    const v4, 0x7f070266

    invoke-static {v2, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v32

    .line 269
    .local v32, "name":Ljava/lang/String;
    const/16 v19, 0x0

    .line 271
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->customDialog:Lorg/telegram/ui/Cells/DialogCell$CustomDialog;

    iget-boolean v2, v2, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->isMedia:Z

    if-eqz v2, :cond_498

    .line 272
    sget-object v21, Lorg/telegram/ui/ActionBar/Theme;->dialogs_messagePrintingPaint:Landroid/text/TextPaint;

    .line 273
    const-string v2, "%s: %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v32, v4, v6

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v8, v8, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    aput-object v8, v4, v6

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/SpannableStringBuilder;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v35

    .line 274
    .local v35, "stringBuilder":Landroid/text/SpannableStringBuilder;
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    const-string v4, "chats_attachMessage"

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v2, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x2

    invoke-virtual/range {v35 .. v35}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    const/16 v8, 0x21

    move-object/from16 v0, v35

    invoke-virtual {v0, v2, v4, v6, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 282
    :goto_dc
    invoke-virtual/range {v35 .. v35}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_fb

    .line 283
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    const-string v4, "chats_nameMessage"

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v2, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v4, 0x0

    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    const/16 v8, 0x21

    move-object/from16 v0, v35

    invoke-virtual {v0, v2, v4, v6, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 285
    :cond_fb
    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_messagePaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v2

    const/high16 v4, 0x41a00000    # 20.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    const/4 v6, 0x0

    move-object/from16 v0, v35

    invoke-static {v0, v2, v4, v6}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;IZ)Ljava/lang/CharSequence;

    move-result-object v30

    .line 293
    .end local v32    # "name":Ljava/lang/String;
    .end local v35    # "stringBuilder":Landroid/text/SpannableStringBuilder;
    :cond_10e
    :goto_10e
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->customDialog:Lorg/telegram/ui/Cells/DialogCell$CustomDialog;

    iget v2, v2, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->date:I

    int-to-long v14, v2

    invoke-static {v14, v15}, Lorg/telegram/messenger/LocaleController;->stringForMessageListDate(J)Ljava/lang/String;

    move-result-object v3

    .line 295
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->customDialog:Lorg/telegram/ui/Cells/DialogCell$CustomDialog;

    iget v2, v2, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->unread_count:I

    if-eqz v2, :cond_4e4

    .line 296
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell;->drawCount:Z

    .line 297
    const-string v2, "%d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/telegram/ui/Cells/DialogCell;->customDialog:Lorg/telegram/ui/Cells/DialogCell$CustomDialog;

    iget v8, v8, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->unread_count:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v4, v6

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    .line 302
    :goto_13c
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->customDialog:Lorg/telegram/ui/Cells/DialogCell$CustomDialog;

    iget-boolean v2, v2, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->sent:Z

    if-eqz v2, :cond_4eb

    .line 303
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell;->drawCheck1:Z

    .line 304
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell;->drawCheck2:Z

    .line 305
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell;->drawClock:Z

    .line 306
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell;->drawError:Z

    .line 313
    :goto_158
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->customDialog:Lorg/telegram/ui/Cells/DialogCell$CustomDialog;

    iget-object v0, v2, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->name:Ljava/lang/String;

    move-object/from16 v33, v0

    .line 314
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->customDialog:Lorg/telegram/ui/Cells/DialogCell$CustomDialog;

    iget v2, v2, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->type:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_16b

    .line 315
    sget-object v22, Lorg/telegram/ui/ActionBar/Theme;->dialogs_nameEncryptedPaint:Landroid/text/TextPaint;

    .line 585
    :cond_16b
    :goto_16b
    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_timePaint:Landroid/text/TextPaint;

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v2

    float-to-double v14, v2

    invoke-static {v14, v15}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v14

    double-to-int v5, v14

    .line 586
    .local v5, "timeWidth":I
    new-instance v2, Landroid/text/StaticLayout;

    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->dialogs_timePaint:Landroid/text/TextPaint;

    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v2 .. v9}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->timeLayout:Landroid/text/StaticLayout;

    .line 587
    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v2, :cond_d32

    .line 588
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->getMeasuredWidth()I

    move-result v2

    const/high16 v4, 0x41700000    # 15.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int/2addr v2, v4

    sub-int/2addr v2, v5

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/DialogCell;->timeLeft:I

    .line 595
    :goto_19c
    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v2, :cond_d3e

    .line 596
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->getMeasuredWidth()I

    move-result v2

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    sub-int/2addr v2, v4

    const/high16 v4, 0x41600000    # 14.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int/2addr v2, v4

    sub-int v9, v2, v5

    .line 601
    .local v9, "nameWidth":I
    :goto_1b2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell;->drawNameLock:Z

    if-eqz v2, :cond_d5c

    .line 602
    const/high16 v2, 0x40800000    # 4.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->dialogs_lockDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    add-int/2addr v2, v4

    sub-int/2addr v9, v2

    .line 610
    :cond_1c6
    :goto_1c6
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell;->drawClock:Z

    if-eqz v2, :cond_dba

    .line 611
    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_clockDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    const/high16 v4, 0x40a00000    # 5.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    add-int v36, v2, v4

    .line 612
    .local v36, "w":I
    sub-int v9, v9, v36

    .line 613
    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v2, :cond_d9e

    .line 614
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Cells/DialogCell;->timeLeft:I

    sub-int v2, v2, v36

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/DialogCell;->checkDrawLeft:I

    .line 642
    .end local v36    # "w":I
    :cond_1ea
    :goto_1ea
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell;->dialogMuted:Z

    if-eqz v2, :cond_e68

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell;->drawVerified:Z

    if-nez v2, :cond_e68

    .line 643
    const/high16 v2, 0x40c00000    # 6.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->dialogs_muteDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    add-int v36, v2, v4

    .line 644
    .restart local v36    # "w":I
    sub-int v9, v9, v36

    .line 645
    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_214

    .line 646
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    add-int v2, v2, v36

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    .line 656
    .end local v36    # "w":I
    :cond_214
    :goto_214
    const/high16 v2, 0x41400000    # 12.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-static {v2, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 658
    const/16 v2, 0xa

    const/16 v4, 0x20

    :try_start_222
    move-object/from16 v0, v33

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    const/high16 v4, 0x41400000    # 12.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int v4, v9, v4

    int-to-float v4, v4

    sget-object v6, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, v22

    invoke-static {v2, v0, v4, v6}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v7

    .line 659
    .local v7, "nameStringFinal":Ljava/lang/CharSequence;
    new-instance v6, Landroid/text/StaticLayout;

    sget-object v10, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v8, v22

    invoke-direct/range {v6 .. v13}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    move-object/from16 v0, p0

    iput-object v6, v0, Lorg/telegram/ui/Cells/DialogCell;->nameLayout:Landroid/text/StaticLayout;
    :try_end_24a
    .catch Ljava/lang/Exception; {:try_start_222 .. :try_end_24a} :catch_e8e

    .line 664
    .end local v7    # "nameStringFinal":Ljava/lang/CharSequence;
    :goto_24a
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->getMeasuredWidth()I

    move-result v2

    sget v4, Lorg/telegram/messenger/AndroidUtilities;->leftBaseline:I

    add-int/lit8 v4, v4, 0x10

    int-to-float v4, v4

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int v31, v2, v4

    .line 666
    .local v31, "messageWidth":I
    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v2, :cond_e98

    .line 667
    sget v2, Lorg/telegram/messenger/AndroidUtilities;->leftBaseline:I

    int-to-float v2, v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/DialogCell;->messageLeft:I

    .line 668
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_e94

    const/high16 v2, 0x41500000    # 13.0f

    :goto_270
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v18

    .line 673
    .local v18, "avatarLeft":I
    :goto_274
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/ui/Cells/DialogCell;->avatarTop:I

    const/high16 v6, 0x42500000    # 52.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    const/high16 v8, 0x42500000    # 52.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    move/from16 v0, v18

    invoke-virtual {v2, v0, v4, v6, v8}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(IIII)V

    .line 674
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell;->drawError:Z

    if-eqz v2, :cond_ecf

    .line 675
    const/high16 v2, 0x41f80000    # 31.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v36

    .line 676
    .restart local v36    # "w":I
    sub-int v13, v31, v36

    .line 677
    .end local v31    # "messageWidth":I
    .local v13, "messageWidth":I
    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v2, :cond_eb9

    .line 678
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->getMeasuredWidth()I

    move-result v2

    const/high16 v4, 0x42080000    # 34.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int/2addr v2, v4

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/DialogCell;->errorLeft:I

    .line 709
    .end local v36    # "w":I
    :goto_2ae
    if-eqz v19, :cond_2e6

    .line 710
    if-nez v30, :cond_2b4

    .line 711
    const-string v30, ""

    .line 713
    :cond_2b4
    invoke-interface/range {v30 .. v30}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v29

    .line 714
    .local v29, "mess":Ljava/lang/String;
    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v4, 0x96

    if-le v2, v4, :cond_2c9

    .line 715
    const/4 v2, 0x0

    const/16 v4, 0x96

    move-object/from16 v0, v29

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v29

    .line 717
    :cond_2c9
    const/16 v2, 0xa

    const/16 v4, 0x20

    move-object/from16 v0, v29

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v29

    .line 718
    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_messagePaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v2

    const/high16 v4, 0x41880000    # 17.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    const/4 v6, 0x0

    move-object/from16 v0, v29

    invoke-static {v0, v2, v4, v6}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;IZ)Ljava/lang/CharSequence;

    move-result-object v30

    .line 720
    .end local v29    # "mess":Ljava/lang/String;
    :cond_2e6
    const/high16 v2, 0x41400000    # 12.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-static {v2, v13}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 721
    const/high16 v2, 0x41400000    # 12.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int v2, v13, v2

    int-to-float v2, v2

    sget-object v4, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, v30

    move-object/from16 v1, v21

    invoke-static {v0, v1, v2, v4}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v11

    .line 723
    .local v11, "messageStringFinal":Ljava/lang/CharSequence;
    :try_start_303
    new-instance v10, Landroid/text/StaticLayout;

    sget-object v14, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v15, 0x3f800000    # 1.0f

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v12, v21

    invoke-direct/range {v10 .. v17}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    move-object/from16 v0, p0

    iput-object v10, v0, Lorg/telegram/ui/Cells/DialogCell;->messageLayout:Landroid/text/StaticLayout;
    :try_end_316
    .catch Ljava/lang/Exception; {:try_start_303 .. :try_end_316} :catch_f94

    .line 730
    :goto_316
    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_fc9

    .line 731
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->nameLayout:Landroid/text/StaticLayout;

    if-eqz v2, :cond_38f

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->nameLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v2

    if-lez v2, :cond_38f

    .line 732
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->nameLayout:Landroid/text/StaticLayout;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/text/StaticLayout;->getLineLeft(I)F

    move-result v28

    .line 733
    .local v28, "left":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->nameLayout:Landroid/text/StaticLayout;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v2

    float-to-double v14, v2

    invoke-static {v14, v15}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v38

    .line 734
    .local v38, "widthpx":D
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell;->dialogMuted:Z

    if-eqz v2, :cond_f9a

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell;->drawVerified:Z

    if-nez v2, :cond_f9a

    .line 735
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    int-to-double v14, v2

    int-to-double v0, v9

    move-wide/from16 v16, v0

    sub-double v16, v16, v38

    add-double v14, v14, v16

    const/high16 v2, 0x40c00000    # 6.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-double v0, v2

    move-wide/from16 v16, v0

    sub-double v14, v14, v16

    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_muteDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    int-to-double v0, v2

    move-wide/from16 v16, v0

    sub-double v14, v14, v16

    double-to-int v2, v14

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/DialogCell;->nameMuteLeft:I

    .line 739
    :cond_374
    :goto_374
    const/4 v2, 0x0

    cmpl-float v2, v28, v2

    if-nez v2, :cond_38f

    .line 740
    int-to-double v14, v9

    cmpg-double v2, v38, v14

    if-gez v2, :cond_38f

    .line 741
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    int-to-double v14, v2

    int-to-double v0, v9

    move-wide/from16 v16, v0

    sub-double v16, v16, v38

    add-double v14, v14, v16

    double-to-int v2, v14

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    .line 745
    .end local v28    # "left":F
    .end local v38    # "widthpx":D
    :cond_38f
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->messageLayout:Landroid/text/StaticLayout;

    if-eqz v2, :cond_3d1

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->messageLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v2

    if-lez v2, :cond_3d1

    .line 746
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->messageLayout:Landroid/text/StaticLayout;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/text/StaticLayout;->getLineLeft(I)F

    move-result v28

    .line 747
    .restart local v28    # "left":F
    const/4 v2, 0x0

    cmpl-float v2, v28, v2

    if-nez v2, :cond_3d1

    .line 748
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->messageLayout:Landroid/text/StaticLayout;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v2

    float-to-double v14, v2

    invoke-static {v14, v15}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v38

    .line 749
    .restart local v38    # "widthpx":D
    int-to-double v14, v13

    cmpg-double v2, v38, v14

    if-gez v2, :cond_3d1

    .line 750
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Cells/DialogCell;->messageLeft:I

    int-to-double v14, v2

    int-to-double v0, v13

    move-wide/from16 v16, v0

    sub-double v16, v16, v38

    add-double v14, v14, v16

    double-to-int v2, v14

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/DialogCell;->messageLeft:I

    .line 777
    .end local v28    # "left":F
    .end local v38    # "widthpx":D
    :cond_3d1
    :goto_3d1
    return-void

    .line 243
    .end local v5    # "timeWidth":I
    .end local v9    # "nameWidth":I
    .end local v11    # "messageStringFinal":Ljava/lang/CharSequence;
    .end local v13    # "messageWidth":I
    .end local v18    # "avatarLeft":I
    :cond_3d2
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->getMeasuredWidth()I

    move-result v2

    sget v4, Lorg/telegram/messenger/AndroidUtilities;->leftBaseline:I

    int-to-float v4, v4

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int/2addr v2, v4

    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->dialogs_lockDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    sub-int/2addr v2, v4

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/DialogCell;->nameLockLeft:I

    .line 244
    const/high16 v2, 0x41600000    # 14.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    goto/16 :goto_89

    .line 247
    :cond_3f5
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->customDialog:Lorg/telegram/ui/Cells/DialogCell$CustomDialog;

    iget-boolean v2, v2, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->verified:Z

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell;->drawVerified:Z

    .line 248
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->customDialog:Lorg/telegram/ui/Cells/DialogCell$CustomDialog;

    iget v2, v2, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->type:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_47b

    .line 249
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell;->drawNameGroup:Z

    .line 250
    const/high16 v2, 0x418c0000    # 17.5f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/DialogCell;->nameLockTop:I

    .line 251
    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v2, :cond_449

    .line 252
    sget v2, Lorg/telegram/messenger/AndroidUtilities;->leftBaseline:I

    int-to-float v2, v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/DialogCell;->nameLockLeft:I

    .line 253
    sget v2, Lorg/telegram/messenger/AndroidUtilities;->leftBaseline:I

    add-int/lit8 v2, v2, 0x4

    int-to-float v2, v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell;->drawNameGroup:Z

    if-eqz v2, :cond_442

    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_groupDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    :goto_43b
    add-int/2addr v2, v4

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    goto/16 :goto_89

    :cond_442
    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_broadcastDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    goto :goto_43b

    .line 255
    :cond_449
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->getMeasuredWidth()I

    move-result v2

    sget v4, Lorg/telegram/messenger/AndroidUtilities;->leftBaseline:I

    int-to-float v4, v4

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int v4, v2, v4

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell;->drawNameGroup:Z

    if-eqz v2, :cond_474

    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_groupDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    :goto_462
    sub-int v2, v4, v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/DialogCell;->nameLockLeft:I

    .line 256
    const/high16 v2, 0x41600000    # 14.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    goto/16 :goto_89

    .line 255
    :cond_474
    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_broadcastDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    goto :goto_462

    .line 259
    :cond_47b
    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v2, :cond_48c

    .line 260
    sget v2, Lorg/telegram/messenger/AndroidUtilities;->leftBaseline:I

    int-to-float v2, v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    goto/16 :goto_89

    .line 262
    :cond_48c
    const/high16 v2, 0x41600000    # 14.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    goto/16 :goto_89

    .line 276
    .restart local v32    # "name":Ljava/lang/String;
    :cond_498
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->customDialog:Lorg/telegram/ui/Cells/DialogCell$CustomDialog;

    iget-object v0, v2, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->message:Ljava/lang/String;

    move-object/from16 v29, v0

    .line 277
    .restart local v29    # "mess":Ljava/lang/String;
    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v4, 0x96

    if-le v2, v4, :cond_4b1

    .line 278
    const/4 v2, 0x0

    const/16 v4, 0x96

    move-object/from16 v0, v29

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v29

    .line 280
    :cond_4b1
    const-string v2, "%s: %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v32, v4, v6

    const/4 v6, 0x1

    const/16 v8, 0xa

    const/16 v10, 0x20

    move-object/from16 v0, v29

    invoke-virtual {v0, v8, v10}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v6

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/SpannableStringBuilder;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v35

    .restart local v35    # "stringBuilder":Landroid/text/SpannableStringBuilder;
    goto/16 :goto_dc

    .line 287
    .end local v29    # "mess":Ljava/lang/String;
    .end local v32    # "name":Ljava/lang/String;
    .end local v35    # "stringBuilder":Landroid/text/SpannableStringBuilder;
    :cond_4d0
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->customDialog:Lorg/telegram/ui/Cells/DialogCell$CustomDialog;

    iget-object v0, v2, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->message:Ljava/lang/String;

    move-object/from16 v30, v0

    .line 288
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->customDialog:Lorg/telegram/ui/Cells/DialogCell$CustomDialog;

    iget-boolean v2, v2, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->isMedia:Z

    if-eqz v2, :cond_10e

    .line 289
    sget-object v21, Lorg/telegram/ui/ActionBar/Theme;->dialogs_messagePrintingPaint:Landroid/text/TextPaint;

    goto/16 :goto_10e

    .line 299
    :cond_4e4
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell;->drawCount:Z

    goto/16 :goto_13c

    .line 308
    :cond_4eb
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell;->drawCheck1:Z

    .line 309
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell;->drawCheck2:Z

    .line 310
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell;->drawClock:Z

    .line 311
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell;->drawError:Z

    goto/16 :goto_158

    .line 318
    :cond_501
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    if-eqz v2, :cond_64c

    .line 319
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell;->drawNameLock:Z

    .line 320
    const/high16 v2, 0x41840000    # 16.5f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/DialogCell;->nameLockTop:I

    .line 321
    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v2, :cond_629

    .line 322
    sget v2, Lorg/telegram/messenger/AndroidUtilities;->leftBaseline:I

    int-to-float v2, v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/DialogCell;->nameLockLeft:I

    .line 323
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

    iput v2, v0, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    .line 369
    :cond_539
    :goto_539
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/Cells/DialogCell;->lastMessageDate:I

    move/from16 v27, v0

    .line 370
    .local v27, "lastDate":I
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Cells/DialogCell;->lastMessageDate:I

    if-nez v2, :cond_555

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    if-eqz v2, :cond_555

    .line 371
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v0, v2, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    move/from16 v27, v0

    .line 374
    :cond_555
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell;->isDialogCell:Z

    if-eqz v2, :cond_781

    .line 375
    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/telegram/ui/Cells/DialogCell;->currentDialogId:J

    invoke-static {v14, v15}, Lorg/telegram/messenger/query/DraftQuery;->getDraft(J)Lorg/telegram/tgnet/TLRPC$DraftMessage;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->draftMessage:Lorg/telegram/tgnet/TLRPC$DraftMessage;

    .line 376
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->draftMessage:Lorg/telegram/tgnet/TLRPC$DraftMessage;

    if-eqz v2, :cond_591

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->draftMessage:Lorg/telegram/tgnet/TLRPC$DraftMessage;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$DraftMessage;->message:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_581

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->draftMessage:Lorg/telegram/tgnet/TLRPC$DraftMessage;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$DraftMessage;->reply_to_msg_id:I

    if-eqz v2, :cond_5c9

    :cond_581
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->draftMessage:Lorg/telegram/tgnet/TLRPC$DraftMessage;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$DraftMessage;->date:I

    move/from16 v0, v27

    if-le v0, v2, :cond_591

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Cells/DialogCell;->unreadCount:I

    if-nez v2, :cond_5c9

    :cond_591
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    .line 377
    invoke-static {v2}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v2

    if-eqz v2, :cond_5b3

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez v2, :cond_5b3

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    if-nez v2, :cond_5b3

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->editor:Z

    if-eqz v2, :cond_5c9

    :cond_5b3
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v2, :cond_5ce

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->left:Z

    if-nez v2, :cond_5c9

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->kicked:Z

    if-eqz v2, :cond_5ce

    .line 379
    :cond_5c9
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->draftMessage:Lorg/telegram/tgnet/TLRPC$DraftMessage;

    .line 385
    :cond_5ce
    :goto_5ce
    if-eqz v34, :cond_788

    .line 386
    move-object/from16 v30, v34

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/Cells/DialogCell;->lastPrintString:Ljava/lang/CharSequence;

    .line 387
    sget-object v21, Lorg/telegram/ui/ActionBar/Theme;->dialogs_messagePrintingPaint:Landroid/text/TextPaint;

    .line 509
    :cond_5da
    :goto_5da
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->draftMessage:Lorg/telegram/tgnet/TLRPC$DraftMessage;

    if-eqz v2, :cond_b8b

    .line 510
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->draftMessage:Lorg/telegram/tgnet/TLRPC$DraftMessage;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$DraftMessage;->date:I

    int-to-long v14, v2

    invoke-static {v14, v15}, Lorg/telegram/messenger/LocaleController;->stringForMessageListDate(J)Ljava/lang/String;

    move-result-object v3

    .line 517
    :cond_5eb
    :goto_5eb
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    if-nez v2, :cond_bb1

    .line 518
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell;->drawCheck1:Z

    .line 519
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell;->drawCheck2:Z

    .line 520
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell;->drawClock:Z

    .line 521
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell;->drawCount:Z

    .line 522
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell;->drawError:Z

    .line 557
    :cond_60a
    :goto_60a
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v2, :cond_c7f

    .line 558
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v0, v2, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v33, v0

    .line 580
    :cond_618
    :goto_618
    invoke-virtual/range {v33 .. v33}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_16b

    .line 581
    const-string v2, "HiddenName"

    const v4, 0x7f07027c

    invoke-static {v2, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v33

    goto/16 :goto_16b

    .line 325
    .end local v27    # "lastDate":I
    :cond_629
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->getMeasuredWidth()I

    move-result v2

    sget v4, Lorg/telegram/messenger/AndroidUtilities;->leftBaseline:I

    int-to-float v4, v4

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int/2addr v2, v4

    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->dialogs_lockDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    sub-int/2addr v2, v4

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/DialogCell;->nameLockLeft:I

    .line 326
    const/high16 v2, 0x41600000    # 14.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    goto/16 :goto_539

    .line 329
    :cond_64c
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v2, :cond_6f9

    .line 330
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    if-ltz v2, :cond_66c

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v2}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v2

    if-eqz v2, :cond_6b0

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez v2, :cond_6b0

    .line 331
    :cond_66c
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell;->drawNameBroadcast:Z

    .line 332
    const/high16 v2, 0x41840000    # 16.5f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/DialogCell;->nameLockTop:I

    .line 337
    :goto_67b
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->verified:Z

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell;->drawVerified:Z

    .line 339
    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v2, :cond_6c7

    .line 340
    sget v2, Lorg/telegram/messenger/AndroidUtilities;->leftBaseline:I

    int-to-float v2, v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/DialogCell;->nameLockLeft:I

    .line 341
    sget v2, Lorg/telegram/messenger/AndroidUtilities;->leftBaseline:I

    add-int/lit8 v2, v2, 0x4

    int-to-float v2, v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell;->drawNameGroup:Z

    if-eqz v2, :cond_6c0

    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_groupDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    :goto_6a9
    add-int/2addr v2, v4

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    goto/16 :goto_539

    .line 334
    :cond_6b0
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell;->drawNameGroup:Z

    .line 335
    const/high16 v2, 0x418c0000    # 17.5f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/DialogCell;->nameLockTop:I

    goto :goto_67b

    .line 341
    :cond_6c0
    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_broadcastDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    goto :goto_6a9

    .line 343
    :cond_6c7
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->getMeasuredWidth()I

    move-result v2

    sget v4, Lorg/telegram/messenger/AndroidUtilities;->leftBaseline:I

    int-to-float v4, v4

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int v4, v2, v4

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell;->drawNameGroup:Z

    if-eqz v2, :cond_6f2

    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_groupDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    :goto_6e0
    sub-int v2, v4, v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/DialogCell;->nameLockLeft:I

    .line 344
    const/high16 v2, 0x41600000    # 14.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    goto/16 :goto_539

    .line 343
    :cond_6f2
    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_broadcastDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    goto :goto_6e0

    .line 347
    :cond_6f9
    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v2, :cond_754

    .line 348
    sget v2, Lorg/telegram/messenger/AndroidUtilities;->leftBaseline:I

    int-to-float v2, v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    .line 352
    :goto_708
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v2, :cond_539

    .line 353
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-eqz v2, :cond_748

    .line 354
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell;->drawNameBot:Z

    .line 355
    const/high16 v2, 0x41840000    # 16.5f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/DialogCell;->nameLockTop:I

    .line 356
    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v2, :cond_75f

    .line 357
    sget v2, Lorg/telegram/messenger/AndroidUtilities;->leftBaseline:I

    int-to-float v2, v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/DialogCell;->nameLockLeft:I

    .line 358
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

    iput v2, v0, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    .line 364
    :cond_748
    :goto_748
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$User;->verified:Z

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell;->drawVerified:Z

    goto/16 :goto_539

    .line 350
    :cond_754
    const/high16 v2, 0x41600000    # 14.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    goto :goto_708

    .line 360
    :cond_75f
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->getMeasuredWidth()I

    move-result v2

    sget v4, Lorg/telegram/messenger/AndroidUtilities;->leftBaseline:I

    int-to-float v4, v4

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int/2addr v2, v4

    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->dialogs_botDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    sub-int/2addr v2, v4

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/DialogCell;->nameLockLeft:I

    .line 361
    const/high16 v2, 0x41600000    # 14.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    goto :goto_748

    .line 382
    .restart local v27    # "lastDate":I
    :cond_781
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->draftMessage:Lorg/telegram/tgnet/TLRPC$DraftMessage;

    goto/16 :goto_5ce

    .line 389
    :cond_788
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->lastPrintString:Ljava/lang/CharSequence;

    .line 391
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->draftMessage:Lorg/telegram/tgnet/TLRPC$DraftMessage;

    if-eqz v2, :cond_836

    .line 392
    const/16 v19, 0x0

    .line 393
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->draftMessage:Lorg/telegram/tgnet/TLRPC$DraftMessage;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$DraftMessage;->message:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7c9

    .line 394
    const-string v2, "Draft"

    const v4, 0x7f0701e9

    invoke-static {v2, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v23

    .line 395
    .local v23, "draftString":Ljava/lang/String;
    invoke-static/range {v23 .. v23}, Landroid/text/SpannableStringBuilder;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v35

    .line 396
    .restart local v35    # "stringBuilder":Landroid/text/SpannableStringBuilder;
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    const-string v4, "chats_draft"

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v2, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v4, 0x0

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v8, 0x21

    move-object/from16 v0, v35

    invoke-virtual {v0, v2, v4, v6, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 397
    move-object/from16 v30, v35

    .line 398
    goto/16 :goto_5da

    .line 399
    .end local v23    # "draftString":Ljava/lang/String;
    .end local v35    # "stringBuilder":Landroid/text/SpannableStringBuilder;
    :cond_7c9
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->draftMessage:Lorg/telegram/tgnet/TLRPC$DraftMessage;

    iget-object v0, v2, Lorg/telegram/tgnet/TLRPC$DraftMessage;->message:Ljava/lang/String;

    move-object/from16 v29, v0

    .line 400
    .restart local v29    # "mess":Ljava/lang/String;
    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v4, 0x96

    if-le v2, v4, :cond_7e2

    .line 401
    const/4 v2, 0x0

    const/16 v4, 0x96

    move-object/from16 v0, v29

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v29

    .line 403
    :cond_7e2
    const-string v2, "Draft"

    const v4, 0x7f0701e9

    invoke-static {v2, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v23

    .line 404
    .restart local v23    # "draftString":Ljava/lang/String;
    const-string v2, "%s: %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v23, v4, v6

    const/4 v6, 0x1

    const/16 v8, 0xa

    const/16 v10, 0x20

    move-object/from16 v0, v29

    invoke-virtual {v0, v8, v10}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v6

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/SpannableStringBuilder;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v35

    .line 405
    .restart local v35    # "stringBuilder":Landroid/text/SpannableStringBuilder;
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    const-string v4, "chats_draft"

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v2, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v4, 0x0

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    const/16 v8, 0x21

    move-object/from16 v0, v35

    invoke-virtual {v0, v2, v4, v6, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 406
    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_messagePaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v2

    const/high16 v4, 0x41a00000    # 20.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    const/4 v6, 0x0

    move-object/from16 v0, v35

    invoke-static {v0, v2, v4, v6}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;IZ)Ljava/lang/CharSequence;

    move-result-object v30

    .line 407
    goto/16 :goto_5da

    .line 409
    .end local v23    # "draftString":Ljava/lang/String;
    .end local v29    # "mess":Ljava/lang/String;
    .end local v35    # "stringBuilder":Landroid/text/SpannableStringBuilder;
    :cond_836
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    if-nez v2, :cond_901

    .line 410
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    if-eqz v2, :cond_5da

    .line 411
    sget-object v21, Lorg/telegram/ui/ActionBar/Theme;->dialogs_messagePrintingPaint:Landroid/text/TextPaint;

    .line 412
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_encryptedChatRequested;

    if-eqz v2, :cond_857

    .line 413
    const-string v2, "EncryptionProcessing"

    const v4, 0x7f070205

    invoke-static {v2, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v30

    goto/16 :goto_5da

    .line 414
    :cond_857
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_encryptedChatWaiting;

    if-eqz v2, :cond_897

    .line 415
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v2, :cond_884

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    if-eqz v2, :cond_884

    .line 416
    const-string v2, "AwaitingEncryption"

    const v4, 0x7f0700ce

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v10, v10, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    aput-object v10, v6, v8

    invoke-static {v2, v4, v6}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v30

    goto/16 :goto_5da

    .line 418
    :cond_884
    const-string v2, "AwaitingEncryption"

    const v4, 0x7f0700ce

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v10, ""

    aput-object v10, v6, v8

    invoke-static {v2, v4, v6}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v30

    goto/16 :goto_5da

    .line 420
    :cond_897
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_encryptedChatDiscarded;

    if-eqz v2, :cond_8aa

    .line 421
    const-string v2, "EncryptionRejected"

    const v4, 0x7f070206

    invoke-static {v2, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v30

    goto/16 :goto_5da

    .line 422
    :cond_8aa
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_encryptedChat;

    if-eqz v2, :cond_5da

    .line 423
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->admin_id:I

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v4

    if-ne v2, v4, :cond_8f6

    .line 424
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v2, :cond_8e3

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    if-eqz v2, :cond_8e3

    .line 425
    const-string v2, "EncryptedChatStartedOutgoing"

    const v4, 0x7f0701fa

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v10, v10, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    aput-object v10, v6, v8

    invoke-static {v2, v4, v6}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v30

    goto/16 :goto_5da

    .line 427
    :cond_8e3
    const-string v2, "EncryptedChatStartedOutgoing"

    const v4, 0x7f0701fa

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v10, ""

    aput-object v10, v6, v8

    invoke-static {v2, v4, v6}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v30

    goto/16 :goto_5da

    .line 430
    :cond_8f6
    const-string v2, "EncryptedChatStartedIncoming"

    const v4, 0x7f0701f9

    invoke-static {v2, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v30

    goto/16 :goto_5da

    .line 435
    :cond_901
    const/16 v26, 0x0

    .line 436
    .local v26, "fromUser":Lorg/telegram/tgnet/TLRPC$User;
    const/16 v25, 0x0

    .line 437
    .local v25, "fromChat":Lorg/telegram/tgnet/TLRPC$Chat;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->isFromUser()Z

    move-result v2

    if-eqz v2, :cond_939

    .line 438
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v4, v4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v26

    .line 442
    :goto_923
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_messageService;

    if-eqz v2, :cond_950

    .line 443
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v0, v2, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    move-object/from16 v30, v0

    .line 444
    sget-object v21, Lorg/telegram/ui/ActionBar/Theme;->dialogs_messagePrintingPaint:Landroid/text/TextPaint;

    goto/16 :goto_5da

    .line 440
    :cond_939
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v4, v4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v25

    goto :goto_923

    .line 446
    :cond_950
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v2, :cond_b03

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    if-lez v2, :cond_b03

    if-nez v25, :cond_b03

    .line 448
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z

    move-result v2

    if-eqz v2, :cond_9e9

    .line 449
    const-string v2, "FromYou"

    const v4, 0x7f070266

    invoke-static {v2, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v32

    .line 457
    .restart local v32    # "name":Ljava/lang/String;
    :goto_973
    const/16 v19, 0x0

    .line 459
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->caption:Ljava/lang/CharSequence;

    if-eqz v2, :cond_a0d

    .line 460
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->caption:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v29

    .line 461
    .restart local v29    # "mess":Ljava/lang/String;
    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v4, 0x96

    if-le v2, v4, :cond_998

    .line 462
    const/4 v2, 0x0

    const/16 v4, 0x96

    move-object/from16 v0, v29

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v29

    .line 464
    :cond_998
    const-string v2, "%s: %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v32, v4, v6

    const/4 v6, 0x1

    const/16 v8, 0xa

    const/16 v10, 0x20

    move-object/from16 v0, v29

    invoke-virtual {v0, v8, v10}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v6

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/SpannableStringBuilder;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v35

    .line 484
    .end local v29    # "mess":Ljava/lang/String;
    .restart local v35    # "stringBuilder":Landroid/text/SpannableStringBuilder;
    :goto_9b5
    invoke-virtual/range {v35 .. v35}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_9d4

    .line 485
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    const-string v4, "chats_nameMessage"

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v2, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v4, 0x0

    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    const/16 v8, 0x21

    move-object/from16 v0, v35

    invoke-virtual {v0, v2, v4, v6, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 487
    :cond_9d4
    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_messagePaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v2

    const/high16 v4, 0x41a00000    # 20.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    const/4 v6, 0x0

    move-object/from16 v0, v35

    invoke-static {v0, v2, v4, v6}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;IZ)Ljava/lang/CharSequence;

    move-result-object v30

    .line 488
    goto/16 :goto_5da

    .line 450
    .end local v32    # "name":Ljava/lang/String;
    .end local v35    # "stringBuilder":Landroid/text/SpannableStringBuilder;
    :cond_9e9
    if-eqz v26, :cond_9f9

    .line 451
    invoke-static/range {v26 .. v26}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "\n"

    const-string v6, ""

    invoke-virtual {v2, v4, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v32

    .restart local v32    # "name":Ljava/lang/String;
    goto/16 :goto_973

    .line 452
    .end local v32    # "name":Ljava/lang/String;
    :cond_9f9
    if-eqz v25, :cond_a09

    .line 453
    move-object/from16 v0, v25

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    const-string v4, "\n"

    const-string v6, ""

    invoke-virtual {v2, v4, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v32

    .restart local v32    # "name":Ljava/lang/String;
    goto/16 :goto_973

    .line 455
    .end local v32    # "name":Ljava/lang/String;
    :cond_a09
    const-string v32, "DELETED"

    .restart local v32    # "name":Ljava/lang/String;
    goto/16 :goto_973

    .line 465
    :cond_a0d
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz v2, :cond_ab7

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->isMediaEmpty()Z

    move-result v2

    if-nez v2, :cond_ab7

    .line 466
    sget-object v21, Lorg/telegram/ui/ActionBar/Theme;->dialogs_messagePrintingPaint:Landroid/text/TextPaint;

    .line 467
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGame;

    if-eqz v2, :cond_a6c

    .line 468
    const-string v2, "%s: \ud83c\udfae %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v32, v4, v6

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v8, v8, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$MessageMedia;->game:Lorg/telegram/tgnet/TLRPC$TL_game;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$TL_game;->title:Ljava/lang/String;

    aput-object v8, v4, v6

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/SpannableStringBuilder;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v35

    .line 474
    .restart local v35    # "stringBuilder":Landroid/text/SpannableStringBuilder;
    :goto_a4e
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    const-string v4, "chats_attachMessage"

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v2, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x2

    invoke-virtual/range {v35 .. v35}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    const/16 v8, 0x21

    move-object/from16 v0, v35

    invoke-virtual {v0, v2, v4, v6, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_9b5

    .line 469
    .end local v35    # "stringBuilder":Landroid/text/SpannableStringBuilder;
    :cond_a6c
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget v2, v2, Lorg/telegram/messenger/MessageObject;->type:I

    const/16 v4, 0xe

    if-ne v2, v4, :cond_a9d

    .line 470
    const-string v2, "%s: \ud83c\udfa7 %s - %s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v32, v4, v6

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v8}, Lorg/telegram/messenger/MessageObject;->getMusicAuthor()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v6

    const/4 v6, 0x2

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v8}, Lorg/telegram/messenger/MessageObject;->getMusicTitle()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v6

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/SpannableStringBuilder;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v35

    .restart local v35    # "stringBuilder":Landroid/text/SpannableStringBuilder;
    goto :goto_a4e

    .line 472
    .end local v35    # "stringBuilder":Landroid/text/SpannableStringBuilder;
    :cond_a9d
    const-string v2, "%s: %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v32, v4, v6

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v8, v8, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    aput-object v8, v4, v6

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/SpannableStringBuilder;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v35

    .restart local v35    # "stringBuilder":Landroid/text/SpannableStringBuilder;
    goto :goto_a4e

    .line 475
    .end local v35    # "stringBuilder":Landroid/text/SpannableStringBuilder;
    :cond_ab7
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    if-eqz v2, :cond_afb

    .line 476
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v2, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    move-object/from16 v29, v0

    .line 477
    .restart local v29    # "mess":Ljava/lang/String;
    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v4, 0x96

    if-le v2, v4, :cond_adc

    .line 478
    const/4 v2, 0x0

    const/16 v4, 0x96

    move-object/from16 v0, v29

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v29

    .line 480
    :cond_adc
    const-string v2, "%s: %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v32, v4, v6

    const/4 v6, 0x1

    const/16 v8, 0xa

    const/16 v10, 0x20

    move-object/from16 v0, v29

    invoke-virtual {v0, v8, v10}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v6

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/SpannableStringBuilder;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v35

    .line 481
    .restart local v35    # "stringBuilder":Landroid/text/SpannableStringBuilder;
    goto/16 :goto_9b5

    .line 482
    .end local v29    # "mess":Ljava/lang/String;
    .end local v35    # "stringBuilder":Landroid/text/SpannableStringBuilder;
    :cond_afb
    const-string v2, ""

    invoke-static {v2}, Landroid/text/SpannableStringBuilder;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v35

    .restart local v35    # "stringBuilder":Landroid/text/SpannableStringBuilder;
    goto/16 :goto_9b5

    .line 489
    .end local v32    # "name":Ljava/lang/String;
    .end local v35    # "stringBuilder":Landroid/text/SpannableStringBuilder;
    :cond_b03
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->caption:Ljava/lang/CharSequence;

    if-eqz v2, :cond_b15

    .line 490
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v0, v2, Lorg/telegram/messenger/MessageObject;->caption:Ljava/lang/CharSequence;

    move-object/from16 v30, v0

    goto/16 :goto_5da

    .line 492
    :cond_b15
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGame;

    if-eqz v2, :cond_b58

    .line 493
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\ud83c\udfae "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v4, v4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->game:Lorg/telegram/tgnet/TLRPC$TL_game;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_game;->title:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    .line 499
    :goto_b40
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz v2, :cond_5da

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->isMediaEmpty()Z

    move-result v2

    if-nez v2, :cond_5da

    .line 500
    sget-object v21, Lorg/telegram/ui/ActionBar/Theme;->dialogs_messagePrintingPaint:Landroid/text/TextPaint;

    goto/16 :goto_5da

    .line 494
    :cond_b58
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget v2, v2, Lorg/telegram/messenger/MessageObject;->type:I

    const/16 v4, 0xe

    if-ne v2, v4, :cond_b82

    .line 495
    const-string v2, "\ud83c\udfa7 %s - %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v8}, Lorg/telegram/messenger/MessageObject;->getMusicAuthor()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v6

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v8}, Lorg/telegram/messenger/MessageObject;->getMusicTitle()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v6

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v30

    goto :goto_b40

    .line 497
    :cond_b82
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v0, v2, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    move-object/from16 v30, v0

    goto :goto_b40

    .line 511
    .end local v25    # "fromChat":Lorg/telegram/tgnet/TLRPC$Chat;
    .end local v26    # "fromUser":Lorg/telegram/tgnet/TLRPC$User;
    :cond_b8b
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Cells/DialogCell;->lastMessageDate:I

    if-eqz v2, :cond_b9c

    .line 512
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Cells/DialogCell;->lastMessageDate:I

    int-to-long v14, v2

    invoke-static {v14, v15}, Lorg/telegram/messenger/LocaleController;->stringForMessageListDate(J)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_5eb

    .line 513
    :cond_b9c
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    if-eqz v2, :cond_5eb

    .line 514
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    int-to-long v14, v2

    invoke-static {v14, v15}, Lorg/telegram/messenger/LocaleController;->stringForMessageListDate(J)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_5eb

    .line 524
    :cond_bb1
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Cells/DialogCell;->unreadCount:I

    if-eqz v2, :cond_c00

    .line 525
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell;->drawCount:Z

    .line 526
    const-string v2, "%d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v8, v0, Lorg/telegram/ui/Cells/DialogCell;->unreadCount:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v4, v6

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    .line 531
    :goto_bd0
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->isOut()Z

    move-result v2

    if-eqz v2, :cond_c69

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->draftMessage:Lorg/telegram/tgnet/TLRPC$DraftMessage;

    if-nez v2, :cond_c69

    .line 532
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->isSending()Z

    move-result v2

    if-eqz v2, :cond_c06

    .line 533
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell;->drawCheck1:Z

    .line 534
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell;->drawCheck2:Z

    .line 535
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell;->drawClock:Z

    .line 536
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell;->drawError:Z

    goto/16 :goto_60a

    .line 528
    :cond_c00
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell;->drawCount:Z

    goto :goto_bd0

    .line 537
    :cond_c06
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->isSendError()Z

    move-result v2

    if-eqz v2, :cond_c2b

    .line 538
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell;->drawCheck1:Z

    .line 539
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell;->drawCheck2:Z

    .line 540
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell;->drawClock:Z

    .line 541
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell;->drawError:Z

    .line 542
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell;->drawCount:Z

    goto/16 :goto_60a

    .line 543
    :cond_c2b
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->isSent()Z

    move-result v2

    if-eqz v2, :cond_60a

    .line 544
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->isUnread()Z

    move-result v2

    if-eqz v2, :cond_c51

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v2}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v2

    if-eqz v2, :cond_c67

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez v2, :cond_c67

    :cond_c51
    const/4 v2, 0x1

    :goto_c52
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell;->drawCheck1:Z

    .line 545
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell;->drawCheck2:Z

    .line 546
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell;->drawClock:Z

    .line 547
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell;->drawError:Z

    goto/16 :goto_60a

    .line 544
    :cond_c67
    const/4 v2, 0x0

    goto :goto_c52

    .line 550
    :cond_c69
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell;->drawCheck1:Z

    .line 551
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell;->drawCheck2:Z

    .line 552
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell;->drawClock:Z

    .line 553
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell;->drawError:Z

    goto/16 :goto_60a

    .line 559
    :cond_c7f
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v2, :cond_618

    .line 562
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$User;->id:I

    div-int/lit16 v2, v2, 0x3e8

    const/16 v4, 0x309

    if-eq v2, v4, :cond_d29

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$User;->id:I

    div-int/lit16 v2, v2, 0x3e8

    const/16 v4, 0x14d

    if-eq v2, v4, :cond_d29

    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/ContactsController;->contactsDict:Landroid/util/SparseArray;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_d29

    .line 563
    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/ContactsController;->contactsDict:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-nez v2, :cond_cea

    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v2

    iget-boolean v2, v2, Lorg/telegram/messenger/ContactsController;->contactsLoaded:Z

    if-eqz v2, :cond_ccd

    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/ContactsController;->isLoadingContacts()Z

    move-result v2

    if-eqz v2, :cond_cea

    .line 564
    :cond_ccd
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v2}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v33

    .line 575
    :goto_cd5
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    if-eqz v2, :cond_cdd

    .line 576
    sget-object v22, Lorg/telegram/ui/ActionBar/Theme;->dialogs_nameEncryptedPaint:Landroid/text/TextPaint;

    .line 578
    :cond_cdd
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell;->drawNameBot:Z

    if-nez v2, :cond_618

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell;->drawStatus:Z

    goto/16 :goto_618

    .line 566
    :cond_cea
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    if-eqz v2, :cond_d20

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_d20

    .line 567
    invoke-static {}, Lorg/telegram/PhoneFormat/PhoneFormat;->getInstance()Lorg/telegram/PhoneFormat/PhoneFormat;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "+"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/telegram/PhoneFormat/PhoneFormat;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    goto :goto_cd5

    .line 569
    :cond_d20
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v2}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v33

    goto :goto_cd5

    .line 573
    :cond_d29
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v2}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v33

    goto :goto_cd5

    .line 590
    .end local v27    # "lastDate":I
    .restart local v5    # "timeWidth":I
    :cond_d32
    const/high16 v2, 0x41700000    # 15.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/DialogCell;->timeLeft:I

    goto/16 :goto_19c

    .line 598
    :cond_d3e
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->getMeasuredWidth()I

    move-result v2

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    sub-int/2addr v2, v4

    sget v4, Lorg/telegram/messenger/AndroidUtilities;->leftBaseline:I

    int-to-float v4, v4

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int/2addr v2, v4

    sub-int v9, v2, v5

    .line 599
    .restart local v9    # "nameWidth":I
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    add-int/2addr v2, v5

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    goto/16 :goto_1b2

    .line 603
    :cond_d5c
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell;->drawNameGroup:Z

    if-eqz v2, :cond_d72

    .line 604
    const/high16 v2, 0x40800000    # 4.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->dialogs_groupDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    add-int/2addr v2, v4

    sub-int/2addr v9, v2

    goto/16 :goto_1c6

    .line 605
    :cond_d72
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell;->drawNameBroadcast:Z

    if-eqz v2, :cond_d88

    .line 606
    const/high16 v2, 0x40800000    # 4.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->dialogs_broadcastDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    add-int/2addr v2, v4

    sub-int/2addr v9, v2

    goto/16 :goto_1c6

    .line 607
    :cond_d88
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell;->drawNameBot:Z

    if-eqz v2, :cond_1c6

    .line 608
    const/high16 v2, 0x40800000    # 4.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->dialogs_botDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    add-int/2addr v2, v4

    sub-int/2addr v9, v2

    goto/16 :goto_1c6

    .line 616
    .restart local v36    # "w":I
    :cond_d9e
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Cells/DialogCell;->timeLeft:I

    add-int/2addr v2, v5

    const/high16 v4, 0x40a00000    # 5.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    add-int/2addr v2, v4

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/DialogCell;->checkDrawLeft:I

    .line 617
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    add-int v2, v2, v36

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    goto/16 :goto_1ea

    .line 619
    .end local v36    # "w":I
    :cond_dba
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell;->drawCheck2:Z

    if-eqz v2, :cond_1ea

    .line 620
    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_checkDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    const/high16 v4, 0x40a00000    # 5.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    add-int v36, v2, v4

    .line 621
    .restart local v36    # "w":I
    sub-int v9, v9, v36

    .line 622
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell;->drawCheck1:Z

    if-eqz v2, :cond_e3c

    .line 623
    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_halfCheckDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    const/high16 v4, 0x41000000    # 8.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int/2addr v2, v4

    sub-int/2addr v9, v2

    .line 624
    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v2, :cond_e03

    .line 625
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Cells/DialogCell;->timeLeft:I

    sub-int v2, v2, v36

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/DialogCell;->halfCheckDrawLeft:I

    .line 626
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Cells/DialogCell;->halfCheckDrawLeft:I

    const/high16 v4, 0x40b00000    # 5.5f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int/2addr v2, v4

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/DialogCell;->checkDrawLeft:I

    goto/16 :goto_1ea

    .line 628
    :cond_e03
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Cells/DialogCell;->timeLeft:I

    add-int/2addr v2, v5

    const/high16 v4, 0x40a00000    # 5.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    add-int/2addr v2, v4

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/DialogCell;->checkDrawLeft:I

    .line 629
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Cells/DialogCell;->checkDrawLeft:I

    const/high16 v4, 0x40b00000    # 5.5f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    add-int/2addr v2, v4

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/DialogCell;->halfCheckDrawLeft:I

    .line 630
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->dialogs_halfCheckDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    add-int v4, v4, v36

    const/high16 v6, 0x41000000    # 8.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    sub-int/2addr v4, v6

    add-int/2addr v2, v4

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    goto/16 :goto_1ea

    .line 633
    :cond_e3c
    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v2, :cond_e4c

    .line 634
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Cells/DialogCell;->timeLeft:I

    sub-int v2, v2, v36

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/DialogCell;->checkDrawLeft:I

    goto/16 :goto_1ea

    .line 636
    :cond_e4c
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Cells/DialogCell;->timeLeft:I

    add-int/2addr v2, v5

    const/high16 v4, 0x40a00000    # 5.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    add-int/2addr v2, v4

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/DialogCell;->checkDrawLeft:I

    .line 637
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    add-int v2, v2, v36

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    goto/16 :goto_1ea

    .line 648
    .end local v36    # "w":I
    :cond_e68
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell;->drawVerified:Z

    if-eqz v2, :cond_214

    .line 649
    const/high16 v2, 0x40c00000    # 6.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->dialogs_verifiedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    add-int v36, v2, v4

    .line 650
    .restart local v36    # "w":I
    sub-int v9, v9, v36

    .line 651
    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_214

    .line 652
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    add-int v2, v2, v36

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    goto/16 :goto_214

    .line 660
    .end local v36    # "w":I
    :catch_e8e
    move-exception v24

    .line 661
    .local v24, "e":Ljava/lang/Exception;
    invoke-static/range {v24 .. v24}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_24a

    .line 668
    .end local v24    # "e":Ljava/lang/Exception;
    .restart local v31    # "messageWidth":I
    :cond_e94
    const/high16 v2, 0x41100000    # 9.0f

    goto/16 :goto_270

    .line 670
    :cond_e98
    const/high16 v2, 0x41800000    # 16.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/DialogCell;->messageLeft:I

    .line 671
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->getMeasuredWidth()I

    move-result v4

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_eb6

    const/high16 v2, 0x42820000    # 65.0f

    :goto_eae
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int v18, v4, v2

    .restart local v18    # "avatarLeft":I
    goto/16 :goto_274

    .end local v18    # "avatarLeft":I
    :cond_eb6
    const/high16 v2, 0x42740000    # 61.0f

    goto :goto_eae

    .line 680
    .end local v31    # "messageWidth":I
    .restart local v13    # "messageWidth":I
    .restart local v18    # "avatarLeft":I
    .restart local v36    # "w":I
    :cond_eb9
    const/high16 v2, 0x41300000    # 11.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/DialogCell;->errorLeft:I

    .line 681
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Cells/DialogCell;->messageLeft:I

    add-int v2, v2, v36

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/DialogCell;->messageLeft:I

    goto/16 :goto_2ae

    .line 683
    .end local v13    # "messageWidth":I
    .end local v36    # "w":I
    .restart local v31    # "messageWidth":I
    :cond_ecf
    if-eqz v20, :cond_f48

    .line 684
    const/high16 v2, 0x41400000    # 12.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->dialogs_countTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v4

    float-to-double v14, v4

    invoke-static {v14, v15}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v14

    double-to-int v4, v14

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/DialogCell;->countWidth:I

    .line 685
    new-instance v10, Landroid/text/StaticLayout;

    sget-object v12, Lorg/telegram/ui/ActionBar/Theme;->dialogs_countTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget v13, v0, Lorg/telegram/ui/Cells/DialogCell;->countWidth:I

    sget-object v14, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    const/high16 v15, 0x3f800000    # 1.0f

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v11, v20

    invoke-direct/range {v10 .. v17}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    move-object/from16 v0, p0

    iput-object v10, v0, Lorg/telegram/ui/Cells/DialogCell;->countLayout:Landroid/text/StaticLayout;

    .line 686
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Cells/DialogCell;->countWidth:I

    const/high16 v4, 0x41900000    # 18.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    add-int v36, v2, v4

    .line 687
    .restart local v36    # "w":I
    sub-int v13, v31, v36

    .line 688
    .end local v31    # "messageWidth":I
    .restart local v13    # "messageWidth":I
    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v2, :cond_f33

    .line 689
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->getMeasuredWidth()I

    move-result v2

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/ui/Cells/DialogCell;->countWidth:I

    sub-int/2addr v2, v4

    const/high16 v4, 0x41980000    # 19.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int/2addr v2, v4

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/DialogCell;->countLeft:I

    .line 694
    :goto_f2c
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell;->drawCount:Z

    goto/16 :goto_2ae

    .line 691
    :cond_f33
    const/high16 v2, 0x41980000    # 19.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/DialogCell;->countLeft:I

    .line 692
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Cells/DialogCell;->messageLeft:I

    add-int v2, v2, v36

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/DialogCell;->messageLeft:I

    goto :goto_f2c

    .line 696
    .end local v13    # "messageWidth":I
    .end local v36    # "w":I
    .restart local v31    # "messageWidth":I
    :cond_f48
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell;->drawPin:Z

    if-eqz v2, :cond_106f

    .line 697
    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_pinnedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    const/high16 v4, 0x41000000    # 8.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    add-int v36, v2, v4

    .line 698
    .restart local v36    # "w":I
    sub-int v13, v31, v36

    .line 699
    .end local v31    # "messageWidth":I
    .restart local v13    # "messageWidth":I
    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v2, :cond_f7f

    .line 700
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->getMeasuredWidth()I

    move-result v2

    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->dialogs_pinnedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    sub-int/2addr v2, v4

    const/high16 v4, 0x41600000    # 14.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int/2addr v2, v4

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/DialogCell;->pinLeft:I

    .line 706
    .end local v36    # "w":I
    :goto_f78
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell;->drawCount:Z

    goto/16 :goto_2ae

    .line 702
    .restart local v36    # "w":I
    :cond_f7f
    const/high16 v2, 0x41600000    # 14.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/DialogCell;->pinLeft:I

    .line 703
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Cells/DialogCell;->messageLeft:I

    add-int v2, v2, v36

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/DialogCell;->messageLeft:I

    goto :goto_f78

    .line 724
    .end local v36    # "w":I
    .restart local v11    # "messageStringFinal":Ljava/lang/CharSequence;
    :catch_f94
    move-exception v24

    .line 725
    .restart local v24    # "e":Ljava/lang/Exception;
    invoke-static/range {v24 .. v24}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_316

    .line 736
    .end local v24    # "e":Ljava/lang/Exception;
    .restart local v28    # "left":F
    .restart local v38    # "widthpx":D
    :cond_f9a
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell;->drawVerified:Z

    if-eqz v2, :cond_374

    .line 737
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    int-to-double v14, v2

    int-to-double v0, v9

    move-wide/from16 v16, v0

    sub-double v16, v16, v38

    add-double v14, v14, v16

    const/high16 v2, 0x40c00000    # 6.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-double v0, v2

    move-wide/from16 v16, v0

    sub-double v14, v14, v16

    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_verifiedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    int-to-double v0, v2

    move-wide/from16 v16, v0

    sub-double v14, v14, v16

    double-to-int v2, v14

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/DialogCell;->nameMuteLeft:I

    goto/16 :goto_374

    .line 755
    .end local v28    # "left":F
    .end local v38    # "widthpx":D
    :cond_fc9
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->nameLayout:Landroid/text/StaticLayout;

    if-eqz v2, :cond_102b

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->nameLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v2

    if-lez v2, :cond_102b

    .line 756
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->nameLayout:Landroid/text/StaticLayout;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/text/StaticLayout;->getLineRight(I)F

    move-result v28

    .line 757
    .restart local v28    # "left":F
    int-to-float v2, v9

    cmpl-float v2, v28, v2

    if-nez v2, :cond_100b

    .line 758
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->nameLayout:Landroid/text/StaticLayout;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v2

    float-to-double v14, v2

    invoke-static {v14, v15}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v38

    .line 759
    .restart local v38    # "widthpx":D
    int-to-double v14, v9

    cmpg-double v2, v38, v14

    if-gez v2, :cond_100b

    .line 760
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    int-to-double v14, v2

    int-to-double v0, v9

    move-wide/from16 v16, v0

    sub-double v16, v16, v38

    sub-double v14, v14, v16

    double-to-int v2, v14

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    .line 763
    .end local v38    # "widthpx":D
    :cond_100b
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell;->dialogMuted:Z

    if-nez v2, :cond_1017

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell;->drawVerified:Z

    if-eqz v2, :cond_102b

    .line 764
    :cond_1017
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    int-to-float v2, v2

    add-float v2, v2, v28

    const/high16 v4, 0x40c00000    # 6.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v2, v4

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/DialogCell;->nameMuteLeft:I

    .line 767
    .end local v28    # "left":F
    :cond_102b
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->messageLayout:Landroid/text/StaticLayout;

    if-eqz v2, :cond_3d1

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->messageLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v2

    if-lez v2, :cond_3d1

    .line 768
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->messageLayout:Landroid/text/StaticLayout;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/text/StaticLayout;->getLineRight(I)F

    move-result v28

    .line 769
    .restart local v28    # "left":F
    int-to-float v2, v13

    cmpl-float v2, v28, v2

    if-nez v2, :cond_3d1

    .line 770
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->messageLayout:Landroid/text/StaticLayout;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v2

    float-to-double v14, v2

    invoke-static {v14, v15}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v38

    .line 771
    .restart local v38    # "widthpx":D
    int-to-double v14, v13

    cmpg-double v2, v38, v14

    if-gez v2, :cond_3d1

    .line 772
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Cells/DialogCell;->messageLeft:I

    int-to-double v14, v2

    int-to-double v0, v13

    move-wide/from16 v16, v0

    sub-double v16, v16, v38

    sub-double v14, v14, v16

    double-to-int v2, v14

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/DialogCell;->messageLeft:I

    goto/16 :goto_3d1

    .end local v11    # "messageStringFinal":Ljava/lang/CharSequence;
    .end local v13    # "messageWidth":I
    .end local v28    # "left":F
    .end local v38    # "widthpx":D
    .restart local v31    # "messageWidth":I
    :cond_106f
    move/from16 v13, v31

    .end local v31    # "messageWidth":I
    .restart local v13    # "messageWidth":I
    goto/16 :goto_f78
.end method

.method public checkCurrentDialogIndex()V
    .registers 10

    .prologue
    const/4 v8, 0x0

    .line 812
    iget v3, p0, Lorg/telegram/ui/Cells/DialogCell;->index:I

    invoke-direct {p0}, Lorg/telegram/ui/Cells/DialogCell;->getDialogsArray()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_8c

    .line 813
    invoke-direct {p0}, Lorg/telegram/ui/Cells/DialogCell;->getDialogsArray()Ljava/util/ArrayList;

    move-result-object v3

    iget v4, p0, Lorg/telegram/ui/Cells/DialogCell;->index:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    .line 814
    .local v0, "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    iget-wide v4, p0, Lorg/telegram/ui/Cells/DialogCell;->currentDialogId:J

    invoke-static {v4, v5}, Lorg/telegram/messenger/query/DraftQuery;->getDraft(J)Lorg/telegram/tgnet/TLRPC$DraftMessage;

    move-result-object v1

    .line 815
    .local v1, "newDraftMessage":Lorg/telegram/tgnet/TLRPC$DraftMessage;
    const/4 v2, 0x0

    .line 816
    .local v2, "newMessageObject":Lorg/telegram/messenger/MessageObject;
    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v4, "mainconfig"

    invoke-virtual {v3, v4, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "hide_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, p0, Lorg/telegram/ui/Cells/DialogCell;->currentDialogId:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8d

    .line 817
    const/4 v3, 0x0

    iput-object v3, p0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    .line 818
    const/4 v2, 0x0

    .line 823
    :goto_4b
    iget-wide v4, p0, Lorg/telegram/ui/Cells/DialogCell;->currentDialogId:J

    iget-wide v6, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_85

    iget-object v3, p0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    if-eqz v3, :cond_61

    iget-object v3, p0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    .line 824
    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v3

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->top_message:I

    if-ne v3, v4, :cond_85

    :cond_61
    if-eqz v2, :cond_6b

    iget-object v3, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->edit_date:I

    iget v4, p0, Lorg/telegram/ui/Cells/DialogCell;->currentEditDate:I

    if-ne v3, v4, :cond_85

    :cond_6b
    iget v3, p0, Lorg/telegram/ui/Cells/DialogCell;->unreadCount:I

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->unread_count:I

    if-ne v3, v4, :cond_85

    iget-object v3, p0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    if-ne v3, v2, :cond_85

    iget-object v3, p0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    if-nez v3, :cond_7b

    if-nez v2, :cond_85

    :cond_7b
    iget-object v3, p0, Lorg/telegram/ui/Cells/DialogCell;->draftMessage:Lorg/telegram/tgnet/TLRPC$DraftMessage;

    if-ne v1, v3, :cond_85

    iget-boolean v3, p0, Lorg/telegram/ui/Cells/DialogCell;->drawPin:Z

    iget-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pinned:Z

    if-eq v3, v4, :cond_8c

    .line 829
    :cond_85
    iget-wide v4, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    iput-wide v4, p0, Lorg/telegram/ui/Cells/DialogCell;->currentDialogId:J

    .line 830
    invoke-virtual {p0, v8}, Lorg/telegram/ui/Cells/DialogCell;->update(I)V

    .line 833
    .end local v0    # "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    .end local v1    # "newDraftMessage":Lorg/telegram/tgnet/TLRPC$DraftMessage;
    .end local v2    # "newMessageObject":Lorg/telegram/messenger/MessageObject;
    :cond_8c
    return-void

    .line 821
    .restart local v0    # "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    .restart local v1    # "newDraftMessage":Lorg/telegram/tgnet/TLRPC$DraftMessage;
    .restart local v2    # "newMessageObject":Lorg/telegram/messenger/MessageObject;
    :cond_8d
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController;->dialogMessage:Ljava/util/HashMap;

    iget-wide v4, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "newMessageObject":Lorg/telegram/messenger/MessageObject;
    check-cast v2, Lorg/telegram/messenger/MessageObject;

    .restart local v2    # "newMessageObject":Lorg/telegram/messenger/MessageObject;
    goto :goto_4b
.end method

.method public getDialogId()J
    .registers 3

    .prologue
    .line 182
    iget-wide v0, p0, Lorg/telegram/ui/Cells/DialogCell;->currentDialogId:J

    return-wide v0
.end method

.method public hasOverlappingRendering()Z
    .registers 2

    .prologue
    .line 1109
    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .registers 2

    .prologue
    .line 193
    invoke-super {p0}, Lorg/telegram/ui/Cells/BaseCell;->onAttachedToWindow()V

    .line 194
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onAttachedToWindow()Z

    .line 195
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .prologue
    .line 187
    invoke-super {p0}, Lorg/telegram/ui/Cells/BaseCell;->onDetachedFromWindow()V

    .line 188
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onDetachedFromWindow()V

    .line 189
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 14
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v11, 0x40b00000    # 5.5f

    const/high16 v10, 0x41b80000    # 23.0f

    const/high16 v8, 0x41840000    # 16.5f

    const/high16 v9, 0x41380000    # 11.5f

    const/4 v1, 0x0

    .line 980
    iget-wide v2, p0, Lorg/telegram/ui/Cells/DialogCell;->currentDialogId:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_16

    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->customDialog:Lorg/telegram/ui/Cells/DialogCell$CustomDialog;

    if-nez v0, :cond_16

    .line 1089
    :cond_15
    :goto_15
    return-void

    .line 984
    :cond_16
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->isSelected:Z

    if-eqz v0, :cond_2b

    .line 985
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/DialogCell;->getMeasuredWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/DialogCell;->getMeasuredHeight()I

    move-result v0

    int-to-float v4, v0

    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->dialogs_tabletSeletedPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 987
    :cond_2b
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->drawPin:Z

    if-eqz v0, :cond_40

    .line 988
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/DialogCell;->getMeasuredWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/DialogCell;->getMeasuredHeight()I

    move-result v0

    int-to-float v4, v0

    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->dialogs_pinnedPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 991
    :cond_40
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->drawNameLock:Z

    if-eqz v0, :cond_164

    .line 992
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_lockDrawable:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lorg/telegram/ui/Cells/DialogCell;->nameLockLeft:I

    iget v3, p0, Lorg/telegram/ui/Cells/DialogCell;->nameLockTop:I

    invoke-virtual {p0, v0, v2, v3}, Lorg/telegram/ui/Cells/DialogCell;->setDrawableBounds(Landroid/graphics/drawable/Drawable;II)V

    .line 993
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_lockDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1006
    :cond_52
    :goto_52
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->nameLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_6e

    .line 1007
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1008
    iget v0, p0, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    int-to-float v0, v0

    const/high16 v2, 0x41500000    # 13.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1009
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->nameLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 1010
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 1013
    :cond_6e
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1014
    iget v0, p0, Lorg/telegram/ui/Cells/DialogCell;->timeLeft:I

    int-to-float v0, v0

    iget v2, p0, Lorg/telegram/ui/Cells/DialogCell;->timeTop:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1015
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->timeLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 1016
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 1018
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->messageLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_9a

    .line 1019
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1020
    iget v0, p0, Lorg/telegram/ui/Cells/DialogCell;->messageLeft:I

    int-to-float v0, v0

    iget v2, p0, Lorg/telegram/ui/Cells/DialogCell;->messageTop:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1022
    :try_start_92
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->messageLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V
    :try_end_97
    .catch Ljava/lang/Exception; {:try_start_92 .. :try_end_97} :catch_1a0

    .line 1026
    :goto_97
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 1029
    :cond_9a
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->drawClock:Z

    if-eqz v0, :cond_1a6

    .line 1030
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_clockDrawable:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lorg/telegram/ui/Cells/DialogCell;->checkDrawLeft:I

    iget v3, p0, Lorg/telegram/ui/Cells/DialogCell;->checkDrawTop:I

    invoke-virtual {p0, v0, v2, v3}, Lorg/telegram/ui/Cells/DialogCell;->setDrawableBounds(Landroid/graphics/drawable/Drawable;II)V

    .line 1031
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_clockDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1044
    :cond_ac
    :goto_ac
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->dialogMuted:Z

    if-eqz v0, :cond_1dc

    iget-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->drawVerified:Z

    if-nez v0, :cond_1dc

    .line 1045
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_muteDrawable:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lorg/telegram/ui/Cells/DialogCell;->nameMuteLeft:I

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {p0, v0, v2, v3}, Lorg/telegram/ui/Cells/DialogCell;->setDrawableBounds(Landroid/graphics/drawable/Drawable;II)V

    .line 1046
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_muteDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1054
    :cond_c4
    :goto_c4
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->drawError:Z

    if-eqz v0, :cond_202

    .line 1055
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->rect:Landroid/graphics/RectF;

    iget v2, p0, Lorg/telegram/ui/Cells/DialogCell;->errorLeft:I

    int-to-float v2, v2

    iget v3, p0, Lorg/telegram/ui/Cells/DialogCell;->errorTop:I

    int-to-float v3, v3

    iget v4, p0, Lorg/telegram/ui/Cells/DialogCell;->errorLeft:I

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    iget v5, p0, Lorg/telegram/ui/Cells/DialogCell;->errorTop:I

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    add-int/2addr v5, v8

    int-to-float v5, v5

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1056
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->rect:Landroid/graphics/RectF;

    sget v2, Lorg/telegram/messenger/AndroidUtilities;->density:F

    mul-float/2addr v2, v9

    sget v3, Lorg/telegram/messenger/AndroidUtilities;->density:F

    mul-float/2addr v3, v9

    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->dialogs_errorPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1057
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_errorDrawable:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lorg/telegram/ui/Cells/DialogCell;->errorLeft:I

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    add-int/2addr v2, v3

    iget v3, p0, Lorg/telegram/ui/Cells/DialogCell;->errorTop:I

    const/high16 v4, 0x40a00000    # 5.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p0, v0, v2, v3}, Lorg/telegram/ui/Cells/DialogCell;->setDrawableBounds(Landroid/graphics/drawable/Drawable;II)V

    .line 1058
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_errorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1074
    :cond_10a
    :goto_10a
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->useSeparator:Z

    if-eqz v0, :cond_133

    .line 1075
    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_275

    .line 1076
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/DialogCell;->getMeasuredHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v2, v0

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/DialogCell;->getMeasuredWidth()I

    move-result v0

    sget v3, Lorg/telegram/messenger/AndroidUtilities;->leftBaseline:I

    int-to-float v3, v3

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int/2addr v0, v3

    int-to-float v3, v0

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/DialogCell;->getMeasuredHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v4, v0

    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1082
    :cond_133
    :goto_133
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    .line 1085
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->drawStatus:Z

    if-eqz v0, :cond_15

    .line 1086
    iget-object v1, p0, Lorg/telegram/ui/Cells/DialogCell;->statusBG:Landroid/graphics/drawable/GradientDrawable;

    const/high16 v0, 0x42100000    # 36.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iget v2, p0, Lorg/telegram/ui/Cells/DialogCell;->avatarLeftMargin:I

    add-int/2addr v2, v0

    const/high16 v0, 0x42380000    # 46.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    const/high16 v0, 0x41800000    # 16.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    const/high16 v0, 0x41800000    # 16.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Cells/DialogCell;->setDrawableBounds(Landroid/graphics/drawable/Drawable;IIII)V

    .line 1087
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->statusBG:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_15

    .line 994
    :cond_164
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->drawNameGroup:Z

    if-eqz v0, :cond_178

    .line 995
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_groupDrawable:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lorg/telegram/ui/Cells/DialogCell;->nameLockLeft:I

    iget v3, p0, Lorg/telegram/ui/Cells/DialogCell;->nameLockTop:I

    invoke-virtual {p0, v0, v2, v3}, Lorg/telegram/ui/Cells/DialogCell;->setDrawableBounds(Landroid/graphics/drawable/Drawable;II)V

    .line 996
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_groupDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_52

    .line 998
    :cond_178
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->drawNameBroadcast:Z

    if-eqz v0, :cond_18c

    .line 999
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_broadcastDrawable:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lorg/telegram/ui/Cells/DialogCell;->nameLockLeft:I

    iget v3, p0, Lorg/telegram/ui/Cells/DialogCell;->nameLockTop:I

    invoke-virtual {p0, v0, v2, v3}, Lorg/telegram/ui/Cells/DialogCell;->setDrawableBounds(Landroid/graphics/drawable/Drawable;II)V

    .line 1000
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_broadcastDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_52

    .line 1001
    :cond_18c
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->drawNameBot:Z

    if-eqz v0, :cond_52

    .line 1002
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_botDrawable:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lorg/telegram/ui/Cells/DialogCell;->nameLockLeft:I

    iget v3, p0, Lorg/telegram/ui/Cells/DialogCell;->nameLockTop:I

    invoke-virtual {p0, v0, v2, v3}, Lorg/telegram/ui/Cells/DialogCell;->setDrawableBounds(Landroid/graphics/drawable/Drawable;II)V

    .line 1003
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_botDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_52

    .line 1023
    :catch_1a0
    move-exception v6

    .line 1024
    .local v6, "e":Ljava/lang/Exception;
    invoke-static {v6}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_97

    .line 1032
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_1a6
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->drawCheck2:Z

    if-eqz v0, :cond_ac

    .line 1033
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->drawCheck1:Z

    if-eqz v0, :cond_1cc

    .line 1034
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_halfCheckDrawable:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lorg/telegram/ui/Cells/DialogCell;->halfCheckDrawLeft:I

    iget v3, p0, Lorg/telegram/ui/Cells/DialogCell;->checkDrawTop:I

    invoke-virtual {p0, v0, v2, v3}, Lorg/telegram/ui/Cells/DialogCell;->setDrawableBounds(Landroid/graphics/drawable/Drawable;II)V

    .line 1035
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_halfCheckDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1036
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_checkDrawable:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lorg/telegram/ui/Cells/DialogCell;->checkDrawLeft:I

    iget v3, p0, Lorg/telegram/ui/Cells/DialogCell;->checkDrawTop:I

    invoke-virtual {p0, v0, v2, v3}, Lorg/telegram/ui/Cells/DialogCell;->setDrawableBounds(Landroid/graphics/drawable/Drawable;II)V

    .line 1037
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_checkDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_ac

    .line 1039
    :cond_1cc
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_checkDrawable:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lorg/telegram/ui/Cells/DialogCell;->checkDrawLeft:I

    iget v3, p0, Lorg/telegram/ui/Cells/DialogCell;->checkDrawTop:I

    invoke-virtual {p0, v0, v2, v3}, Lorg/telegram/ui/Cells/DialogCell;->setDrawableBounds(Landroid/graphics/drawable/Drawable;II)V

    .line 1040
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_checkDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_ac

    .line 1047
    :cond_1dc
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->drawVerified:Z

    if-eqz v0, :cond_c4

    .line 1048
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_verifiedDrawable:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lorg/telegram/ui/Cells/DialogCell;->nameMuteLeft:I

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {p0, v0, v2, v3}, Lorg/telegram/ui/Cells/DialogCell;->setDrawableBounds(Landroid/graphics/drawable/Drawable;II)V

    .line 1049
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_verifiedCheckDrawable:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lorg/telegram/ui/Cells/DialogCell;->nameMuteLeft:I

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {p0, v0, v2, v3}, Lorg/telegram/ui/Cells/DialogCell;->setDrawableBounds(Landroid/graphics/drawable/Drawable;II)V

    .line 1050
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_verifiedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1051
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_verifiedCheckDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_c4

    .line 1059
    :cond_202
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->drawCount:Z

    if-eqz v0, :cond_261

    .line 1060
    iget v0, p0, Lorg/telegram/ui/Cells/DialogCell;->countLeft:I

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int v7, v0, v2

    .line 1061
    .local v7, "x":I
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->rect:Landroid/graphics/RectF;

    int-to-float v2, v7

    iget v3, p0, Lorg/telegram/ui/Cells/DialogCell;->countTop:I

    int-to-float v3, v3

    iget v4, p0, Lorg/telegram/ui/Cells/DialogCell;->countWidth:I

    add-int/2addr v4, v7

    const/high16 v5, 0x41300000    # 11.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    iget v5, p0, Lorg/telegram/ui/Cells/DialogCell;->countTop:I

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    add-int/2addr v5, v8

    int-to-float v5, v5

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1062
    iget-object v2, p0, Lorg/telegram/ui/Cells/DialogCell;->rect:Landroid/graphics/RectF;

    sget v0, Lorg/telegram/messenger/AndroidUtilities;->density:F

    mul-float v3, v9, v0

    sget v0, Lorg/telegram/messenger/AndroidUtilities;->density:F

    mul-float v4, v9, v0

    iget-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->dialogMuted:Z

    if-eqz v0, :cond_25e

    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_countGrayPaint:Landroid/graphics/Paint;

    :goto_23a
    invoke-virtual {p1, v2, v3, v4, v0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1063
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1064
    iget v0, p0, Lorg/telegram/ui/Cells/DialogCell;->countLeft:I

    int-to-float v0, v0

    iget v2, p0, Lorg/telegram/ui/Cells/DialogCell;->countTop:I

    const/high16 v3, 0x40800000    # 4.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1065
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->countLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_259

    .line 1066
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->countLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 1068
    :cond_259
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_10a

    .line 1062
    :cond_25e
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_countPaint:Landroid/graphics/Paint;

    goto :goto_23a

    .line 1069
    .end local v7    # "x":I
    :cond_261
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->drawPin:Z

    if-eqz v0, :cond_10a

    .line 1070
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_pinnedDrawable:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lorg/telegram/ui/Cells/DialogCell;->pinLeft:I

    iget v3, p0, Lorg/telegram/ui/Cells/DialogCell;->pinTop:I

    invoke-virtual {p0, v0, v2, v3}, Lorg/telegram/ui/Cells/DialogCell;->setDrawableBounds(Landroid/graphics/drawable/Drawable;II)V

    .line 1071
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_pinnedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_10a

    .line 1078
    :cond_275
    sget v0, Lorg/telegram/messenger/AndroidUtilities;->leftBaseline:I

    int-to-float v0, v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v1, v0

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/DialogCell;->getMeasuredHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v2, v0

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/DialogCell;->getMeasuredWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/DialogCell;->getMeasuredHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v4, v0

    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_133
.end method

.method protected onLayout(ZIIII)V
    .registers 10
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 204
    iget-wide v0, p0, Lorg/telegram/ui/Cells/DialogCell;->currentDialogId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_10

    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->customDialog:Lorg/telegram/ui/Cells/DialogCell$CustomDialog;

    if-nez v0, :cond_10

    .line 205
    invoke-super/range {p0 .. p5}, Lorg/telegram/ui/Cells/BaseCell;->onLayout(ZIIII)V

    .line 211
    :cond_f
    :goto_f
    return-void

    .line 208
    :cond_10
    if-eqz p1, :cond_f

    .line 209
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/DialogCell;->buildLayout()V

    goto :goto_f
.end method

.method protected onMeasure(II)V
    .registers 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 199
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    const/high16 v0, 0x42900000    # 72.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    iget-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->useSeparator:Z

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    :goto_f
    add-int/2addr v0, v2

    invoke-virtual {p0, v1, v0}, Lorg/telegram/ui/Cells/DialogCell;->setMeasuredDimension(II)V

    .line 200
    return-void

    .line 199
    :cond_14
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public setDialog(JLorg/telegram/messenger/MessageObject;I)V
    .registers 8
    .param p1, "dialog_id"    # J
    .param p3, "messageObject"    # Lorg/telegram/messenger/MessageObject;
    .param p4, "date"    # I

    .prologue
    const/4 v1, 0x0

    .line 168
    iput-wide p1, p0, Lorg/telegram/ui/Cells/DialogCell;->currentDialogId:J

    .line 169
    iput-object p3, p0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    .line 170
    iput-boolean v1, p0, Lorg/telegram/ui/Cells/DialogCell;->isDialogCell:Z

    .line 171
    iput p4, p0, Lorg/telegram/ui/Cells/DialogCell;->lastMessageDate:I

    .line 172
    if-eqz p3, :cond_2e

    iget-object v0, p3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->edit_date:I

    :goto_f
    iput v0, p0, Lorg/telegram/ui/Cells/DialogCell;->currentEditDate:I

    .line 173
    iput v1, p0, Lorg/telegram/ui/Cells/DialogCell;->unreadCount:I

    .line 174
    if-eqz p3, :cond_30

    invoke-virtual {p3}, Lorg/telegram/messenger/MessageObject;->isUnread()Z

    move-result v0

    if-eqz v0, :cond_30

    const/4 v0, 0x1

    :goto_1c
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->lastUnreadState:Z

    .line 175
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_2a

    .line 176
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->send_state:I

    iput v0, p0, Lorg/telegram/ui/Cells/DialogCell;->lastSendState:I

    .line 178
    :cond_2a
    invoke-virtual {p0, v1}, Lorg/telegram/ui/Cells/DialogCell;->update(I)V

    .line 179
    return-void

    :cond_2e
    move v0, v1

    .line 172
    goto :goto_f

    :cond_30
    move v0, v1

    .line 174
    goto :goto_1c
.end method

.method public setDialog(Lorg/telegram/tgnet/TLRPC$TL_dialog;II)V
    .registers 6
    .param p1, "dialog"    # Lorg/telegram/tgnet/TLRPC$TL_dialog;
    .param p2, "i"    # I
    .param p3, "type"    # I

    .prologue
    .line 155
    iget-wide v0, p1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    iput-wide v0, p0, Lorg/telegram/ui/Cells/DialogCell;->currentDialogId:J

    .line 156
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->isDialogCell:Z

    .line 157
    iput p2, p0, Lorg/telegram/ui/Cells/DialogCell;->index:I

    .line 158
    iput p3, p0, Lorg/telegram/ui/Cells/DialogCell;->dialogsType:I

    .line 159
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Cells/DialogCell;->update(I)V

    .line 160
    return-void
.end method

.method public setDialog(Lorg/telegram/ui/Cells/DialogCell$CustomDialog;)V
    .registers 3
    .param p1, "dialog"    # Lorg/telegram/ui/Cells/DialogCell$CustomDialog;

    .prologue
    .line 163
    iput-object p1, p0, Lorg/telegram/ui/Cells/DialogCell;->customDialog:Lorg/telegram/ui/Cells/DialogCell$CustomDialog;

    .line 164
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Cells/DialogCell;->update(I)V

    .line 165
    return-void
.end method

.method public setDialogSelected(Z)V
    .registers 3
    .param p1, "value"    # Z

    .prologue
    .line 780
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->isSelected:Z

    if-eq v0, p1, :cond_7

    .line 781
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/DialogCell;->invalidate()V

    .line 783
    :cond_7
    iput-boolean p1, p0, Lorg/telegram/ui/Cells/DialogCell;->isSelected:Z

    .line 784
    return-void
.end method

.method public update(I)V
    .registers 14
    .param p1, "mask"    # I

    .prologue
    .line 836
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->customDialog:Lorg/telegram/ui/Cells/DialogCell$CustomDialog;

    if-eqz v0, :cond_55

    .line 837
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->customDialog:Lorg/telegram/ui/Cells/DialogCell$CustomDialog;

    iget v0, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->date:I

    iput v0, p0, Lorg/telegram/ui/Cells/DialogCell;->lastMessageDate:I

    .line 838
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->customDialog:Lorg/telegram/ui/Cells/DialogCell$CustomDialog;

    iget v0, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->unread_count:I

    if-eqz v0, :cond_53

    const/4 v0, 0x1

    :goto_11
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->lastUnreadState:Z

    .line 839
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->customDialog:Lorg/telegram/ui/Cells/DialogCell$CustomDialog;

    iget v0, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->unread_count:I

    iput v0, p0, Lorg/telegram/ui/Cells/DialogCell;->unreadCount:I

    .line 840
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->customDialog:Lorg/telegram/ui/Cells/DialogCell$CustomDialog;

    iget-boolean v0, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->pinned:Z

    iput-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->drawPin:Z

    .line 841
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->customDialog:Lorg/telegram/ui/Cells/DialogCell$CustomDialog;

    iget-boolean v0, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->muted:Z

    iput-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->dialogMuted:Z

    .line 842
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    iget-object v2, p0, Lorg/telegram/ui/Cells/DialogCell;->customDialog:Lorg/telegram/ui/Cells/DialogCell$CustomDialog;

    iget v2, v2, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->id:I

    iget-object v3, p0, Lorg/telegram/ui/Cells/DialogCell;->customDialog:Lorg/telegram/ui/Cells/DialogCell$CustomDialog;

    iget-object v3, v3, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->name:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(ILjava/lang/String;Ljava/lang/String;Z)V

    .line 843
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    const/4 v1, 0x0

    const-string v2, "50_50"

    iget-object v3, p0, Lorg/telegram/ui/Cells/DialogCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Z)V

    .line 969
    :goto_40
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/DialogCell;->getMeasuredWidth()I

    move-result v0

    if-nez v0, :cond_4c

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/DialogCell;->getMeasuredHeight()I

    move-result v0

    if-eqz v0, :cond_29c

    .line 970
    :cond_4c
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/DialogCell;->buildLayout()V

    .line 975
    :goto_4f
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/DialogCell;->invalidate()V

    .line 976
    :cond_52
    return-void

    .line 838
    :cond_53
    const/4 v0, 0x0

    goto :goto_11

    .line 846
    :cond_55
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->isDialogCell:Z

    if-eqz v0, :cond_1e9

    .line 847
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogs_dict:Ljava/util/concurrent/ConcurrentHashMap;

    iget-wide v2, p0, Lorg/telegram/ui/Cells/DialogCell;->currentDialogId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    .line 848
    .local v8, "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    if-eqz v8, :cond_cd

    if-nez p1, :cond_cd

    .line 849
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v2, "mainconfig"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hide_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lorg/telegram/ui/Cells/DialogCell;->currentDialogId:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1cd

    .line 850
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    .line 854
    :goto_9a
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_1e3

    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isUnread()Z

    move-result v0

    if-eqz v0, :cond_1e3

    const/4 v0, 0x1

    :goto_a7
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->lastUnreadState:Z

    .line 855
    iget v0, v8, Lorg/telegram/tgnet/TLRPC$TL_dialog;->unread_count:I

    iput v0, p0, Lorg/telegram/ui/Cells/DialogCell;->unreadCount:I

    .line 856
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_1e6

    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->edit_date:I

    :goto_b7
    iput v0, p0, Lorg/telegram/ui/Cells/DialogCell;->currentEditDate:I

    .line 857
    iget v0, v8, Lorg/telegram/tgnet/TLRPC$TL_dialog;->last_message_date:I

    iput v0, p0, Lorg/telegram/ui/Cells/DialogCell;->lastMessageDate:I

    .line 858
    iget-boolean v0, v8, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pinned:Z

    iput-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->drawPin:Z

    .line 859
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_cd

    .line 860
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->send_state:I

    iput v0, p0, Lorg/telegram/ui/Cells/DialogCell;->lastSendState:I

    .line 867
    .end local v8    # "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    :cond_cd
    :goto_cd
    if-eqz p1, :cond_16d

    .line 868
    const/4 v7, 0x0

    .line 869
    .local v7, "continueUpdate":Z
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->isDialogCell:Z

    if-eqz v0, :cond_105

    .line 870
    and-int/lit8 v0, p1, 0x40

    if-eqz v0, :cond_105

    .line 871
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->printingStrings:Ljava/util/HashMap;

    iget-wide v2, p0, Lorg/telegram/ui/Cells/DialogCell;->currentDialogId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/CharSequence;

    .line 872
    .local v11, "printString":Ljava/lang/CharSequence;
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->lastPrintString:Ljava/lang/CharSequence;

    if-eqz v0, :cond_f0

    if-eqz v11, :cond_104

    :cond_f0
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->lastPrintString:Ljava/lang/CharSequence;

    if-nez v0, :cond_f6

    if-nez v11, :cond_104

    :cond_f6
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->lastPrintString:Ljava/lang/CharSequence;

    if-eqz v0, :cond_105

    if-eqz v11, :cond_105

    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->lastPrintString:Ljava/lang/CharSequence;

    invoke-virtual {v0, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_105

    .line 873
    :cond_104
    const/4 v7, 0x1

    .line 877
    .end local v11    # "printString":Ljava/lang/CharSequence;
    :cond_105
    if-nez v7, :cond_110

    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_110

    .line 878
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-nez v0, :cond_110

    .line 879
    const/4 v7, 0x1

    .line 882
    :cond_110
    if-nez v7, :cond_11b

    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_11b

    .line 883
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-nez v0, :cond_11b

    .line 884
    const/4 v7, 0x1

    .line 887
    :cond_11b
    if-nez v7, :cond_126

    and-int/lit8 v0, p1, 0x8

    if-eqz v0, :cond_126

    .line 888
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    if-nez v0, :cond_126

    .line 889
    const/4 v7, 0x1

    .line 892
    :cond_126
    if-nez v7, :cond_131

    and-int/lit8 v0, p1, 0x10

    if-eqz v0, :cond_131

    .line 893
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    if-nez v0, :cond_131

    .line 894
    const/4 v7, 0x1

    .line 897
    :cond_131
    if-nez v7, :cond_14e

    and-int/lit16 v0, p1, 0x100

    if-eqz v0, :cond_14e

    .line 898
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_1ee

    iget-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->lastUnreadState:Z

    iget-object v2, p0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->isUnread()Z

    move-result v2

    if-eq v0, v2, :cond_1ee

    .line 899
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isUnread()Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->lastUnreadState:Z

    .line 900
    const/4 v7, 0x1

    .line 909
    :cond_14e
    :goto_14e
    if-nez v7, :cond_16b

    and-int/lit16 v0, p1, 0x1000

    if-eqz v0, :cond_16b

    .line 910
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_16b

    iget v0, p0, Lorg/telegram/ui/Cells/DialogCell;->lastSendState:I

    iget-object v2, p0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->send_state:I

    if-eq v0, v2, :cond_16b

    .line 911
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->send_state:I

    iput v0, p0, Lorg/telegram/ui/Cells/DialogCell;->lastSendState:I

    .line 912
    const/4 v7, 0x1

    .line 916
    :cond_16b
    if-eqz v7, :cond_52

    .line 921
    .end local v7    # "continueUpdate":Z
    :cond_16d
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->isDialogCell:Z

    if-eqz v0, :cond_213

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v2, p0, Lorg/telegram/ui/Cells/DialogCell;->currentDialogId:J

    invoke-virtual {v0, v2, v3}, Lorg/telegram/messenger/MessagesController;->isDialogMuted(J)Z

    move-result v0

    if-eqz v0, :cond_213

    const/4 v0, 0x1

    :goto_17e
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->dialogMuted:Z

    .line 922
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    .line 923
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    .line 924
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    .line 926
    iget-wide v2, p0, Lorg/telegram/ui/Cells/DialogCell;->currentDialogId:J

    long-to-int v10, v2

    .line 927
    .local v10, "lower_id":I
    iget-wide v2, p0, Lorg/telegram/ui/Cells/DialogCell;->currentDialogId:J

    const/16 v0, 0x20

    shr-long/2addr v2, v0

    long-to-int v9, v2

    .line 928
    .local v9, "high_id":I
    if-eqz v10, :cond_25d

    .line 929
    const/4 v0, 0x1

    if-ne v9, v0, :cond_216

    .line 930
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    .line 951
    :cond_1a5
    :goto_1a5
    const/4 v1, 0x0

    .line 952
    .local v1, "photo":Lorg/telegram/tgnet/TLRPC$FileLocation;
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v0, :cond_283

    .line 953
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    if-eqz v0, :cond_1b6

    .line 954
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 956
    :cond_1b6
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    iget-object v2, p0, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$User;)V

    .line 958
    invoke-direct {p0}, Lorg/telegram/ui/Cells/DialogCell;->setStatusColor()V

    .line 967
    :cond_1c0
    :goto_1c0
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    const-string v2, "50_50"

    iget-object v3, p0, Lorg/telegram/ui/Cells/DialogCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Z)V

    goto/16 :goto_40

    .line 852
    .end local v1    # "photo":Lorg/telegram/tgnet/TLRPC$FileLocation;
    .end local v9    # "high_id":I
    .end local v10    # "lower_id":I
    .restart local v8    # "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    :cond_1cd
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogMessage:Ljava/util/HashMap;

    iget-wide v2, v8, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MessageObject;

    iput-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    goto/16 :goto_9a

    .line 854
    :cond_1e3
    const/4 v0, 0x0

    goto/16 :goto_a7

    .line 856
    :cond_1e6
    const/4 v0, 0x0

    goto/16 :goto_b7

    .line 864
    .end local v8    # "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    :cond_1e9
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->drawPin:Z

    goto/16 :goto_cd

    .line 901
    .restart local v7    # "continueUpdate":Z
    :cond_1ee
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->isDialogCell:Z

    if-eqz v0, :cond_14e

    .line 902
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogs_dict:Ljava/util/concurrent/ConcurrentHashMap;

    iget-wide v2, p0, Lorg/telegram/ui/Cells/DialogCell;->currentDialogId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    .line 903
    .restart local v8    # "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    if-eqz v8, :cond_14e

    iget v0, p0, Lorg/telegram/ui/Cells/DialogCell;->unreadCount:I

    iget v2, v8, Lorg/telegram/tgnet/TLRPC$TL_dialog;->unread_count:I

    if-eq v0, v2, :cond_14e

    .line 904
    iget v0, v8, Lorg/telegram/tgnet/TLRPC$TL_dialog;->unread_count:I

    iput v0, p0, Lorg/telegram/ui/Cells/DialogCell;->unreadCount:I

    .line 905
    const/4 v7, 0x1

    goto/16 :goto_14e

    .line 921
    .end local v7    # "continueUpdate":Z
    .end local v8    # "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    :cond_213
    const/4 v0, 0x0

    goto/16 :goto_17e

    .line 932
    .restart local v9    # "high_id":I
    .restart local v10    # "lower_id":I
    :cond_216
    if-gez v10, :cond_24d

    .line 933
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    neg-int v2, v10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    .line 934
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->isDialogCell:Z

    if-nez v0, :cond_1a5

    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v0, :cond_1a5

    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->migrated_to:Lorg/telegram/tgnet/TLRPC$InputChannel;

    if-eqz v0, :cond_1a5

    .line 935
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->migrated_to:Lorg/telegram/tgnet/TLRPC$InputChannel;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$InputChannel;->channel_id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v6

    .line 936
    .local v6, "chat2":Lorg/telegram/tgnet/TLRPC$Chat;
    if-eqz v6, :cond_1a5

    .line 937
    iput-object v6, p0, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    goto/16 :goto_1a5

    .line 941
    .end local v6    # "chat2":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_24d
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    goto/16 :goto_1a5

    .line 945
    :cond_25d
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/MessagesController;->getEncryptedChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    .line 946
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    if-eqz v0, :cond_1a5

    .line 947
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/Cells/DialogCell;->encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->user_id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    goto/16 :goto_1a5

    .line 959
    .restart local v1    # "photo":Lorg/telegram/tgnet/TLRPC$FileLocation;
    :cond_283
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v0, :cond_1c0

    .line 960
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    if-eqz v0, :cond_293

    .line 961
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$ChatPhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 963
    :cond_293
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    iget-object v2, p0, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$Chat;)V

    goto/16 :goto_1c0

    .line 972
    .end local v1    # "photo":Lorg/telegram/tgnet/TLRPC$FileLocation;
    .end local v9    # "high_id":I
    .end local v10    # "lower_id":I
    :cond_29c
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/DialogCell;->requestLayout()V

    goto/16 :goto_4f
.end method
