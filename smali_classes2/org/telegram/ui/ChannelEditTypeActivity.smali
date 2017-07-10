.class public Lorg/telegram/ui/ChannelEditTypeActivity;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "ChannelEditTypeActivity.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# static fields
.field private static final done_button:I = 0x1


# instance fields
.field private adminedChannelCells:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/ui/Cells/AdminedChannelCell;",
            ">;"
        }
    .end annotation
.end field

.field private adminedInfoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

.field private adminnedChannelsLayout:Landroid/widget/LinearLayout;

.field private canCreatePublic:Z

.field private chatId:I

.field private checkReqId:I

.field private checkRunnable:Ljava/lang/Runnable;

.field private checkTextView:Landroid/widget/TextView;

.field private currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

.field private donePressed:Z

.field private editText:Landroid/widget/EditText;

.field private headerCell:Lorg/telegram/ui/Cells/HeaderCell;

.field private invite:Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;

.field private isPrivate:Z

.field private lastCheckName:Ljava/lang/String;

.field private lastNameAvailable:Z

.field private linearLayout:Landroid/widget/LinearLayout;

.field private linearLayout2:Landroid/widget/LinearLayout;

.field private linkContainer:Landroid/widget/LinearLayout;

.field private loadingAdminedCell:Lorg/telegram/ui/Cells/LoadingCell;

.field private loadingAdminedChannels:Z

.field private loadingInvite:Z

.field private nameTextView:Landroid/widget/EditText;

.field private privateContainer:Lorg/telegram/ui/Cells/TextBlockCell;

.field private publicContainer:Landroid/widget/LinearLayout;

.field private radioButtonCell1:Lorg/telegram/ui/Cells/RadioButtonCell;

.field private radioButtonCell2:Lorg/telegram/ui/Cells/RadioButtonCell;

.field private sectionCell:Lorg/telegram/ui/Cells/ShadowSectionCell;

.field private typeInfoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;


# direct methods
.method public constructor <init>(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>(Landroid/os/Bundle;)V

    .line 80
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->canCreatePublic:Z

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->adminedChannelCells:Ljava/util/ArrayList;

    .line 99
    const-string v0, "chat_id"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->chatId:I

    .line 100
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/ChannelEditTypeActivity;)Lorg/telegram/tgnet/TLRPC$Chat;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ChannelEditTypeActivity;

    .prologue
    .line 60
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    return-object v0
.end method

.method static synthetic access$002(Lorg/telegram/ui/ChannelEditTypeActivity;Lorg/telegram/tgnet/TLRPC$Chat;)Lorg/telegram/tgnet/TLRPC$Chat;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ChannelEditTypeActivity;
    .param p1, "x1"    # Lorg/telegram/tgnet/TLRPC$Chat;

    .prologue
    .line 60
    iput-object p1, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    return-object p1
.end method

.method static synthetic access$100(Lorg/telegram/ui/ChannelEditTypeActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ChannelEditTypeActivity;

    .prologue
    .line 60
    iget v0, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->chatId:I

    return v0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/ChannelEditTypeActivity;Ljava/lang/String;)Z
    .registers 3
    .param p0, "x0"    # Lorg/telegram/ui/ChannelEditTypeActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChannelEditTypeActivity;->checkUserName(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lorg/telegram/ui/ChannelEditTypeActivity;)Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ChannelEditTypeActivity;

    .prologue
    .line 60
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->invite:Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;

    return-object v0
.end method

.method static synthetic access$1102(Lorg/telegram/ui/ChannelEditTypeActivity;Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;)Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ChannelEditTypeActivity;
    .param p1, "x1"    # Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;

    .prologue
    .line 60
    iput-object p1, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->invite:Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;

    return-object p1
.end method

.method static synthetic access$1202(Lorg/telegram/ui/ChannelEditTypeActivity;Z)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ChannelEditTypeActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 60
    iput-boolean p1, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->loadingAdminedChannels:Z

    return p1
.end method

.method static synthetic access$1300(Lorg/telegram/ui/ChannelEditTypeActivity;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ChannelEditTypeActivity;

    .prologue
    .line 60
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->adminedChannelCells:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1400(Lorg/telegram/ui/ChannelEditTypeActivity;)Landroid/widget/LinearLayout;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ChannelEditTypeActivity;

    .prologue
    .line 60
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->linearLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1502(Lorg/telegram/ui/ChannelEditTypeActivity;I)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ChannelEditTypeActivity;
    .param p1, "x1"    # I

    .prologue
    .line 60
    iput p1, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->checkReqId:I

    return p1
.end method

.method static synthetic access$1600(Lorg/telegram/ui/ChannelEditTypeActivity;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ChannelEditTypeActivity;

    .prologue
    .line 60
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->lastCheckName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1700(Lorg/telegram/ui/ChannelEditTypeActivity;)Lorg/telegram/ui/Cells/TextInfoPrivacyCell;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ChannelEditTypeActivity;

    .prologue
    .line 60
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->typeInfoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    return-object v0
.end method

.method static synthetic access$1802(Lorg/telegram/ui/ChannelEditTypeActivity;Z)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ChannelEditTypeActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 60
    iput-boolean p1, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->loadingInvite:Z

    return p1
.end method

.method static synthetic access$1900(Lorg/telegram/ui/ChannelEditTypeActivity;)Lorg/telegram/ui/Cells/TextBlockCell;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ChannelEditTypeActivity;

    .prologue
    .line 60
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->privateContainer:Lorg/telegram/ui/Cells/TextBlockCell;

    return-object v0
.end method

.method static synthetic access$200(Lorg/telegram/ui/ChannelEditTypeActivity;)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ChannelEditTypeActivity;

    .prologue
    .line 60
    iget-boolean v0, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->canCreatePublic:Z

    return v0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/ChannelEditTypeActivity;)Landroid/widget/LinearLayout;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ChannelEditTypeActivity;

    .prologue
    .line 60
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->adminnedChannelsLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$202(Lorg/telegram/ui/ChannelEditTypeActivity;Z)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ChannelEditTypeActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 60
    iput-boolean p1, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->canCreatePublic:Z

    return p1
.end method

.method static synthetic access$300(Lorg/telegram/ui/ChannelEditTypeActivity;)V
    .registers 1
    .param p0, "x0"    # Lorg/telegram/ui/ChannelEditTypeActivity;

    .prologue
    .line 60
    invoke-direct {p0}, Lorg/telegram/ui/ChannelEditTypeActivity;->loadAdminedChannels()V

    return-void
.end method

.method static synthetic access$400(Lorg/telegram/ui/ChannelEditTypeActivity;)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ChannelEditTypeActivity;

    .prologue
    .line 60
    iget-boolean v0, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->donePressed:Z

    return v0
.end method

.method static synthetic access$402(Lorg/telegram/ui/ChannelEditTypeActivity;Z)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ChannelEditTypeActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 60
    iput-boolean p1, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->donePressed:Z

    return p1
.end method

.method static synthetic access$500(Lorg/telegram/ui/ChannelEditTypeActivity;)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ChannelEditTypeActivity;

    .prologue
    .line 60
    iget-boolean v0, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->isPrivate:Z

    return v0
.end method

.method static synthetic access$502(Lorg/telegram/ui/ChannelEditTypeActivity;Z)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ChannelEditTypeActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 60
    iput-boolean p1, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->isPrivate:Z

    return p1
.end method

.method static synthetic access$600(Lorg/telegram/ui/ChannelEditTypeActivity;)Landroid/widget/EditText;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ChannelEditTypeActivity;

    .prologue
    .line 60
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->nameTextView:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$700(Lorg/telegram/ui/ChannelEditTypeActivity;)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ChannelEditTypeActivity;

    .prologue
    .line 60
    iget-boolean v0, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->lastNameAvailable:Z

    return v0
.end method

.method static synthetic access$702(Lorg/telegram/ui/ChannelEditTypeActivity;Z)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ChannelEditTypeActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 60
    iput-boolean p1, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->lastNameAvailable:Z

    return p1
.end method

.method static synthetic access$800(Lorg/telegram/ui/ChannelEditTypeActivity;)Landroid/widget/TextView;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ChannelEditTypeActivity;

    .prologue
    .line 60
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->checkTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$900(Lorg/telegram/ui/ChannelEditTypeActivity;)V
    .registers 1
    .param p0, "x0"    # Lorg/telegram/ui/ChannelEditTypeActivity;

    .prologue
    .line 60
    invoke-direct {p0}, Lorg/telegram/ui/ChannelEditTypeActivity;->updatePrivatePublic()V

    return-void
.end method

.method private checkUserName(Ljava/lang/String;)Z
    .registers 11
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const v8, 0x7f0702e3

    const/16 v7, 0x39

    const/16 v6, 0x30

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 521
    if-eqz p1, :cond_64

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_64

    .line 522
    iget-object v4, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->checkTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 526
    :goto_16
    iget-object v4, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->checkRunnable:Ljava/lang/Runnable;

    if-eqz v4, :cond_32

    .line 527
    iget-object v4, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->checkRunnable:Ljava/lang/Runnable;

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 528
    const/4 v4, 0x0

    iput-object v4, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->checkRunnable:Ljava/lang/Runnable;

    .line 529
    const/4 v4, 0x0

    iput-object v4, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->lastCheckName:Ljava/lang/String;

    .line 530
    iget v4, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->checkReqId:I

    if-eqz v4, :cond_32

    .line 531
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v4

    iget v5, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->checkReqId:I

    invoke-virtual {v4, v5, v3}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    .line 534
    :cond_32
    iput-boolean v2, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->lastNameAvailable:Z

    .line 535
    if-eqz p1, :cond_100

    .line 536
    const-string v4, "_"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_46

    const-string v4, "_"

    invoke-virtual {p1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6c

    .line 537
    :cond_46
    iget-object v3, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->checkTextView:Landroid/widget/TextView;

    const-string v4, "LinkInvalid"

    invoke-static {v4, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 538
    iget-object v3, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->typeInfoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    const-string v4, "windowBackgroundWhiteRedText4"

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setTag(Ljava/lang/Object;)V

    .line 539
    iget-object v3, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->typeInfoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    const-string v4, "windowBackgroundWhiteRedText4"

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setTextColor(I)V

    .line 626
    :goto_63
    return v2

    .line 524
    :cond_64
    iget-object v4, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->checkTextView:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_16

    .line 542
    :cond_6c
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_6d
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v0, v4, :cond_100

    .line 543
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 544
    .local v1, "ch":C
    if-nez v0, :cond_c5

    if-lt v1, v6, :cond_c5

    if-gt v1, v7, :cond_c5

    .line 545
    iget-object v3, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v3, :cond_a4

    .line 546
    iget-object v3, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->checkTextView:Landroid/widget/TextView;

    const-string v4, "LinkInvalidStartNumberMega"

    const v5, 0x7f0702e8

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 547
    iget-object v3, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->typeInfoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    const-string v4, "windowBackgroundWhiteRedText4"

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setTag(Ljava/lang/Object;)V

    .line 548
    iget-object v3, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->typeInfoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    const-string v4, "windowBackgroundWhiteRedText4"

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setTextColor(I)V

    goto :goto_63

    .line 550
    :cond_a4
    iget-object v3, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->checkTextView:Landroid/widget/TextView;

    const-string v4, "LinkInvalidStartNumber"

    const v5, 0x7f0702e7

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 551
    iget-object v3, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->typeInfoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    const-string v4, "windowBackgroundWhiteRedText4"

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setTag(Ljava/lang/Object;)V

    .line 552
    iget-object v3, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->typeInfoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    const-string v4, "windowBackgroundWhiteRedText4"

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setTextColor(I)V

    goto :goto_63

    .line 556
    :cond_c5
    if-lt v1, v6, :cond_c9

    if-le v1, v7, :cond_fc

    :cond_c9
    const/16 v4, 0x61

    if-lt v1, v4, :cond_d1

    const/16 v4, 0x7a

    if-le v1, v4, :cond_fc

    :cond_d1
    const/16 v4, 0x41

    if-lt v1, v4, :cond_d9

    const/16 v4, 0x5a

    if-le v1, v4, :cond_fc

    :cond_d9
    const/16 v4, 0x5f

    if-eq v1, v4, :cond_fc

    .line 557
    iget-object v3, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->checkTextView:Landroid/widget/TextView;

    const-string v4, "LinkInvalid"

    invoke-static {v4, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 558
    iget-object v3, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->typeInfoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    const-string v4, "windowBackgroundWhiteRedText4"

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setTag(Ljava/lang/Object;)V

    .line 559
    iget-object v3, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->typeInfoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    const-string v4, "windowBackgroundWhiteRedText4"

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setTextColor(I)V

    goto/16 :goto_63

    .line 542
    :cond_fc
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_6d

    .line 564
    .end local v0    # "a":I
    .end local v1    # "ch":C
    :cond_100
    if-eqz p1, :cond_109

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x5

    if-ge v4, v5, :cond_153

    .line 565
    :cond_109
    iget-object v3, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v3, :cond_131

    .line 566
    iget-object v3, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->checkTextView:Landroid/widget/TextView;

    const-string v4, "LinkInvalidShortMega"

    const v5, 0x7f0702e6

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 567
    iget-object v3, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->typeInfoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    const-string v4, "windowBackgroundWhiteRedText4"

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setTag(Ljava/lang/Object;)V

    .line 568
    iget-object v3, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->typeInfoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    const-string v4, "windowBackgroundWhiteRedText4"

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setTextColor(I)V

    goto/16 :goto_63

    .line 570
    :cond_131
    iget-object v3, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->checkTextView:Landroid/widget/TextView;

    const-string v4, "LinkInvalidShort"

    const v5, 0x7f0702e5

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 571
    iget-object v3, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->typeInfoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    const-string v4, "windowBackgroundWhiteRedText4"

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setTag(Ljava/lang/Object;)V

    .line 572
    iget-object v3, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->typeInfoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    const-string v4, "windowBackgroundWhiteRedText4"

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setTextColor(I)V

    goto/16 :goto_63

    .line 576
    :cond_153
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x20

    if-le v4, v5, :cond_17d

    .line 577
    iget-object v3, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->checkTextView:Landroid/widget/TextView;

    const-string v4, "LinkInvalidLong"

    const v5, 0x7f0702e4

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 578
    iget-object v3, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->typeInfoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    const-string v4, "windowBackgroundWhiteRedText4"

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setTag(Ljava/lang/Object;)V

    .line 579
    iget-object v3, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->typeInfoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    const-string v4, "windowBackgroundWhiteRedText4"

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setTextColor(I)V

    goto/16 :goto_63

    .line 584
    :cond_17d
    iget-object v2, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->checkTextView:Landroid/widget/TextView;

    const-string v4, "LinkChecking"

    const v5, 0x7f0702df

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 585
    iget-object v2, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->checkTextView:Landroid/widget/TextView;

    const-string v4, "windowBackgroundWhiteGrayText8"

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 586
    iget-object v2, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->checkTextView:Landroid/widget/TextView;

    const-string v4, "windowBackgroundWhiteGrayText8"

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 587
    iput-object p1, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->lastCheckName:Ljava/lang/String;

    .line 588
    new-instance v2, Lorg/telegram/ui/ChannelEditTypeActivity$9;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/ChannelEditTypeActivity$9;-><init>(Lorg/telegram/ui/ChannelEditTypeActivity;Ljava/lang/String;)V

    iput-object v2, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->checkRunnable:Ljava/lang/Runnable;

    .line 625
    iget-object v2, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->checkRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x12c

    invoke-static {v2, v4, v5}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    move v2, v3

    .line 626
    goto/16 :goto_63
.end method

.method private generateLink()V
    .registers 4

    .prologue
    .line 630
    iget-boolean v1, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->loadingInvite:Z

    if-nez v1, :cond_8

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->invite:Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;

    if-eqz v1, :cond_9

    .line 651
    :cond_8
    :goto_8
    return-void

    .line 633
    :cond_9
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->loadingInvite:Z

    .line 634
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channels_exportInvite;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channels_exportInvite;-><init>()V

    .line 635
    .local v0, "req":Lorg/telegram/tgnet/TLRPC$TL_channels_exportInvite;
    iget v1, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->chatId:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInputChannel(I)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_exportInvite;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    .line 636
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/ChannelEditTypeActivity$10;

    invoke-direct {v2, p0}, Lorg/telegram/ui/ChannelEditTypeActivity$10;-><init>(Lorg/telegram/ui/ChannelEditTypeActivity;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto :goto_8
.end method

.method private loadAdminedChannels()V
    .registers 4

    .prologue
    .line 394
    iget-boolean v1, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->loadingAdminedChannels:Z

    if-eqz v1, :cond_5

    .line 469
    :goto_4
    return-void

    .line 397
    :cond_5
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->loadingAdminedChannels:Z

    .line 398
    invoke-direct {p0}, Lorg/telegram/ui/ChannelEditTypeActivity;->updatePrivatePublic()V

    .line 399
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channels_getAdminedPublicChannels;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channels_getAdminedPublicChannels;-><init>()V

    .line 400
    .local v0, "req":Lorg/telegram/tgnet/TLRPC$TL_channels_getAdminedPublicChannels;
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/ChannelEditTypeActivity$8;

    invoke-direct {v2, p0}, Lorg/telegram/ui/ChannelEditTypeActivity$8;-><init>(Lorg/telegram/ui/ChannelEditTypeActivity;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto :goto_4
.end method

.method private updatePrivatePublic()V
    .registers 9

    .prologue
    const v7, 0x7f070127

    const v6, 0x7f0200d7

    const/4 v3, 0x1

    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 472
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->sectionCell:Lorg/telegram/ui/Cells/ShadowSectionCell;

    if-nez v0, :cond_f

    .line 518
    :goto_e
    return-void

    .line 475
    :cond_f
    iget-boolean v0, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->isPrivate:Z

    if-nez v0, :cond_a5

    iget-boolean v0, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->canCreatePublic:Z

    if-nez v0, :cond_a5

    .line 476
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->typeInfoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    const-string v4, "ChangePublicLimitReached"

    const v5, 0x7f07010c

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 477
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->typeInfoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    const-string v4, "windowBackgroundWhiteRedText4"

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setTag(Ljava/lang/Object;)V

    .line 478
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->typeInfoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    const-string v4, "windowBackgroundWhiteRedText4"

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setTextColor(I)V

    .line 479
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->linkContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 480
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->sectionCell:Lorg/telegram/ui/Cells/ShadowSectionCell;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/ShadowSectionCell;->setVisibility(I)V

    .line 481
    iget-boolean v0, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->loadingAdminedChannels:Z

    if-eqz v0, :cond_81

    .line 482
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->loadingAdminedCell:Lorg/telegram/ui/Cells/LoadingCell;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Cells/LoadingCell;->setVisibility(I)V

    .line 483
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->adminnedChannelsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 484
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->typeInfoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    iget-object v4, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->typeInfoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    invoke-virtual {v4}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "windowBackgroundGrayShadow"

    invoke-static {v4, v6, v5}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 485
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->adminedInfoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setVisibility(I)V

    .line 514
    :goto_65
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->radioButtonCell1:Lorg/telegram/ui/Cells/RadioButtonCell;

    iget-boolean v1, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->isPrivate:Z

    if-nez v1, :cond_6c

    move v2, v3

    :cond_6c
    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/Cells/RadioButtonCell;->setChecked(ZZ)V

    .line 515
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->radioButtonCell2:Lorg/telegram/ui/Cells/RadioButtonCell;

    iget-boolean v1, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->isPrivate:Z

    invoke-virtual {v0, v1, v3}, Lorg/telegram/ui/Cells/RadioButtonCell;->setChecked(ZZ)V

    .line 516
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->nameTextView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 517
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->nameTextView:Landroid/widget/EditText;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    goto :goto_e

    .line 487
    :cond_81
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->typeInfoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    iget-object v4, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->typeInfoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    invoke-virtual {v4}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0200d6

    const-string v6, "windowBackgroundGrayShadow"

    invoke-static {v4, v5, v6}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 488
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->loadingAdminedCell:Lorg/telegram/ui/Cells/LoadingCell;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/LoadingCell;->setVisibility(I)V

    .line 489
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->adminnedChannelsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 490
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->adminedInfoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setVisibility(I)V

    goto :goto_65

    .line 493
    :cond_a5
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->typeInfoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    const-string v4, "windowBackgroundWhiteGrayText4"

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setTag(Ljava/lang/Object;)V

    .line 494
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->typeInfoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    const-string v4, "windowBackgroundWhiteGrayText4"

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setTextColor(I)V

    .line 495
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->sectionCell:Lorg/telegram/ui/Cells/ShadowSectionCell;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Cells/ShadowSectionCell;->setVisibility(I)V

    .line 496
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->adminedInfoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setVisibility(I)V

    .line 497
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->typeInfoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    iget-object v4, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->typeInfoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    invoke-virtual {v4}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "windowBackgroundGrayShadow"

    invoke-static {v4, v6, v5}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 498
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->adminnedChannelsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 499
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->linkContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 500
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->loadingAdminedCell:Lorg/telegram/ui/Cells/LoadingCell;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/LoadingCell;->setVisibility(I)V

    .line 501
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v0, :cond_15b

    .line 502
    iget-object v4, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->typeInfoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    iget-boolean v0, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->isPrivate:Z

    if-eqz v0, :cond_147

    const-string v0, "MegaPrivateLinkHelp"

    const v5, 0x7f070305

    invoke-static {v0, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    :goto_f6
    invoke-virtual {v4, v0}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 503
    iget-object v4, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->headerCell:Lorg/telegram/ui/Cells/HeaderCell;

    iget-boolean v0, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->isPrivate:Z

    if-eqz v0, :cond_151

    const-string v0, "ChannelInviteLinkTitle"

    invoke-static {v0, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    :goto_105
    invoke-virtual {v4, v0}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/String;)V

    .line 508
    :goto_108
    iget-object v4, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->publicContainer:Landroid/widget/LinearLayout;

    iget-boolean v0, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->isPrivate:Z

    if-eqz v0, :cond_191

    move v0, v1

    :goto_10f
    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 509
    iget-object v4, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->privateContainer:Lorg/telegram/ui/Cells/TextBlockCell;

    iget-boolean v0, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->isPrivate:Z

    if-eqz v0, :cond_194

    move v0, v2

    :goto_119
    invoke-virtual {v4, v0}, Lorg/telegram/ui/Cells/TextBlockCell;->setVisibility(I)V

    .line 510
    iget-object v4, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->linkContainer:Landroid/widget/LinearLayout;

    iget-boolean v0, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->isPrivate:Z

    if-eqz v0, :cond_196

    move v0, v2

    :goto_123
    invoke-virtual {v4, v2, v2, v2, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 511
    iget-object v4, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->privateContainer:Lorg/telegram/ui/Cells/TextBlockCell;

    iget-object v0, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->invite:Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;

    if-eqz v0, :cond_19d

    iget-object v0, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->invite:Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;->link:Ljava/lang/String;

    :goto_130
    invoke-virtual {v4, v0, v2}, Lorg/telegram/ui/Cells/TextBlockCell;->setText(Ljava/lang/String;Z)V

    .line 512
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->checkTextView:Landroid/widget/TextView;

    iget-boolean v4, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->isPrivate:Z

    if-nez v4, :cond_142

    iget-object v4, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->checkTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->length()I

    move-result v4

    if-eqz v4, :cond_142

    move v1, v2

    :cond_142
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_65

    .line 502
    :cond_147
    const-string v0, "MegaUsernameHelp"

    const v5, 0x7f070308

    invoke-static {v0, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_f6

    .line 503
    :cond_151
    const-string v0, "ChannelLinkTitle"

    const v5, 0x7f07012e

    invoke-static {v0, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_105

    .line 505
    :cond_15b
    iget-object v4, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->typeInfoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    iget-boolean v0, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->isPrivate:Z

    if-eqz v0, :cond_17d

    const-string v0, "ChannelPrivateLinkHelp"

    const v5, 0x7f07014f

    invoke-static {v0, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    :goto_16a
    invoke-virtual {v4, v0}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 506
    iget-object v4, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->headerCell:Lorg/telegram/ui/Cells/HeaderCell;

    iget-boolean v0, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->isPrivate:Z

    if-eqz v0, :cond_187

    const-string v0, "ChannelInviteLinkTitle"

    invoke-static {v0, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    :goto_179
    invoke-virtual {v4, v0}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/String;)V

    goto :goto_108

    .line 505
    :cond_17d
    const-string v0, "ChannelUsernameHelp"

    const v5, 0x7f070162

    invoke-static {v0, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_16a

    .line 506
    :cond_187
    const-string v0, "ChannelLinkTitle"

    const v5, 0x7f07012e

    invoke-static {v0, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_179

    :cond_191
    move v0, v2

    .line 508
    goto/16 :goto_10f

    :cond_194
    move v0, v1

    .line 509
    goto :goto_119

    .line 510
    :cond_196
    const/high16 v0, 0x40e00000    # 7.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    goto :goto_123

    .line 511
    :cond_19d
    const-string v0, "Loading"

    const v5, 0x7f0702eb

    invoke-static {v0, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_130
.end method


# virtual methods
.method public createView(Landroid/content/Context;)Landroid/view/View;
    .registers 13
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 165
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const v1, 0x7f0200dd

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 166
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    .line 168
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v1, Lorg/telegram/ui/ChannelEditTypeActivity$3;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ChannelEditTypeActivity$3;-><init>(Lorg/telegram/ui/ChannelEditTypeActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 200
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v7

    .line 201
    .local v7, "menu":Lorg/telegram/ui/ActionBar/ActionBarMenu;
    const/4 v0, 0x1

    const v1, 0x7f020114

    const/high16 v2, 0x42600000    # 56.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-virtual {v7, v0, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItemWithWidth(III)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 203
    new-instance v0, Landroid/widget/ScrollView;

    invoke-direct {v0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->fragmentView:Landroid/view/View;

    .line 204
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->fragmentView:Landroid/view/View;

    const-string v1, "windowBackgroundGray"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 205
    iget-object v8, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->fragmentView:Landroid/view/View;

    check-cast v8, Landroid/widget/ScrollView;

    .line 206
    .local v8, "scrollView":Landroid/widget/ScrollView;
    const/4 v0, 0x1

    invoke-virtual {v8, v0}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    .line 207
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->linearLayout:Landroid/widget/LinearLayout;

    .line 208
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->linearLayout:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v0, v1}, Landroid/widget/ScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 210
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->linearLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 212
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v0, :cond_380

    .line 213
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string v1, "GroupType"

    const v2, 0x7f070271

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 218
    :goto_72
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->linearLayout2:Landroid/widget/LinearLayout;

    .line 219
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->linearLayout2:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 220
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->linearLayout2:Landroid/widget/LinearLayout;

    const-string v1, "windowBackgroundWhite"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 221
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->linearLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->linearLayout2:Landroid/widget/LinearLayout;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 223
    new-instance v0, Lorg/telegram/ui/Cells/RadioButtonCell;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Cells/RadioButtonCell;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->radioButtonCell1:Lorg/telegram/ui/Cells/RadioButtonCell;

    .line 224
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->radioButtonCell1:Lorg/telegram/ui/Cells/RadioButtonCell;

    const/4 v1, 0x0

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/RadioButtonCell;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 225
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v0, :cond_393

    .line 226
    iget-object v1, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->radioButtonCell1:Lorg/telegram/ui/Cells/RadioButtonCell;

    const-string v0, "MegaPublic"

    const v2, 0x7f070306

    invoke-static {v0, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const-string v0, "MegaPublicInfo"

    const v3, 0x7f070307

    invoke-static {v0, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    iget-boolean v0, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->isPrivate:Z

    if-nez v0, :cond_390

    const/4 v0, 0x1

    :goto_c7
    invoke-virtual {v1, v2, v3, v0}, Lorg/telegram/ui/Cells/RadioButtonCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 230
    :goto_ca
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->linearLayout2:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->radioButtonCell1:Lorg/telegram/ui/Cells/RadioButtonCell;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 231
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->radioButtonCell1:Lorg/telegram/ui/Cells/RadioButtonCell;

    new-instance v1, Lorg/telegram/ui/ChannelEditTypeActivity$4;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ChannelEditTypeActivity$4;-><init>(Lorg/telegram/ui/ChannelEditTypeActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/RadioButtonCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 242
    new-instance v0, Lorg/telegram/ui/Cells/RadioButtonCell;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Cells/RadioButtonCell;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->radioButtonCell2:Lorg/telegram/ui/Cells/RadioButtonCell;

    .line 243
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->radioButtonCell2:Lorg/telegram/ui/Cells/RadioButtonCell;

    const/4 v1, 0x0

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/RadioButtonCell;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 244
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v0, :cond_3b3

    .line 245
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->radioButtonCell2:Lorg/telegram/ui/Cells/RadioButtonCell;

    const-string v1, "MegaPrivate"

    const v2, 0x7f070303

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "MegaPrivateInfo"

    const v3, 0x7f070304

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    iget-boolean v3, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->isPrivate:Z

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Cells/RadioButtonCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 249
    :goto_111
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->linearLayout2:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->radioButtonCell2:Lorg/telegram/ui/Cells/RadioButtonCell;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 250
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->radioButtonCell2:Lorg/telegram/ui/Cells/RadioButtonCell;

    new-instance v1, Lorg/telegram/ui/ChannelEditTypeActivity$5;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ChannelEditTypeActivity$5;-><init>(Lorg/telegram/ui/ChannelEditTypeActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/RadioButtonCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 261
    new-instance v0, Lorg/telegram/ui/Cells/ShadowSectionCell;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Cells/ShadowSectionCell;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->sectionCell:Lorg/telegram/ui/Cells/ShadowSectionCell;

    .line 262
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->linearLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->sectionCell:Lorg/telegram/ui/Cells/ShadowSectionCell;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 264
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->linkContainer:Landroid/widget/LinearLayout;

    .line 265
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->linkContainer:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 266
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->linkContainer:Landroid/widget/LinearLayout;

    const-string v1, "windowBackgroundWhite"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 267
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->linearLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->linkContainer:Landroid/widget/LinearLayout;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 269
    new-instance v0, Lorg/telegram/ui/Cells/HeaderCell;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->headerCell:Lorg/telegram/ui/Cells/HeaderCell;

    .line 270
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->linkContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->headerCell:Lorg/telegram/ui/Cells/HeaderCell;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 272
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->publicContainer:Landroid/widget/LinearLayout;

    .line 273
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->publicContainer:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 274
    iget-object v6, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->linkContainer:Landroid/widget/LinearLayout;

    iget-object v9, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->publicContainer:Landroid/widget/LinearLayout;

    const/4 v0, -0x1

    const/16 v1, 0x24

    const/high16 v2, 0x41880000    # 17.0f

    const/high16 v3, 0x40e00000    # 7.0f

    const/high16 v4, 0x41880000    # 17.0f

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v6, v9, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 276
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->editText:Landroid/widget/EditText;

    .line 277
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->editText:Landroid/widget/EditText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController;->linkPrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 278
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->editText:Landroid/widget/EditText;

    const/4 v1, 0x1

    const/high16 v2, 0x41900000    # 18.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 279
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->editText:Landroid/widget/EditText;

    const-string v1, "windowBackgroundWhiteHintText"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 280
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->editText:Landroid/widget/EditText;

    const-string v1, "windowBackgroundWhiteBlackText"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextColor(I)V

    .line 281
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->editText:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setMaxLines(I)V

    .line 282
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->editText:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setLines(I)V

    .line 283
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->editText:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 284
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->editText:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 285
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->editText:Landroid/widget/EditText;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 286
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->editText:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 287
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->editText:Landroid/widget/EditText;

    const v1, 0x28000

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 288
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->editText:Landroid/widget/EditText;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 289
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->publicContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->editText:Landroid/widget/EditText;

    const/4 v2, -0x2

    const/16 v3, 0x24

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 291
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->nameTextView:Landroid/widget/EditText;

    .line 292
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->nameTextView:Landroid/widget/EditText;

    const/4 v1, 0x1

    const/high16 v2, 0x41900000    # 18.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 293
    iget-boolean v0, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->isPrivate:Z

    if-nez v0, :cond_233

    .line 294
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->nameTextView:Landroid/widget/EditText;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Chat;->username:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 296
    :cond_233
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->nameTextView:Landroid/widget/EditText;

    const-string v1, "windowBackgroundWhiteHintText"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 297
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->nameTextView:Landroid/widget/EditText;

    const-string v1, "windowBackgroundWhiteBlackText"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextColor(I)V

    .line 298
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->nameTextView:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setMaxLines(I)V

    .line 299
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->nameTextView:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setLines(I)V

    .line 300
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->nameTextView:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 301
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->nameTextView:Landroid/widget/EditText;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 302
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->nameTextView:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 303
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->nameTextView:Landroid/widget/EditText;

    const v1, 0x28020

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 304
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->nameTextView:Landroid/widget/EditText;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 305
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->nameTextView:Landroid/widget/EditText;

    const-string v1, "ChannelUsernamePlaceholder"

    const v2, 0x7f070163

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 306
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->nameTextView:Landroid/widget/EditText;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->clearCursorDrawable(Landroid/widget/EditText;)V

    .line 307
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->publicContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->nameTextView:Landroid/widget/EditText;

    const/4 v2, -0x1

    const/16 v3, 0x24

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 308
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->nameTextView:Landroid/widget/EditText;

    new-instance v1, Lorg/telegram/ui/ChannelEditTypeActivity$6;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ChannelEditTypeActivity$6;-><init>(Lorg/telegram/ui/ChannelEditTypeActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 325
    new-instance v0, Lorg/telegram/ui/Cells/TextBlockCell;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Cells/TextBlockCell;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->privateContainer:Lorg/telegram/ui/Cells/TextBlockCell;

    .line 326
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->privateContainer:Lorg/telegram/ui/Cells/TextBlockCell;

    const/4 v1, 0x0

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextBlockCell;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 327
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->linkContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->privateContainer:Lorg/telegram/ui/Cells/TextBlockCell;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 328
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->privateContainer:Lorg/telegram/ui/Cells/TextBlockCell;

    new-instance v1, Lorg/telegram/ui/ChannelEditTypeActivity$7;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ChannelEditTypeActivity$7;-><init>(Lorg/telegram/ui/ChannelEditTypeActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextBlockCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 345
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->checkTextView:Landroid/widget/TextView;

    .line 346
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->checkTextView:Landroid/widget/TextView;

    const/4 v1, 0x1

    const/high16 v2, 0x41700000    # 15.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 347
    iget-object v1, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->checkTextView:Landroid/widget/TextView;

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_3ce

    const/4 v0, 0x5

    :goto_2db
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 348
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->checkTextView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 349
    iget-object v9, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->linkContainer:Landroid/widget/LinearLayout;

    iget-object v10, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->checkTextView:Landroid/widget/TextView;

    const/4 v0, -0x2

    const/4 v1, -0x2

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_3d1

    const/4 v2, 0x5

    :goto_2f0
    const/16 v3, 0x11

    const/4 v4, 0x3

    const/16 v5, 0x11

    const/4 v6, 0x7

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v9, v10, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 351
    new-instance v0, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->typeInfoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    .line 352
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->typeInfoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    const v1, 0x7f0200d7

    const-string v2, "windowBackgroundGrayShadow"

    invoke-static {p1, v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 353
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->linearLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->typeInfoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 355
    new-instance v0, Lorg/telegram/ui/Cells/LoadingCell;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Cells/LoadingCell;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->loadingAdminedCell:Lorg/telegram/ui/Cells/LoadingCell;

    .line 356
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->linearLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->loadingAdminedCell:Lorg/telegram/ui/Cells/LoadingCell;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 358
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->adminnedChannelsLayout:Landroid/widget/LinearLayout;

    .line 359
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->adminnedChannelsLayout:Landroid/widget/LinearLayout;

    const-string v1, "windowBackgroundWhite"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 360
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->adminnedChannelsLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 361
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->linearLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->adminnedChannelsLayout:Landroid/widget/LinearLayout;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 363
    new-instance v0, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->adminedInfoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    .line 364
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->adminedInfoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    const v1, 0x7f0200d7

    const-string v2, "windowBackgroundGrayShadow"

    invoke-static {p1, v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 365
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->linearLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->adminedInfoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 367
    invoke-direct {p0}, Lorg/telegram/ui/ChannelEditTypeActivity;->updatePrivatePublic()V

    .line 369
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->fragmentView:Landroid/view/View;

    return-object v0

    .line 215
    :cond_380
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string v1, "ChannelType"

    const v2, 0x7f070159

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_72

    .line 226
    :cond_390
    const/4 v0, 0x0

    goto/16 :goto_c7

    .line 228
    :cond_393
    iget-object v1, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->radioButtonCell1:Lorg/telegram/ui/Cells/RadioButtonCell;

    const-string v0, "ChannelPublic"

    const v2, 0x7f070150

    invoke-static {v0, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const-string v0, "ChannelPublicInfo"

    const v3, 0x7f070152

    invoke-static {v0, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    iget-boolean v0, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->isPrivate:Z

    if-nez v0, :cond_3b1

    const/4 v0, 0x1

    :goto_3ac
    invoke-virtual {v1, v2, v3, v0}, Lorg/telegram/ui/Cells/RadioButtonCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_ca

    :cond_3b1
    const/4 v0, 0x0

    goto :goto_3ac

    .line 247
    :cond_3b3
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->radioButtonCell2:Lorg/telegram/ui/Cells/RadioButtonCell;

    const-string v1, "ChannelPrivate"

    const v2, 0x7f07014d

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ChannelPrivateInfo"

    const v3, 0x7f07014e

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    iget-boolean v3, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->isPrivate:Z

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Cells/RadioButtonCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_111

    .line 347
    :cond_3ce
    const/4 v0, 0x3

    goto/16 :goto_2db

    .line 349
    :cond_3d1
    const/4 v2, 0x3

    goto/16 :goto_2f0
.end method

.method public varargs didReceivedNotification(I[Ljava/lang/Object;)V
    .registers 6
    .param p1, "id"    # I
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 374
    sget v1, Lorg/telegram/messenger/NotificationCenter;->chatInfoDidLoaded:I

    if-ne p1, v1, :cond_16

    .line 375
    const/4 v1, 0x0

    aget-object v0, p2, v1

    check-cast v0, Lorg/telegram/tgnet/TLRPC$ChatFull;

    .line 376
    .local v0, "chatFull":Lorg/telegram/tgnet/TLRPC$ChatFull;
    iget v1, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->id:I

    iget v2, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->chatId:I

    if-ne v1, v2, :cond_16

    .line 377
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->exported_invite:Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;

    iput-object v1, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->invite:Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;

    .line 378
    invoke-direct {p0}, Lorg/telegram/ui/ChannelEditTypeActivity;->updatePrivatePublic()V

    .line 381
    .end local v0    # "chatFull":Lorg/telegram/tgnet/TLRPC$ChatFull;
    :cond_16
    return-void
.end method

.method public getThemeDescriptions()[Lorg/telegram/ui/ActionBar/ThemeDescription;
    .registers 13

    .prologue
    .line 655
    new-instance v9, Lorg/telegram/ui/ChannelEditTypeActivity$11;

    invoke-direct {v9, p0}, Lorg/telegram/ui/ChannelEditTypeActivity$11;-><init>(Lorg/telegram/ui/ChannelEditTypeActivity;)V

    .line 670
    .local v9, "\u0441ellDelegate":Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;
    const/16 v0, 0x2e

    new-array v10, v0, [Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v8, 0x0

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->fragmentView:Landroid/view/View;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "windowBackgroundGray"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/4 v8, 0x1

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "actionBarDefault"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/4 v8, 0x2

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_ITEMSCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "actionBarDefaultIcon"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/4 v8, 0x3

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_TITLECOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "actionBarDefaultTitle"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/4 v8, 0x4

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SELECTORCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "actionBarDefaultSelector"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/4 v8, 0x5

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->nameTextView:Landroid/widget/EditText;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "windowBackgroundWhiteBlackText"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/4 v8, 0x6

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->nameTextView:Landroid/widget/EditText;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_HINTTEXTCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "windowBackgroundWhiteHintText"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/4 v8, 0x7

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->linearLayout2:Landroid/widget/LinearLayout;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "windowBackgroundWhite"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x8

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->linkContainer:Landroid/widget/LinearLayout;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "windowBackgroundWhite"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x9

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->sectionCell:Lorg/telegram/ui/Cells/ShadowSectionCell;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "windowBackgroundGrayShadow"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v11, 0xa

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->headerCell:Lorg/telegram/ui/Cells/HeaderCell;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/HeaderCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "textView"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "windowBackgroundWhiteBlueHeader"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v11

    const/16 v8, 0xb

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->editText:Landroid/widget/EditText;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "windowBackgroundWhiteBlackText"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0xc

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->editText:Landroid/widget/EditText;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_HINTTEXTCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "windowBackgroundWhiteHintText"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0xd

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->checkTextView:Landroid/widget/TextView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    or-int/2addr v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "windowBackgroundWhiteRedText4"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0xe

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->checkTextView:Landroid/widget/TextView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    or-int/2addr v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "windowBackgroundWhiteGrayText8"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0xf

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->checkTextView:Landroid/widget/TextView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    or-int/2addr v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "windowBackgroundWhiteGreenText"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x10

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->typeInfoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "windowBackgroundGrayShadow"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v11, 0x11

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->typeInfoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "textView"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "windowBackgroundWhiteGrayText4"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v11

    const/16 v11, 0x12

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->typeInfoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "textView"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "windowBackgroundWhiteRedText4"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v11

    const/16 v8, 0x13

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->adminedInfoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "windowBackgroundGrayShadow"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x14

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->adminnedChannelsLayout:Landroid/widget/LinearLayout;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "windowBackgroundWhite"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x15

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->privateContainer:Lorg/telegram/ui/Cells/TextBlockCell;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "listSelectorSDK21"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v11, 0x16

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->privateContainer:Lorg/telegram/ui/Cells/TextBlockCell;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/TextBlockCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "textView"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "windowBackgroundWhiteBlackText"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v11

    const/16 v11, 0x17

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->loadingAdminedCell:Lorg/telegram/ui/Cells/LoadingCell;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/LoadingCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "progressBar"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "progressCircle"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v11

    const/16 v8, 0x18

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->radioButtonCell1:Lorg/telegram/ui/Cells/RadioButtonCell;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "listSelectorSDK21"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v11, 0x19

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->radioButtonCell1:Lorg/telegram/ui/Cells/RadioButtonCell;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKBOX:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/RadioButtonCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "radioButton"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "radioBackground"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v11

    const/16 v11, 0x1a

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->radioButtonCell1:Lorg/telegram/ui/Cells/RadioButtonCell;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKBOXCHECK:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/RadioButtonCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "radioButton"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "radioBackgroundChecked"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v11

    const/16 v11, 0x1b

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->radioButtonCell1:Lorg/telegram/ui/Cells/RadioButtonCell;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/RadioButtonCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "textView"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "windowBackgroundWhiteBlackText"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v11

    const/16 v11, 0x1c

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->radioButtonCell1:Lorg/telegram/ui/Cells/RadioButtonCell;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/RadioButtonCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "valueTextView"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "windowBackgroundWhiteGrayText2"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v11

    const/16 v8, 0x1d

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->radioButtonCell2:Lorg/telegram/ui/Cells/RadioButtonCell;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "listSelectorSDK21"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v11, 0x1e

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->radioButtonCell2:Lorg/telegram/ui/Cells/RadioButtonCell;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKBOX:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/RadioButtonCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "radioButton"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "radioBackground"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v11

    const/16 v11, 0x1f

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->radioButtonCell2:Lorg/telegram/ui/Cells/RadioButtonCell;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKBOXCHECK:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/RadioButtonCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "radioButton"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "radioBackgroundChecked"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v11

    const/16 v11, 0x20

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->radioButtonCell2:Lorg/telegram/ui/Cells/RadioButtonCell;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/RadioButtonCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "textView"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "windowBackgroundWhiteBlackText"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v11

    const/16 v11, 0x21

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->radioButtonCell2:Lorg/telegram/ui/Cells/RadioButtonCell;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/RadioButtonCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "valueTextView"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "windowBackgroundWhiteGrayText2"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v11

    const/16 v11, 0x22

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->adminnedChannelsLayout:Landroid/widget/LinearLayout;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/AdminedChannelCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "nameTextView"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "windowBackgroundWhiteBlackText"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v11

    const/16 v11, 0x23

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->adminnedChannelsLayout:Landroid/widget/LinearLayout;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/AdminedChannelCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "statusTextView"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "windowBackgroundWhiteGrayText"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v11

    const/16 v11, 0x24

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->adminnedChannelsLayout:Landroid/widget/LinearLayout;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LINKCOLOR:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/AdminedChannelCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "statusTextView"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "windowBackgroundWhiteLinkText"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v11

    const/16 v11, 0x25

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->adminnedChannelsLayout:Landroid/widget/LinearLayout;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_IMAGECOLOR:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/AdminedChannelCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "deleteButton"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "windowBackgroundWhiteGrayText"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v11

    const/16 v8, 0x26

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x2

    new-array v5, v5, [Landroid/graphics/drawable/Drawable;

    const/4 v6, 0x0

    sget-object v7, Lorg/telegram/ui/ActionBar/Theme;->avatar_photoDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    sget-object v7, Lorg/telegram/ui/ActionBar/Theme;->avatar_broadcastDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v7, v5, v6

    const-string v7, "avatar_text"

    move-object v6, v9

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x27

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v7, "avatar_backgroundRed"

    move-object v6, v9

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x28

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v7, "avatar_backgroundOrange"

    move-object v6, v9

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x29

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v7, "avatar_backgroundViolet"

    move-object v6, v9

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x2a

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v7, "avatar_backgroundGreen"

    move-object v6, v9

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x2b

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v7, "avatar_backgroundCyan"

    move-object v6, v9

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x2c

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v7, "avatar_backgroundBlue"

    move-object v6, v9

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x2d

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v7, "avatar_backgroundPink"

    move-object v6, v9

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    return-object v10
.end method

.method public onFragmentCreate()Z
    .registers 8

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 105
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    iget v6, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->chatId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v5

    iput-object v5, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    .line 106
    iget-object v5, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-nez v5, :cond_3b

    .line 107
    new-instance v2, Ljava/util/concurrent/Semaphore;

    invoke-direct {v2, v3}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    .line 108
    .local v2, "semaphore":Ljava/util/concurrent/Semaphore;
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v5

    new-instance v6, Lorg/telegram/ui/ChannelEditTypeActivity$1;

    invoke-direct {v6, p0, v2}, Lorg/telegram/ui/ChannelEditTypeActivity$1;-><init>(Lorg/telegram/ui/ChannelEditTypeActivity;Ljava/util/concurrent/Semaphore;)V

    invoke-virtual {v5, v6}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 116
    :try_start_2b
    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_2e} :catch_7c

    .line 120
    :goto_2e
    iget-object v5, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v5, :cond_7b

    .line 121
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    iget-object v6, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-virtual {v5, v6, v4}, Lorg/telegram/messenger/MessagesController;->putChat(Lorg/telegram/tgnet/TLRPC$Chat;Z)V

    .line 126
    .end local v2    # "semaphore":Ljava/util/concurrent/Semaphore;
    :cond_3b
    iget-object v5, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Chat;->username:Ljava/lang/String;

    if-eqz v5, :cond_4b

    iget-object v5, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Chat;->username:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_4c

    :cond_4b
    move v3, v4

    :cond_4c
    iput-boolean v3, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->isPrivate:Z

    .line 127
    iget-boolean v3, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->isPrivate:Z

    if-eqz v3, :cond_6e

    .line 128
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_channels_checkUsername;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_channels_checkUsername;-><init>()V

    .line 129
    .local v1, "req":Lorg/telegram/tgnet/TLRPC$TL_channels_checkUsername;
    const-string v3, "1"

    iput-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_channels_checkUsername;->username:Ljava/lang/String;

    .line 130
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_inputChannelEmpty;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_inputChannelEmpty;-><init>()V

    iput-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_channels_checkUsername;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    .line 131
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/ChannelEditTypeActivity$2;

    invoke-direct {v4, p0}, Lorg/telegram/ui/ChannelEditTypeActivity$2;-><init>(Lorg/telegram/ui/ChannelEditTypeActivity;)V

    invoke-virtual {v3, v1, v4}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    .line 146
    .end local v1    # "req":Lorg/telegram/tgnet/TLRPC$TL_channels_checkUsername;
    :cond_6e
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/NotificationCenter;->chatInfoDidLoaded:I

    invoke-virtual {v3, p0, v4}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 147
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    move-result v3

    :cond_7b
    return v3

    .line 117
    .restart local v2    # "semaphore":Ljava/util/concurrent/Semaphore;
    :catch_7c
    move-exception v0

    .line 118
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_2e
.end method

.method public onFragmentDestroy()V
    .registers 3

    .prologue
    .line 152
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    .line 153
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->chatInfoDidLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 154
    invoke-virtual {p0}, Lorg/telegram/ui/ChannelEditTypeActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->classGuid:I

    invoke-static {v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->removeAdjustResize(Landroid/app/Activity;I)V

    .line 155
    return-void
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 159
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onResume()V

    .line 160
    invoke-virtual {p0}, Lorg/telegram/ui/ChannelEditTypeActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->classGuid:I

    invoke-static {v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->requestAdjustResize(Landroid/app/Activity;I)V

    .line 161
    return-void
.end method

.method public setInfo(Lorg/telegram/tgnet/TLRPC$ChatFull;)V
    .registers 3
    .param p1, "chatFull"    # Lorg/telegram/tgnet/TLRPC$ChatFull;

    .prologue
    .line 384
    if-eqz p1, :cond_c

    .line 385
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$ChatFull;->exported_invite:Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    if-eqz v0, :cond_d

    .line 386
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$ChatFull;->exported_invite:Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;

    iput-object v0, p0, Lorg/telegram/ui/ChannelEditTypeActivity;->invite:Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;

    .line 391
    :cond_c
    :goto_c
    return-void

    .line 388
    :cond_d
    invoke-direct {p0}, Lorg/telegram/ui/ChannelEditTypeActivity;->generateLink()V

    goto :goto_c
.end method
