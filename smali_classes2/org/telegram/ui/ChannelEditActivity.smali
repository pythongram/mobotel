.class public Lorg/telegram/ui/ChannelEditActivity;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "ChannelEditActivity.java"

# interfaces
.implements Lorg/telegram/ui/Components/AvatarUpdater$AvatarUpdaterDelegate;
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# static fields
.field private static final done_button:I = 0x1


# instance fields
.field private adminCell:Lorg/telegram/ui/Cells/TextSettingsCell;

.field private avatar:Lorg/telegram/tgnet/TLRPC$FileLocation;

.field private avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

.field private avatarImage:Lorg/telegram/ui/Components/BackupImageView;

.field private avatarUpdater:Lorg/telegram/ui/Components/AvatarUpdater;

.field private chatId:I

.field private container1:Landroid/widget/FrameLayout;

.field private container2:Landroid/widget/FrameLayout;

.field private container3:Landroid/widget/FrameLayout;

.field private createAfterUpload:Z

.field private currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

.field private descriptionTextView:Landroid/widget/EditText;

.field private doneButton:Landroid/view/View;

.field private donePressed:Z

.field private info:Lorg/telegram/tgnet/TLRPC$ChatFull;

.field private infoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

.field private infoCell2:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

.field private lineView:Landroid/view/View;

.field private lineView2:Landroid/view/View;

.field private linearLayout2:Landroid/widget/LinearLayout;

.field private linearLayout3:Landroid/widget/LinearLayout;

.field private nameTextView:Landroid/widget/EditText;

.field private progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

.field private sectionCell:Lorg/telegram/ui/Cells/ShadowSectionCell;

.field private sectionCell2:Lorg/telegram/ui/Cells/ShadowSectionCell;

.field private signMessages:Z

.field private textCell:Lorg/telegram/ui/Cells/TextSettingsCell;

.field private textCheckCell:Lorg/telegram/ui/Cells/TextCheckCell;

.field private typeCell:Lorg/telegram/ui/Cells/TextSettingsCell;

.field private uploadedAvatar:Lorg/telegram/tgnet/TLRPC$InputFile;


# direct methods
.method public constructor <init>(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>(Landroid/os/Bundle;)V

    .line 98
    new-instance v0, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v0}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    .line 99
    new-instance v0, Lorg/telegram/ui/Components/AvatarUpdater;

    invoke-direct {v0}, Lorg/telegram/ui/Components/AvatarUpdater;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->avatarUpdater:Lorg/telegram/ui/Components/AvatarUpdater;

    .line 100
    const-string v0, "chat_id"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/ChannelEditActivity;->chatId:I

    .line 101
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/ChannelEditActivity;)Lorg/telegram/tgnet/TLRPC$Chat;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ChannelEditActivity;

    .prologue
    .line 59
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    return-object v0
.end method

.method static synthetic access$002(Lorg/telegram/ui/ChannelEditActivity;Lorg/telegram/tgnet/TLRPC$Chat;)Lorg/telegram/tgnet/TLRPC$Chat;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ChannelEditActivity;
    .param p1, "x1"    # Lorg/telegram/tgnet/TLRPC$Chat;

    .prologue
    .line 59
    iput-object p1, p0, Lorg/telegram/ui/ChannelEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    return-object p1
.end method

.method static synthetic access$100(Lorg/telegram/ui/ChannelEditActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ChannelEditActivity;

    .prologue
    .line 59
    iget v0, p0, Lorg/telegram/ui/ChannelEditActivity;->chatId:I

    return v0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/ChannelEditActivity;)Lorg/telegram/tgnet/TLRPC$InputFile;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ChannelEditActivity;

    .prologue
    .line 59
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->uploadedAvatar:Lorg/telegram/tgnet/TLRPC$InputFile;

    return-object v0
.end method

.method static synthetic access$1002(Lorg/telegram/ui/ChannelEditActivity;Lorg/telegram/tgnet/TLRPC$InputFile;)Lorg/telegram/tgnet/TLRPC$InputFile;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ChannelEditActivity;
    .param p1, "x1"    # Lorg/telegram/tgnet/TLRPC$InputFile;

    .prologue
    .line 59
    iput-object p1, p0, Lorg/telegram/ui/ChannelEditActivity;->uploadedAvatar:Lorg/telegram/tgnet/TLRPC$InputFile;

    return-object p1
.end method

.method static synthetic access$1100(Lorg/telegram/ui/ChannelEditActivity;)Lorg/telegram/tgnet/TLRPC$FileLocation;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ChannelEditActivity;

    .prologue
    .line 59
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->avatar:Lorg/telegram/tgnet/TLRPC$FileLocation;

    return-object v0
.end method

.method static synthetic access$1102(Lorg/telegram/ui/ChannelEditActivity;Lorg/telegram/tgnet/TLRPC$FileLocation;)Lorg/telegram/tgnet/TLRPC$FileLocation;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ChannelEditActivity;
    .param p1, "x1"    # Lorg/telegram/tgnet/TLRPC$FileLocation;

    .prologue
    .line 59
    iput-object p1, p0, Lorg/telegram/ui/ChannelEditActivity;->avatar:Lorg/telegram/tgnet/TLRPC$FileLocation;

    return-object p1
.end method

.method static synthetic access$1200(Lorg/telegram/ui/ChannelEditActivity;)Lorg/telegram/ui/Components/AvatarDrawable;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ChannelEditActivity;

    .prologue
    .line 59
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    return-object v0
.end method

.method static synthetic access$1300(Lorg/telegram/ui/ChannelEditActivity;)Lorg/telegram/ui/Components/BackupImageView;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ChannelEditActivity;

    .prologue
    .line 59
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    return-object v0
.end method

.method static synthetic access$1400(Lorg/telegram/ui/ChannelEditActivity;)Landroid/view/View;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ChannelEditActivity;

    .prologue
    .line 59
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->doneButton:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lorg/telegram/ui/ChannelEditActivity;)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ChannelEditActivity;

    .prologue
    .line 59
    iget-boolean v0, p0, Lorg/telegram/ui/ChannelEditActivity;->donePressed:Z

    return v0
.end method

.method static synthetic access$202(Lorg/telegram/ui/ChannelEditActivity;Z)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ChannelEditActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 59
    iput-boolean p1, p0, Lorg/telegram/ui/ChannelEditActivity;->donePressed:Z

    return p1
.end method

.method static synthetic access$300(Lorg/telegram/ui/ChannelEditActivity;)Landroid/widget/EditText;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ChannelEditActivity;

    .prologue
    .line 59
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->nameTextView:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$400(Lorg/telegram/ui/ChannelEditActivity;)Lorg/telegram/ui/Components/AvatarUpdater;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ChannelEditActivity;

    .prologue
    .line 59
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->avatarUpdater:Lorg/telegram/ui/Components/AvatarUpdater;

    return-object v0
.end method

.method static synthetic access$500(Lorg/telegram/ui/ChannelEditActivity;)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ChannelEditActivity;

    .prologue
    .line 59
    iget-boolean v0, p0, Lorg/telegram/ui/ChannelEditActivity;->createAfterUpload:Z

    return v0
.end method

.method static synthetic access$502(Lorg/telegram/ui/ChannelEditActivity;Z)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ChannelEditActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 59
    iput-boolean p1, p0, Lorg/telegram/ui/ChannelEditActivity;->createAfterUpload:Z

    return p1
.end method

.method static synthetic access$600(Lorg/telegram/ui/ChannelEditActivity;)Lorg/telegram/ui/ActionBar/AlertDialog;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ChannelEditActivity;

    .prologue
    .line 59
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    return-object v0
.end method

.method static synthetic access$602(Lorg/telegram/ui/ChannelEditActivity;Lorg/telegram/ui/ActionBar/AlertDialog;)Lorg/telegram/ui/ActionBar/AlertDialog;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ChannelEditActivity;
    .param p1, "x1"    # Lorg/telegram/ui/ActionBar/AlertDialog;

    .prologue
    .line 59
    iput-object p1, p0, Lorg/telegram/ui/ChannelEditActivity;->progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    return-object p1
.end method

.method static synthetic access$700(Lorg/telegram/ui/ChannelEditActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ChannelEditActivity;

    .prologue
    .line 59
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    return-object v0
.end method

.method static synthetic access$800(Lorg/telegram/ui/ChannelEditActivity;)Landroid/widget/EditText;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ChannelEditActivity;

    .prologue
    .line 59
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->descriptionTextView:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$900(Lorg/telegram/ui/ChannelEditActivity;)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ChannelEditActivity;

    .prologue
    .line 59
    iget-boolean v0, p0, Lorg/telegram/ui/ChannelEditActivity;->signMessages:Z

    return v0
.end method

.method static synthetic access$902(Lorg/telegram/ui/ChannelEditActivity;Z)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ChannelEditActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 59
    iput-boolean p1, p0, Lorg/telegram/ui/ChannelEditActivity;->signMessages:Z

    return p1
.end method

.method private updateAdminCell()V
    .registers 7

    .prologue
    const v2, 0x7f070115

    const/4 v5, 0x0

    .line 614
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->adminCell:Lorg/telegram/ui/Cells/TextSettingsCell;

    if-nez v0, :cond_9

    .line 622
    :goto_8
    return-void

    .line 617
    :cond_9
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz v0, :cond_2c

    .line 618
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->adminCell:Lorg/telegram/ui/Cells/TextSettingsCell;

    const-string v1, "ChannelAdministrators"

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "%d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lorg/telegram/ui/ChannelEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$ChatFull;->admins_count:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v5}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_8

    .line 620
    :cond_2c
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->adminCell:Lorg/telegram/ui/Cells/TextSettingsCell;

    const-string v1, "ChannelAdministrators"

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Lorg/telegram/ui/Cells/TextSettingsCell;->setText(Ljava/lang/String;Z)V

    goto :goto_8
.end method

.method private updateTypeCell()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 582
    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Chat;->username:Ljava/lang/String;

    if-eqz v1, :cond_11

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Chat;->username:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_75

    :cond_11
    const-string v1, "ChannelTypePrivate"

    const v2, 0x7f07015a

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 583
    .local v0, "type":Ljava/lang/String;
    :goto_1a
    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v1, :cond_7f

    .line 584
    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity;->typeCell:Lorg/telegram/ui/Cells/TextSettingsCell;

    const-string v2, "GroupType"

    const v3, 0x7f070271

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v4}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 589
    :goto_2e
    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    if-eqz v1, :cond_8e

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz v1, :cond_3e

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$ChatFull;->can_set_username:Z

    if-eqz v1, :cond_8e

    .line 590
    :cond_3e
    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity;->typeCell:Lorg/telegram/ui/Cells/TextSettingsCell;

    new-instance v2, Lorg/telegram/ui/ChannelEditActivity$11;

    invoke-direct {v2, p0}, Lorg/telegram/ui/ChannelEditActivity$11;-><init>(Lorg/telegram/ui/ChannelEditActivity;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/TextSettingsCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 600
    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity;->typeCell:Lorg/telegram/ui/Cells/TextSettingsCell;

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/TextSettingsCell;->getTextView()Landroid/widget/TextView;

    move-result-object v1

    const-string v2, "windowBackgroundWhiteBlackText"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 601
    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity;->typeCell:Lorg/telegram/ui/Cells/TextSettingsCell;

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/TextSettingsCell;->getValueTextView()Landroid/widget/TextView;

    move-result-object v1

    const-string v2, "windowBackgroundWhiteValueText"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 602
    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity;->typeCell:Lorg/telegram/ui/Cells/TextSettingsCell;

    const-string v2, "windowBackgroundWhiteBlackText"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextColor(I)V

    .line 603
    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity;->typeCell:Lorg/telegram/ui/Cells/TextSettingsCell;

    const-string v2, "windowBackgroundWhiteValueText"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextValueColor(I)V

    .line 611
    :goto_74
    return-void

    .line 582
    .end local v0    # "type":Ljava/lang/String;
    :cond_75
    const-string v1, "ChannelTypePublic"

    const v2, 0x7f07015b

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1a

    .line 586
    .restart local v0    # "type":Ljava/lang/String;
    :cond_7f
    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity;->typeCell:Lorg/telegram/ui/Cells/TextSettingsCell;

    const-string v2, "ChannelType"

    const v3, 0x7f070159

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v4}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_2e

    .line 605
    :cond_8e
    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity;->typeCell:Lorg/telegram/ui/Cells/TextSettingsCell;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/TextSettingsCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 606
    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity;->typeCell:Lorg/telegram/ui/Cells/TextSettingsCell;

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/TextSettingsCell;->getTextView()Landroid/widget/TextView;

    move-result-object v1

    const-string v2, "windowBackgroundWhiteGrayText"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 607
    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity;->typeCell:Lorg/telegram/ui/Cells/TextSettingsCell;

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/TextSettingsCell;->getValueTextView()Landroid/widget/TextView;

    move-result-object v1

    const-string v2, "windowBackgroundWhiteGrayText"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 608
    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity;->typeCell:Lorg/telegram/ui/Cells/TextSettingsCell;

    const-string v2, "windowBackgroundWhiteGrayText"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextColor(I)V

    .line 609
    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity;->typeCell:Lorg/telegram/ui/Cells/TextSettingsCell;

    const-string v2, "windowBackgroundWhiteGrayText"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextValueColor(I)V

    goto :goto_74
.end method


# virtual methods
.method public createView(Landroid/content/Context;)Landroid/view/View;
    .registers 15
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 165
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const v1, 0x7f0200dd

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 166
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    .line 168
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v1, Lorg/telegram/ui/ChannelEditActivity$2;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ChannelEditActivity$2;-><init>(Lorg/telegram/ui/ChannelEditActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 229
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v10

    .line 230
    .local v10, "menu":Lorg/telegram/ui/ActionBar/ActionBarMenu;
    const/4 v0, 0x1

    const v1, 0x7f020114

    const/high16 v2, 0x42600000    # 56.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-virtual {v10, v0, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItemWithWidth(III)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->doneButton:Landroid/view/View;

    .line 234
    new-instance v0, Landroid/widget/ScrollView;

    invoke-direct {v0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->fragmentView:Landroid/view/View;

    .line 235
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->fragmentView:Landroid/view/View;

    const-string v1, "windowBackgroundGray"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 236
    iget-object v11, p0, Lorg/telegram/ui/ChannelEditActivity;->fragmentView:Landroid/view/View;

    check-cast v11, Landroid/widget/ScrollView;

    .line 237
    .local v11, "scrollView":Landroid/widget/ScrollView;
    const/4 v0, 0x1

    invoke-virtual {v11, v0}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    .line 238
    new-instance v9, Landroid/widget/LinearLayout;

    invoke-direct {v9, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 239
    .local v9, "linearLayout":Landroid/widget/LinearLayout;
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v11, v9, v0}, Landroid/widget/ScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 241
    const/4 v0, 0x1

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 243
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string v1, "ChannelEdit"

    const v2, 0x7f070125

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 245
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->linearLayout2:Landroid/widget/LinearLayout;

    .line 246
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->linearLayout2:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 247
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->linearLayout2:Landroid/widget/LinearLayout;

    const-string v1, "windowBackgroundWhite"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 248
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->linearLayout2:Landroid/widget/LinearLayout;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 250
    new-instance v7, Landroid/widget/FrameLayout;

    invoke-direct {v7, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 251
    .local v7, "frameLayout":Landroid/widget/FrameLayout;
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->linearLayout2:Landroid/widget/LinearLayout;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v7, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 253
    new-instance v0, Lorg/telegram/ui/Components/BackupImageView;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    .line 254
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    const/high16 v1, 0x42000000    # 32.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/BackupImageView;->setRoundRadius(I)V

    .line 255
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    const/4 v1, 0x5

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(ILjava/lang/String;Ljava/lang/String;Z)V

    .line 256
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AvatarDrawable;->setDrawPhoto(Z)V

    .line 257
    iget-object v12, p0, Lorg/telegram/ui/ChannelEditActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    const/16 v0, 0x40

    const/high16 v1, 0x42800000    # 64.0f

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_456

    const/4 v2, 0x5

    :goto_c8
    or-int/lit8 v2, v2, 0x30

    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v3, :cond_459

    const/4 v3, 0x0

    :goto_cf
    const/high16 v4, 0x41400000    # 12.0f

    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v5, :cond_45d

    const/high16 v5, 0x41800000    # 16.0f

    :goto_d7
    const/high16 v6, 0x41400000    # 12.0f

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v7, v12, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 258
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    new-instance v1, Lorg/telegram/ui/ChannelEditActivity$3;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ChannelEditActivity$3;-><init>(Lorg/telegram/ui/ChannelEditActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/BackupImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 292
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->nameTextView:Landroid/widget/EditText;

    .line 293
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v0, :cond_460

    .line 294
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->nameTextView:Landroid/widget/EditText;

    const-string v1, "GroupName"

    const v2, 0x7f07026f

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 298
    :goto_105
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->nameTextView:Landroid/widget/EditText;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setMaxLines(I)V

    .line 299
    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity;->nameTextView:Landroid/widget/EditText;

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_470

    const/4 v0, 0x5

    :goto_112
    or-int/lit8 v0, v0, 0x10

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setGravity(I)V

    .line 300
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->nameTextView:Landroid/widget/EditText;

    const/4 v1, 0x1

    const/high16 v2, 0x41800000    # 16.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 301
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->nameTextView:Landroid/widget/EditText;

    const-string v1, "windowBackgroundWhiteHintText"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 302
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->nameTextView:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lorg/telegram/ui/ActionBar/Theme;->createEditTextDrawable(Landroid/content/Context;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 303
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->nameTextView:Landroid/widget/EditText;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 304
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->nameTextView:Landroid/widget/EditText;

    const/16 v1, 0x4001

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 305
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->nameTextView:Landroid/widget/EditText;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x41000000    # 8.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 306
    const/4 v0, 0x1

    new-array v8, v0, [Landroid/text/InputFilter;

    .line 307
    .local v8, "inputFilters":[Landroid/text/InputFilter;
    const/4 v0, 0x0

    new-instance v1, Landroid/text/InputFilter$LengthFilter;

    const/16 v2, 0x64

    invoke-direct {v1, v2}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v1, v8, v0

    .line 308
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->nameTextView:Landroid/widget/EditText;

    invoke-virtual {v0, v8}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 309
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->nameTextView:Landroid/widget/EditText;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->clearCursorDrawable(Landroid/widget/EditText;)V

    .line 310
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->nameTextView:Landroid/widget/EditText;

    const-string v1, "windowBackgroundWhiteBlackText"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextColor(I)V

    .line 311
    iget-object v12, p0, Lorg/telegram/ui/ChannelEditActivity;->nameTextView:Landroid/widget/EditText;

    const/4 v0, -0x1

    const/high16 v1, -0x40000000    # -2.0f

    const/16 v2, 0x10

    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v3, :cond_473

    const/high16 v3, 0x41800000    # 16.0f

    :goto_17f
    const/4 v4, 0x0

    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v5, :cond_477

    const/high16 v5, 0x42c00000    # 96.0f

    :goto_186
    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v7, v12, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 312
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->nameTextView:Landroid/widget/EditText;

    new-instance v1, Lorg/telegram/ui/ChannelEditActivity$4;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ChannelEditActivity$4;-><init>(Lorg/telegram/ui/ChannelEditActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 330
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->lineView:Landroid/view/View;

    .line 331
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->lineView:Landroid/view/View;

    const-string v1, "divider"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 332
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->lineView:Landroid/view/View;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v9, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 334
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->linearLayout3:Landroid/widget/LinearLayout;

    .line 335
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->linearLayout3:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 336
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->linearLayout3:Landroid/widget/LinearLayout;

    const-string v1, "windowBackgroundWhite"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 337
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->linearLayout3:Landroid/widget/LinearLayout;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 339
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->descriptionTextView:Landroid/widget/EditText;

    .line 340
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->descriptionTextView:Landroid/widget/EditText;

    const/4 v1, 0x1

    const/high16 v2, 0x41800000    # 16.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 341
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->descriptionTextView:Landroid/widget/EditText;

    const-string v1, "windowBackgroundWhiteHintText"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 342
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->descriptionTextView:Landroid/widget/EditText;

    const-string v1, "windowBackgroundWhiteBlackText"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextColor(I)V

    .line 343
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->descriptionTextView:Landroid/widget/EditText;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x40c00000    # 6.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 344
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->descriptionTextView:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 345
    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity;->descriptionTextView:Landroid/widget/EditText;

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_47b

    const/4 v0, 0x5

    :goto_219
    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setGravity(I)V

    .line 346
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->descriptionTextView:Landroid/widget/EditText;

    const v1, 0x2c001

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 347
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->descriptionTextView:Landroid/widget/EditText;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 348
    const/4 v0, 0x1

    new-array v8, v0, [Landroid/text/InputFilter;

    .line 349
    const/4 v0, 0x0

    new-instance v1, Landroid/text/InputFilter$LengthFilter;

    const/16 v2, 0xff

    invoke-direct {v1, v2}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v1, v8, v0

    .line 350
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->descriptionTextView:Landroid/widget/EditText;

    invoke-virtual {v0, v8}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 351
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->descriptionTextView:Landroid/widget/EditText;

    const-string v1, "DescriptionOptionalPlaceholder"

    const v2, 0x7f0701e0

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 352
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->descriptionTextView:Landroid/widget/EditText;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->clearCursorDrawable(Landroid/widget/EditText;)V

    .line 353
    iget-object v6, p0, Lorg/telegram/ui/ChannelEditActivity;->linearLayout3:Landroid/widget/LinearLayout;

    iget-object v12, p0, Lorg/telegram/ui/ChannelEditActivity;->descriptionTextView:Landroid/widget/EditText;

    const/4 v0, -0x1

    const/4 v1, -0x2

    const/high16 v2, 0x41880000    # 17.0f

    const/high16 v3, 0x41400000    # 12.0f

    const/high16 v4, 0x41880000    # 17.0f

    const/high16 v5, 0x40c00000    # 6.0f

    invoke-static/range {v0 .. v5}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v6, v12, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 354
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->descriptionTextView:Landroid/widget/EditText;

    new-instance v1, Lorg/telegram/ui/ChannelEditActivity$5;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ChannelEditActivity$5;-><init>(Lorg/telegram/ui/ChannelEditActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 364
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->descriptionTextView:Landroid/widget/EditText;

    new-instance v1, Lorg/telegram/ui/ChannelEditActivity$6;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ChannelEditActivity$6;-><init>(Lorg/telegram/ui/ChannelEditActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 381
    new-instance v0, Lorg/telegram/ui/Cells/ShadowSectionCell;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Cells/ShadowSectionCell;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->sectionCell:Lorg/telegram/ui/Cells/ShadowSectionCell;

    .line 382
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->sectionCell:Lorg/telegram/ui/Cells/ShadowSectionCell;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/ShadowSectionCell;->setSize(I)V

    .line 383
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->sectionCell:Lorg/telegram/ui/Cells/ShadowSectionCell;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 385
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->container1:Landroid/widget/FrameLayout;

    .line 386
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->container1:Landroid/widget/FrameLayout;

    const-string v1, "windowBackgroundWhite"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 387
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->container1:Landroid/widget/FrameLayout;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 389
    new-instance v0, Lorg/telegram/ui/Cells/TextSettingsCell;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Cells/TextSettingsCell;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->typeCell:Lorg/telegram/ui/Cells/TextSettingsCell;

    .line 390
    invoke-direct {p0}, Lorg/telegram/ui/ChannelEditActivity;->updateTypeCell()V

    .line 391
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->typeCell:Lorg/telegram/ui/Cells/TextSettingsCell;

    const/4 v1, 0x0

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextSettingsCell;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 392
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->container1:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity;->typeCell:Lorg/telegram/ui/Cells/TextSettingsCell;

    const/4 v2, -0x1

    const/high16 v3, -0x40000000    # -2.0f

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 394
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->lineView2:Landroid/view/View;

    .line 395
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->lineView2:Landroid/view/View;

    const-string v1, "divider"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 396
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->lineView2:Landroid/view/View;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v9, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 398
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->container2:Landroid/widget/FrameLayout;

    .line 399
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->container2:Landroid/widget/FrameLayout;

    const-string v1, "windowBackgroundWhite"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 400
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->container2:Landroid/widget/FrameLayout;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 402
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez v0, :cond_47e

    .line 403
    new-instance v0, Lorg/telegram/ui/Cells/TextCheckCell;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Cells/TextCheckCell;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->textCheckCell:Lorg/telegram/ui/Cells/TextCheckCell;

    .line 404
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->textCheckCell:Lorg/telegram/ui/Cells/TextCheckCell;

    const/4 v1, 0x0

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 405
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->textCheckCell:Lorg/telegram/ui/Cells/TextCheckCell;

    const-string v1, "ChannelSignMessages"

    const v2, 0x7f070156

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lorg/telegram/ui/ChannelEditActivity;->signMessages:Z

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    .line 406
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->container2:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity;->textCheckCell:Lorg/telegram/ui/Cells/TextCheckCell;

    const/4 v2, -0x1

    const/high16 v3, -0x40000000    # -2.0f

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 407
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->textCheckCell:Lorg/telegram/ui/Cells/TextCheckCell;

    new-instance v1, Lorg/telegram/ui/ChannelEditActivity$7;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ChannelEditActivity$7;-><init>(Lorg/telegram/ui/ChannelEditActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 415
    new-instance v0, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->infoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    .line 416
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->infoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    const v1, 0x7f0200d6

    const-string v2, "windowBackgroundGrayShadow"

    invoke-static {p1, v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 417
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->infoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    const-string v1, "ChannelSignMessagesInfo"

    const v2, 0x7f070157

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 418
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->infoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 442
    :cond_379
    :goto_379
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    if-eqz v0, :cond_419

    .line 443
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->container3:Landroid/widget/FrameLayout;

    .line 444
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->container3:Landroid/widget/FrameLayout;

    const-string v1, "windowBackgroundWhite"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 445
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->container3:Landroid/widget/FrameLayout;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 447
    new-instance v0, Lorg/telegram/ui/Cells/TextSettingsCell;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Cells/TextSettingsCell;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->textCell:Lorg/telegram/ui/Cells/TextSettingsCell;

    .line 448
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->textCell:Lorg/telegram/ui/Cells/TextSettingsCell;

    const-string v1, "windowBackgroundWhiteRedText5"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextColor(I)V

    .line 449
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->textCell:Lorg/telegram/ui/Cells/TextSettingsCell;

    const/4 v1, 0x0

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextSettingsCell;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 450
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v0, :cond_4d9

    .line 451
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->textCell:Lorg/telegram/ui/Cells/TextSettingsCell;

    const-string v1, "DeleteMega"

    const v2, 0x7f0701d7

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Cells/TextSettingsCell;->setText(Ljava/lang/String;Z)V

    .line 455
    :goto_3cd
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->container3:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity;->textCell:Lorg/telegram/ui/Cells/TextSettingsCell;

    const/4 v2, -0x1

    const/high16 v3, -0x40000000    # -2.0f

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 456
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->textCell:Lorg/telegram/ui/Cells/TextSettingsCell;

    new-instance v1, Lorg/telegram/ui/ChannelEditActivity$9;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ChannelEditActivity$9;-><init>(Lorg/telegram/ui/ChannelEditActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextSettingsCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 484
    new-instance v0, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->infoCell2:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    .line 485
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->infoCell2:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    const v1, 0x7f0200d7

    const-string v2, "windowBackgroundGrayShadow"

    invoke-static {p1, v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 486
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v0, :cond_4ea

    .line 487
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->infoCell2:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    const-string v1, "MegaDeleteInfo"

    const v2, 0x7f070301

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 491
    :goto_40e
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->infoCell2:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 494
    :cond_419
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->nameTextView:Landroid/widget/EditText;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 495
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->nameTextView:Landroid/widget/EditText;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity;->nameTextView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 496
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz v0, :cond_43a

    .line 497
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->descriptionTextView:Landroid/widget/EditText;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$ChatFull;->about:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 499
    :cond_43a
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    if-eqz v0, :cond_4fa

    .line 500
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$ChatPhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iput-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->avatar:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 501
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity;->avatar:Lorg/telegram/tgnet/TLRPC$FileLocation;

    const-string v2, "50_50"

    iget-object v3, p0, Lorg/telegram/ui/ChannelEditActivity;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 506
    :goto_453
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->fragmentView:Landroid/view/View;

    return-object v0

    .line 257
    .end local v8    # "inputFilters":[Landroid/text/InputFilter;
    :cond_456
    const/4 v2, 0x3

    goto/16 :goto_c8

    :cond_459
    const/high16 v3, 0x41800000    # 16.0f

    goto/16 :goto_cf

    :cond_45d
    const/4 v5, 0x0

    goto/16 :goto_d7

    .line 296
    :cond_460
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->nameTextView:Landroid/widget/EditText;

    const-string v1, "EnterChannelName"

    const v2, 0x7f070208

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto/16 :goto_105

    .line 299
    :cond_470
    const/4 v0, 0x3

    goto/16 :goto_112

    .line 311
    .restart local v8    # "inputFilters":[Landroid/text/InputFilter;
    :cond_473
    const/high16 v3, 0x42c00000    # 96.0f

    goto/16 :goto_17f

    :cond_477
    const/high16 v5, 0x41800000    # 16.0f

    goto/16 :goto_186

    .line 345
    :cond_47b
    const/4 v0, 0x3

    goto/16 :goto_219

    .line 420
    :cond_47e
    new-instance v0, Lorg/telegram/ui/Cells/TextSettingsCell;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Cells/TextSettingsCell;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->adminCell:Lorg/telegram/ui/Cells/TextSettingsCell;

    .line 421
    invoke-direct {p0}, Lorg/telegram/ui/ChannelEditActivity;->updateAdminCell()V

    .line 422
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->adminCell:Lorg/telegram/ui/Cells/TextSettingsCell;

    const/4 v1, 0x0

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextSettingsCell;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 423
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->container2:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity;->adminCell:Lorg/telegram/ui/Cells/TextSettingsCell;

    const/4 v2, -0x1

    const/high16 v3, -0x40000000    # -2.0f

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 424
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->adminCell:Lorg/telegram/ui/Cells/TextSettingsCell;

    new-instance v1, Lorg/telegram/ui/ChannelEditActivity$8;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ChannelEditActivity$8;-><init>(Lorg/telegram/ui/ChannelEditActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextSettingsCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 434
    new-instance v0, Lorg/telegram/ui/Cells/ShadowSectionCell;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Cells/ShadowSectionCell;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->sectionCell2:Lorg/telegram/ui/Cells/ShadowSectionCell;

    .line 435
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->sectionCell2:Lorg/telegram/ui/Cells/ShadowSectionCell;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/ShadowSectionCell;->setSize(I)V

    .line 436
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->sectionCell2:Lorg/telegram/ui/Cells/ShadowSectionCell;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 437
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    if-nez v0, :cond_379

    .line 438
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->sectionCell2:Lorg/telegram/ui/Cells/ShadowSectionCell;

    const v1, 0x7f0200d7

    const-string v2, "windowBackgroundGrayShadow"

    invoke-static {p1, v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/ShadowSectionCell;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_379

    .line 453
    :cond_4d9
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->textCell:Lorg/telegram/ui/Cells/TextSettingsCell;

    const-string v1, "ChannelDelete"

    const v2, 0x7f070121

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Cells/TextSettingsCell;->setText(Ljava/lang/String;Z)V

    goto/16 :goto_3cd

    .line 489
    :cond_4ea
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->infoCell2:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    const-string v1, "ChannelDeleteInfo"

    const v2, 0x7f070123

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_40e

    .line 503
    :cond_4fa
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/BackupImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_453
.end method

.method public varargs didReceivedNotification(I[Ljava/lang/Object;)V
    .registers 7
    .param p1, "id"    # I
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 511
    sget v2, Lorg/telegram/messenger/NotificationCenter;->chatInfoDidLoaded:I

    if-ne p1, v2, :cond_23

    .line 512
    aget-object v0, p2, v3

    check-cast v0, Lorg/telegram/tgnet/TLRPC$ChatFull;

    .line 513
    .local v0, "chatFull":Lorg/telegram/tgnet/TLRPC$ChatFull;
    iget v2, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->id:I

    iget v3, p0, Lorg/telegram/ui/ChannelEditActivity;->chatId:I

    if-ne v2, v3, :cond_22

    .line 514
    iget-object v2, p0, Lorg/telegram/ui/ChannelEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-nez v2, :cond_1a

    .line 515
    iget-object v2, p0, Lorg/telegram/ui/ChannelEditActivity;->descriptionTextView:Landroid/widget/EditText;

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->about:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 517
    :cond_1a
    iput-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    .line 518
    invoke-direct {p0}, Lorg/telegram/ui/ChannelEditActivity;->updateAdminCell()V

    .line 519
    invoke-direct {p0}, Lorg/telegram/ui/ChannelEditActivity;->updateTypeCell()V

    .line 527
    .end local v0    # "chatFull":Lorg/telegram/tgnet/TLRPC$ChatFull;
    :cond_22
    :goto_22
    return-void

    .line 521
    :cond_23
    sget v2, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    if-ne p1, v2, :cond_22

    .line 522
    aget-object v2, p2, v3

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 523
    .local v1, "updateMask":I
    and-int/lit16 v2, v1, 0x2000

    if-eqz v2, :cond_22

    .line 524
    invoke-direct {p0}, Lorg/telegram/ui/ChannelEditActivity;->updateTypeCell()V

    goto :goto_22
.end method

.method public didUploadedPhoto(Lorg/telegram/tgnet/TLRPC$InputFile;Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$PhotoSize;)V
    .registers 5
    .param p1, "file"    # Lorg/telegram/tgnet/TLRPC$InputFile;
    .param p2, "small"    # Lorg/telegram/tgnet/TLRPC$PhotoSize;
    .param p3, "big"    # Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .prologue
    .line 531
    new-instance v0, Lorg/telegram/ui/ChannelEditActivity$10;

    invoke-direct {v0, p0, p1, p2}, Lorg/telegram/ui/ChannelEditActivity$10;-><init>(Lorg/telegram/ui/ChannelEditActivity;Lorg/telegram/tgnet/TLRPC$InputFile;Lorg/telegram/tgnet/TLRPC$PhotoSize;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 550
    return-void
.end method

.method public getThemeDescriptions()[Lorg/telegram/ui/ActionBar/ThemeDescription;
    .registers 13

    .prologue
    .line 626
    new-instance v9, Lorg/telegram/ui/ChannelEditActivity$12;

    invoke-direct {v9, p0}, Lorg/telegram/ui/ChannelEditActivity$12;-><init>(Lorg/telegram/ui/ChannelEditActivity;)V

    .line 635
    .local v9, "\u0441ellDelegate":Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;
    const/16 v0, 0x2a

    new-array v10, v0, [Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v8, 0x0

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity;->fragmentView:Landroid/view/View;

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

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

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

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

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

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

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

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

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

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity;->nameTextView:Landroid/widget/EditText;

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

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity;->nameTextView:Landroid/widget/EditText;

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

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity;->nameTextView:Landroid/widget/EditText;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "windowBackgroundWhiteInputField"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x8

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity;->nameTextView:Landroid/widget/EditText;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_DRAWABLESELECTEDSTATE:I

    or-int/2addr v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "windowBackgroundWhiteInputFieldActivated"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x9

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity;->descriptionTextView:Landroid/widget/EditText;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "windowBackgroundWhiteBlackText"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0xa

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity;->descriptionTextView:Landroid/widget/EditText;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_HINTTEXTCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "windowBackgroundWhiteHintText"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0xb

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity;->linearLayout2:Landroid/widget/LinearLayout;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "windowBackgroundWhite"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0xc

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity;->linearLayout3:Landroid/widget/LinearLayout;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "windowBackgroundWhite"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0xd

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity;->container1:Landroid/widget/FrameLayout;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "windowBackgroundWhite"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0xe

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity;->container2:Landroid/widget/FrameLayout;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "windowBackgroundWhite"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0xf

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity;->container3:Landroid/widget/FrameLayout;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "windowBackgroundWhite"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x10

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

    const/16 v8, 0x11

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

    const/16 v8, 0x12

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity;->lineView:Landroid/view/View;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "divider"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x13

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity;->lineView2:Landroid/view/View;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "divider"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x14

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity;->sectionCell:Lorg/telegram/ui/Cells/ShadowSectionCell;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/ShadowSectionCell;

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "windowBackgroundGrayShadow"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x15

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity;->typeCell:Lorg/telegram/ui/Cells/TextSettingsCell;

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

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity;->typeCell:Lorg/telegram/ui/Cells/TextSettingsCell;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    or-int/2addr v2, v3

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/TextSettingsCell;

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

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity;->typeCell:Lorg/telegram/ui/Cells/TextSettingsCell;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    or-int/2addr v2, v3

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/TextSettingsCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "valueTextView"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "windowBackgroundWhiteValueText"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v11

    const/16 v11, 0x18

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity;->typeCell:Lorg/telegram/ui/Cells/TextSettingsCell;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    or-int/2addr v2, v3

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/TextSettingsCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "textView"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "windowBackgroundWhiteGrayText"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v11

    const/16 v11, 0x19

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity;->typeCell:Lorg/telegram/ui/Cells/TextSettingsCell;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    or-int/2addr v2, v3

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/TextSettingsCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "valueTextView"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "windowBackgroundWhiteGrayText"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v11

    const/16 v8, 0x1a

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity;->textCheckCell:Lorg/telegram/ui/Cells/TextCheckCell;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "listSelectorSDK21"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v11, 0x1b

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity;->textCheckCell:Lorg/telegram/ui/Cells/TextCheckCell;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/TextCheckCell;

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

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity;->textCheckCell:Lorg/telegram/ui/Cells/TextCheckCell;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "checkBox"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "switchThumb"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v11

    const/16 v11, 0x1d

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity;->textCheckCell:Lorg/telegram/ui/Cells/TextCheckCell;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "checkBox"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "switchTrack"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v11

    const/16 v11, 0x1e

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity;->textCheckCell:Lorg/telegram/ui/Cells/TextCheckCell;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "checkBox"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "switchThumbChecked"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v11

    const/16 v11, 0x1f

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity;->textCheckCell:Lorg/telegram/ui/Cells/TextCheckCell;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "checkBox"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "switchTrackChecked"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v11

    const/16 v8, 0x20

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity;->infoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

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

    const/16 v11, 0x21

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity;->infoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    const/4 v2, 0x0

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

    const/16 v8, 0x22

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity;->adminCell:Lorg/telegram/ui/Cells/TextSettingsCell;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "listSelectorSDK21"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v11, 0x23

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity;->adminCell:Lorg/telegram/ui/Cells/TextSettingsCell;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/TextSettingsCell;

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

    const/16 v11, 0x24

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity;->adminCell:Lorg/telegram/ui/Cells/TextSettingsCell;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/TextSettingsCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "valueTextView"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "windowBackgroundWhiteValueText"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v11

    const/16 v8, 0x25

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity;->sectionCell2:Lorg/telegram/ui/Cells/ShadowSectionCell;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/ShadowSectionCell;

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "windowBackgroundGrayShadow"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x26

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity;->textCell:Lorg/telegram/ui/Cells/TextSettingsCell;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "listSelectorSDK21"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v11, 0x27

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity;->textCell:Lorg/telegram/ui/Cells/TextSettingsCell;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/TextSettingsCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "textView"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "windowBackgroundWhiteRedText5"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v11

    const/16 v8, 0x28

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity;->infoCell2:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

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

    const/16 v11, 0x29

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity;->infoCell2:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    const/4 v2, 0x0

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

    return-object v10
.end method

.method public onActivityResultFragment(IILandroid/content/Intent;)V
    .registers 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 554
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->avatarUpdater:Lorg/telegram/ui/Components/AvatarUpdater;

    invoke-virtual {v0, p1, p2, p3}, Lorg/telegram/ui/Components/AvatarUpdater;->onActivityResult(IILandroid/content/Intent;)V

    .line 555
    return-void
.end method

.method public onFragmentCreate()Z
    .registers 7

    .prologue
    const/4 v2, 0x0

    .line 106
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget v4, p0, Lorg/telegram/ui/ChannelEditActivity;->chatId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v3

    iput-object v3, p0, Lorg/telegram/ui/ChannelEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    .line 107
    iget-object v3, p0, Lorg/telegram/ui/ChannelEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-nez v3, :cond_5a

    .line 108
    new-instance v1, Ljava/util/concurrent/Semaphore;

    invoke-direct {v1, v2}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    .line 109
    .local v1, "semaphore":Ljava/util/concurrent/Semaphore;
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/ChannelEditActivity$1;

    invoke-direct {v4, p0, v1}, Lorg/telegram/ui/ChannelEditActivity$1;-><init>(Lorg/telegram/ui/ChannelEditActivity;Ljava/util/concurrent/Semaphore;)V

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 117
    :try_start_2a
    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2d} :catch_50

    .line 121
    :goto_2d
    iget-object v3, p0, Lorg/telegram/ui/ChannelEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v3, :cond_4f

    .line 122
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/ChannelEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lorg/telegram/messenger/MessagesController;->putChat(Lorg/telegram/tgnet/TLRPC$Chat;Z)V

    .line 126
    iget-object v3, p0, Lorg/telegram/ui/ChannelEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-nez v3, :cond_5a

    .line 127
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v3

    iget v4, p0, Lorg/telegram/ui/ChannelEditActivity;->chatId:I

    invoke-virtual {v3, v4, v1, v2, v2}, Lorg/telegram/messenger/MessagesStorage;->loadChatInfo(ILjava/util/concurrent/Semaphore;ZZ)V

    .line 129
    :try_start_48
    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_4b} :catch_55

    .line 133
    :goto_4b
    iget-object v3, p0, Lorg/telegram/ui/ChannelEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-nez v3, :cond_5a

    .line 143
    .end local v1    # "semaphore":Ljava/util/concurrent/Semaphore;
    :cond_4f
    :goto_4f
    return v2

    .line 118
    .restart local v1    # "semaphore":Ljava/util/concurrent/Semaphore;
    :catch_50
    move-exception v0

    .line 119
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_2d

    .line 130
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_55
    move-exception v0

    .line 131
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_4b

    .line 138
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "semaphore":Ljava/util/concurrent/Semaphore;
    :cond_5a
    iget-object v2, p0, Lorg/telegram/ui/ChannelEditActivity;->avatarUpdater:Lorg/telegram/ui/Components/AvatarUpdater;

    iput-object p0, v2, Lorg/telegram/ui/Components/AvatarUpdater;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 139
    iget-object v2, p0, Lorg/telegram/ui/ChannelEditActivity;->avatarUpdater:Lorg/telegram/ui/Components/AvatarUpdater;

    iput-object p0, v2, Lorg/telegram/ui/Components/AvatarUpdater;->delegate:Lorg/telegram/ui/Components/AvatarUpdater$AvatarUpdaterDelegate;

    .line 140
    iget-object v2, p0, Lorg/telegram/ui/ChannelEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->signatures:Z

    iput-boolean v2, p0, Lorg/telegram/ui/ChannelEditActivity;->signMessages:Z

    .line 141
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->chatInfoDidLoaded:I

    invoke-virtual {v2, p0, v3}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 142
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    invoke-virtual {v2, p0, v3}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 143
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    move-result v2

    goto :goto_4f
.end method

.method public onFragmentDestroy()V
    .registers 3

    .prologue
    .line 148
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    .line 149
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->avatarUpdater:Lorg/telegram/ui/Components/AvatarUpdater;

    if-eqz v0, :cond_c

    .line 150
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->avatarUpdater:Lorg/telegram/ui/Components/AvatarUpdater;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AvatarUpdater;->clear()V

    .line 152
    :cond_c
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->chatInfoDidLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 153
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 154
    invoke-virtual {p0}, Lorg/telegram/ui/ChannelEditActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/ChannelEditActivity;->classGuid:I

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
    invoke-virtual {p0}, Lorg/telegram/ui/ChannelEditActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/ChannelEditActivity;->classGuid:I

    invoke-static {v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->requestAdjustResize(Landroid/app/Activity;I)V

    .line 161
    return-void
.end method

.method public restoreSelfArgs(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    .line 572
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->avatarUpdater:Lorg/telegram/ui/Components/AvatarUpdater;

    if-eqz v0, :cond_e

    .line 573
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->avatarUpdater:Lorg/telegram/ui/Components/AvatarUpdater;

    const-string v1, "path"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/Components/AvatarUpdater;->currentPicturePath:Ljava/lang/String;

    .line 575
    :cond_e
    return-void
.end method

.method public saveSelfArgs(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    .line 559
    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity;->avatarUpdater:Lorg/telegram/ui/Components/AvatarUpdater;

    if-eqz v1, :cond_13

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity;->avatarUpdater:Lorg/telegram/ui/Components/AvatarUpdater;

    iget-object v1, v1, Lorg/telegram/ui/Components/AvatarUpdater;->currentPicturePath:Ljava/lang/String;

    if-eqz v1, :cond_13

    .line 560
    const-string v1, "path"

    iget-object v2, p0, Lorg/telegram/ui/ChannelEditActivity;->avatarUpdater:Lorg/telegram/ui/Components/AvatarUpdater;

    iget-object v2, v2, Lorg/telegram/ui/Components/AvatarUpdater;->currentPicturePath:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 562
    :cond_13
    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity;->nameTextView:Landroid/widget/EditText;

    if-eqz v1, :cond_2e

    .line 563
    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity;->nameTextView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 564
    .local v0, "text":Ljava/lang/String;
    if-eqz v0, :cond_2e

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_2e

    .line 565
    const-string v1, "nameTextView"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 568
    .end local v0    # "text":Ljava/lang/String;
    :cond_2e
    return-void
.end method

.method public setInfo(Lorg/telegram/tgnet/TLRPC$ChatFull;)V
    .registers 2
    .param p1, "chatFull"    # Lorg/telegram/tgnet/TLRPC$ChatFull;

    .prologue
    .line 578
    iput-object p1, p0, Lorg/telegram/ui/ChannelEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    .line 579
    return-void
.end method
