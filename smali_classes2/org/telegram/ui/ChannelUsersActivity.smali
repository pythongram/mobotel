.class public Lorg/telegram/ui/ChannelUsersActivity;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "ChannelUsersActivity.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;
    }
.end annotation


# instance fields
.field private chatId:I

.field private emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

.field private firstLoaded:Z

.field private isAdmin:Z

.field private isMegagroup:Z

.field private isModerator:Z

.field private isPublic:Z

.field private listView:Lorg/telegram/ui/Components/RecyclerListView;

.field private listViewAdapter:Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;

.field private loadingUsers:Z

.field private participants:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$ChannelParticipant;",
            ">;"
        }
    .end annotation
.end field

.field private participantsStartRow:I

.field private type:I


# direct methods
.method public constructor <init>(Landroid/os/Bundle;)V
    .registers 8
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 73
    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>(Landroid/os/Bundle;)V

    .line 61
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/ChannelUsersActivity;->participants:Ljava/util/ArrayList;

    .line 74
    iget-object v1, p0, Lorg/telegram/ui/ChannelUsersActivity;->arguments:Landroid/os/Bundle;

    const-string v5, "chat_id"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/ChannelUsersActivity;->chatId:I

    .line 75
    iget-object v1, p0, Lorg/telegram/ui/ChannelUsersActivity;->arguments:Landroid/os/Bundle;

    const-string v5, "type"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/ChannelUsersActivity;->type:I

    .line 76
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget v5, p0, Lorg/telegram/ui/ChannelUsersActivity;->chatId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    .line 77
    .local v0, "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    if-eqz v0, :cond_44

    .line 78
    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    if-eqz v1, :cond_4d

    .line 79
    iput-boolean v2, p0, Lorg/telegram/ui/ChannelUsersActivity;->isAdmin:Z

    .line 80
    iget v1, v0, Lorg/telegram/tgnet/TLRPC$Chat;->flags:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_4b

    move v1, v2

    :goto_3e
    iput-boolean v1, p0, Lorg/telegram/ui/ChannelUsersActivity;->isPublic:Z

    .line 84
    :cond_40
    :goto_40
    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    iput-boolean v1, p0, Lorg/telegram/ui/ChannelUsersActivity;->isMegagroup:Z

    .line 86
    :cond_44
    iget v1, p0, Lorg/telegram/ui/ChannelUsersActivity;->type:I

    if-nez v1, :cond_54

    .line 87
    iput v3, p0, Lorg/telegram/ui/ChannelUsersActivity;->participantsStartRow:I

    .line 93
    :cond_4a
    :goto_4a
    return-void

    :cond_4b
    move v1, v3

    .line 80
    goto :goto_3e

    .line 81
    :cond_4d
    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$Chat;->editor:Z

    if-eqz v1, :cond_40

    .line 82
    iput-boolean v2, p0, Lorg/telegram/ui/ChannelUsersActivity;->isModerator:Z

    goto :goto_40

    .line 88
    :cond_54
    iget v1, p0, Lorg/telegram/ui/ChannelUsersActivity;->type:I

    if-ne v1, v2, :cond_64

    .line 89
    iget-boolean v1, p0, Lorg/telegram/ui/ChannelUsersActivity;->isAdmin:Z

    if-eqz v1, :cond_61

    iget-boolean v1, p0, Lorg/telegram/ui/ChannelUsersActivity;->isMegagroup:Z

    if-eqz v1, :cond_61

    const/4 v3, 0x4

    :cond_61
    iput v3, p0, Lorg/telegram/ui/ChannelUsersActivity;->participantsStartRow:I

    goto :goto_4a

    .line 90
    :cond_64
    iget v1, p0, Lorg/telegram/ui/ChannelUsersActivity;->type:I

    if-ne v1, v4, :cond_4a

    .line 91
    iget-boolean v1, p0, Lorg/telegram/ui/ChannelUsersActivity;->isAdmin:Z

    if-eqz v1, :cond_71

    iget-boolean v1, p0, Lorg/telegram/ui/ChannelUsersActivity;->isPublic:Z

    if-eqz v1, :cond_74

    move v3, v4

    :cond_71
    :goto_71
    iput v3, p0, Lorg/telegram/ui/ChannelUsersActivity;->participantsStartRow:I

    goto :goto_4a

    :cond_74
    const/4 v3, 0x3

    goto :goto_71
.end method

.method static synthetic access$000(Lorg/telegram/ui/ChannelUsersActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ChannelUsersActivity;

    .prologue
    .line 55
    iget v0, p0, Lorg/telegram/ui/ChannelUsersActivity;->type:I

    return v0
.end method

.method static synthetic access$100(Lorg/telegram/ui/ChannelUsersActivity;)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ChannelUsersActivity;

    .prologue
    .line 55
    iget-boolean v0, p0, Lorg/telegram/ui/ChannelUsersActivity;->isAdmin:Z

    return v0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/ChannelUsersActivity;Lorg/telegram/tgnet/TLRPC$ChannelParticipant;)I
    .registers 3
    .param p0, "x0"    # Lorg/telegram/ui/ChannelUsersActivity;
    .param p1, "x1"    # Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChannelUsersActivity;->getChannelAdminParticipantType(Lorg/telegram/tgnet/TLRPC$ChannelParticipant;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lorg/telegram/ui/ChannelUsersActivity;)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ChannelUsersActivity;

    .prologue
    .line 55
    iget-boolean v0, p0, Lorg/telegram/ui/ChannelUsersActivity;->loadingUsers:Z

    return v0
.end method

.method static synthetic access$1102(Lorg/telegram/ui/ChannelUsersActivity;Z)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ChannelUsersActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 55
    iput-boolean p1, p0, Lorg/telegram/ui/ChannelUsersActivity;->loadingUsers:Z

    return p1
.end method

.method static synthetic access$1200(Lorg/telegram/ui/ChannelUsersActivity;)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ChannelUsersActivity;

    .prologue
    .line 55
    iget-boolean v0, p0, Lorg/telegram/ui/ChannelUsersActivity;->firstLoaded:Z

    return v0
.end method

.method static synthetic access$1202(Lorg/telegram/ui/ChannelUsersActivity;Z)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ChannelUsersActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 55
    iput-boolean p1, p0, Lorg/telegram/ui/ChannelUsersActivity;->firstLoaded:Z

    return p1
.end method

.method static synthetic access$1300(Lorg/telegram/ui/ChannelUsersActivity;)Lorg/telegram/ui/Components/EmptyTextProgressView;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ChannelUsersActivity;

    .prologue
    .line 55
    iget-object v0, p0, Lorg/telegram/ui/ChannelUsersActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    return-object v0
.end method

.method static synthetic access$200(Lorg/telegram/ui/ChannelUsersActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ChannelUsersActivity;

    .prologue
    .line 55
    iget v0, p0, Lorg/telegram/ui/ChannelUsersActivity;->chatId:I

    return v0
.end method

.method static synthetic access$300(Lorg/telegram/ui/ChannelUsersActivity;)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ChannelUsersActivity;

    .prologue
    .line 55
    iget-boolean v0, p0, Lorg/telegram/ui/ChannelUsersActivity;->isPublic:Z

    return v0
.end method

.method static synthetic access$400(Lorg/telegram/ui/ChannelUsersActivity;)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ChannelUsersActivity;

    .prologue
    .line 55
    iget-boolean v0, p0, Lorg/telegram/ui/ChannelUsersActivity;->isMegagroup:Z

    return v0
.end method

.method static synthetic access$500(Lorg/telegram/ui/ChannelUsersActivity;)Lorg/telegram/ui/Components/RecyclerListView;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ChannelUsersActivity;

    .prologue
    .line 55
    iget-object v0, p0, Lorg/telegram/ui/ChannelUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object v0
.end method

.method static synthetic access$600(Lorg/telegram/ui/ChannelUsersActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ChannelUsersActivity;

    .prologue
    .line 55
    iget v0, p0, Lorg/telegram/ui/ChannelUsersActivity;->participantsStartRow:I

    return v0
.end method

.method static synthetic access$700(Lorg/telegram/ui/ChannelUsersActivity;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ChannelUsersActivity;

    .prologue
    .line 55
    iget-object v0, p0, Lorg/telegram/ui/ChannelUsersActivity;->participants:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$702(Lorg/telegram/ui/ChannelUsersActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ChannelUsersActivity;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 55
    iput-object p1, p0, Lorg/telegram/ui/ChannelUsersActivity;->participants:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$800(Lorg/telegram/ui/ChannelUsersActivity;)Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ChannelUsersActivity;

    .prologue
    .line 55
    iget-object v0, p0, Lorg/telegram/ui/ChannelUsersActivity;->listViewAdapter:Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;

    return-object v0
.end method

.method static synthetic access$900(Lorg/telegram/ui/ChannelUsersActivity;II)V
    .registers 3
    .param p0, "x0"    # Lorg/telegram/ui/ChannelUsersActivity;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ChannelUsersActivity;->getChannelParticipants(II)V

    return-void
.end method

.method private getChannelAdminParticipantType(Lorg/telegram/tgnet/TLRPC$ChannelParticipant;)I
    .registers 3
    .param p1, "participant"    # Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    .prologue
    .line 364
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantCreator;

    if-nez v0, :cond_8

    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantSelf;

    if-eqz v0, :cond_a

    .line 365
    :cond_8
    const/4 v0, 0x0

    .line 369
    :goto_9
    return v0

    .line 366
    :cond_a
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantEditor;

    if-eqz v0, :cond_10

    .line 367
    const/4 v0, 0x1

    goto :goto_9

    .line 369
    :cond_10
    const/4 v0, 0x2

    goto :goto_9
.end method

.method private getChannelParticipants(II)V
    .registers 7
    .param p1, "offset"    # I
    .param p2, "count"    # I

    .prologue
    const/4 v3, 0x1

    .line 374
    iget-boolean v2, p0, Lorg/telegram/ui/ChannelUsersActivity;->loadingUsers:Z

    if-eqz v2, :cond_6

    .line 482
    :goto_5
    return-void

    .line 377
    :cond_6
    iput-boolean v3, p0, Lorg/telegram/ui/ChannelUsersActivity;->loadingUsers:Z

    .line 378
    iget-object v2, p0, Lorg/telegram/ui/ChannelUsersActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    if-eqz v2, :cond_15

    iget-boolean v2, p0, Lorg/telegram/ui/ChannelUsersActivity;->firstLoaded:Z

    if-nez v2, :cond_15

    .line 379
    iget-object v2, p0, Lorg/telegram/ui/ChannelUsersActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/EmptyTextProgressView;->showProgress()V

    .line 381
    :cond_15
    iget-object v2, p0, Lorg/telegram/ui/ChannelUsersActivity;->listViewAdapter:Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;

    if-eqz v2, :cond_1e

    .line 382
    iget-object v2, p0, Lorg/telegram/ui/ChannelUsersActivity;->listViewAdapter:Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;

    invoke-virtual {v2}, Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;->notifyDataSetChanged()V

    .line 384
    :cond_1e
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;-><init>()V

    .line 385
    .local v0, "req":Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;
    iget v2, p0, Lorg/telegram/ui/ChannelUsersActivity;->chatId:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInputChannel(I)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object v2

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    .line 386
    iget v2, p0, Lorg/telegram/ui/ChannelUsersActivity;->type:I

    if-nez v2, :cond_51

    .line 387
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantsKicked;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantsKicked;-><init>()V

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;->filter:Lorg/telegram/tgnet/TLRPC$ChannelParticipantsFilter;

    .line 393
    :cond_36
    :goto_36
    iput p1, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;->offset:I

    .line 394
    iput p2, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;->limit:I

    .line 395
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/ChannelUsersActivity$6;

    invoke-direct {v3, p0}, Lorg/telegram/ui/ChannelUsersActivity$6;-><init>(Lorg/telegram/ui/ChannelUsersActivity;)V

    invoke-virtual {v2, v0, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    move-result v1

    .line 481
    .local v1, "reqId":I
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    iget v3, p0, Lorg/telegram/ui/ChannelUsersActivity;->classGuid:I

    invoke-virtual {v2, v1, v3}, Lorg/telegram/tgnet/ConnectionsManager;->bindRequestToGuid(II)V

    goto :goto_5

    .line 388
    .end local v1    # "reqId":I
    :cond_51
    iget v2, p0, Lorg/telegram/ui/ChannelUsersActivity;->type:I

    if-ne v2, v3, :cond_5d

    .line 389
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantsAdmins;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantsAdmins;-><init>()V

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;->filter:Lorg/telegram/tgnet/TLRPC$ChannelParticipantsFilter;

    goto :goto_36

    .line 390
    :cond_5d
    iget v2, p0, Lorg/telegram/ui/ChannelUsersActivity;->type:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_36

    .line 391
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantsRecent;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantsRecent;-><init>()V

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;->filter:Lorg/telegram/tgnet/TLRPC$ChannelParticipantsFilter;

    goto :goto_36
.end method


# virtual methods
.method public createView(Landroid/content/Context;)Landroid/view/View;
    .registers 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, -0x1

    const/high16 v6, -0x40800000    # -1.0f

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 111
    iget-object v3, p0, Lorg/telegram/ui/ChannelUsersActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const v4, 0x7f0200dd

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 112
    iget-object v3, p0, Lorg/telegram/ui/ChannelUsersActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v3, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    .line 113
    iget v3, p0, Lorg/telegram/ui/ChannelUsersActivity;->type:I

    if-nez v3, :cond_d5

    .line 114
    iget-object v3, p0, Lorg/telegram/ui/ChannelUsersActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string v4, "ChannelBlockedUsers"

    const v5, 0x7f07011a

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 120
    :cond_24
    :goto_24
    iget-object v3, p0, Lorg/telegram/ui/ChannelUsersActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v4, Lorg/telegram/ui/ChannelUsersActivity$1;

    invoke-direct {v4, p0}, Lorg/telegram/ui/ChannelUsersActivity$1;-><init>(Lorg/telegram/ui/ChannelUsersActivity;)V

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 129
    new-instance v3, Landroid/widget/FrameLayout;

    invoke-direct {v3, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lorg/telegram/ui/ChannelUsersActivity;->fragmentView:Landroid/view/View;

    .line 130
    iget-object v3, p0, Lorg/telegram/ui/ChannelUsersActivity;->fragmentView:Landroid/view/View;

    const-string v4, "windowBackgroundGray"

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 131
    iget-object v0, p0, Lorg/telegram/ui/ChannelUsersActivity;->fragmentView:Landroid/view/View;

    check-cast v0, Landroid/widget/FrameLayout;

    .line 133
    .local v0, "frameLayout":Landroid/widget/FrameLayout;
    new-instance v3, Lorg/telegram/ui/Components/EmptyTextProgressView;

    invoke-direct {v3, p1}, Lorg/telegram/ui/Components/EmptyTextProgressView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lorg/telegram/ui/ChannelUsersActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    .line 134
    iget v3, p0, Lorg/telegram/ui/ChannelUsersActivity;->type:I

    if-nez v3, :cond_61

    .line 135
    iget-boolean v3, p0, Lorg/telegram/ui/ChannelUsersActivity;->isMegagroup:Z

    if-eqz v3, :cond_fd

    .line 136
    iget-object v3, p0, Lorg/telegram/ui/ChannelUsersActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    const-string v4, "NoBlockedGroup"

    const v5, 0x7f070352

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/EmptyTextProgressView;->setText(Ljava/lang/String;)V

    .line 141
    :cond_61
    :goto_61
    iget-object v3, p0, Lorg/telegram/ui/ChannelUsersActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    invoke-static {v7, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 143
    new-instance v3, Lorg/telegram/ui/Components/RecyclerListView;

    invoke-direct {v3, p1}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lorg/telegram/ui/ChannelUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 144
    iget-object v3, p0, Lorg/telegram/ui/ChannelUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v4, p0, Lorg/telegram/ui/ChannelUsersActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/RecyclerListView;->setEmptyView(Landroid/view/View;)V

    .line 145
    iget-object v3, p0, Lorg/telegram/ui/ChannelUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v4, Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    const/4 v5, 0x0

    invoke-direct {v4, p1, v1, v5}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/RecyclerListView;->setLayoutManager(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;)V

    .line 146
    iget-object v3, p0, Lorg/telegram/ui/ChannelUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v4, Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;

    invoke-direct {v4, p0, p1}, Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;-><init>(Lorg/telegram/ui/ChannelUsersActivity;Landroid/content/Context;)V

    iput-object v4, p0, Lorg/telegram/ui/ChannelUsersActivity;->listViewAdapter:Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;)V

    .line 147
    iget-object v3, p0, Lorg/telegram/ui/ChannelUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget-boolean v4, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v4, :cond_10d

    :goto_95
    invoke-virtual {v3, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setVerticalScrollbarPosition(I)V

    .line 148
    iget-object v1, p0, Lorg/telegram/ui/ChannelUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {v7, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 150
    iget-object v1, p0, Lorg/telegram/ui/ChannelUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v3, Lorg/telegram/ui/ChannelUsersActivity$2;

    invoke-direct {v3, p0}, Lorg/telegram/ui/ChannelUsersActivity$2;-><init>(Lorg/telegram/ui/ChannelUsersActivity;)V

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    .line 238
    iget-boolean v1, p0, Lorg/telegram/ui/ChannelUsersActivity;->isAdmin:Z

    if-nez v1, :cond_bf

    iget-boolean v1, p0, Lorg/telegram/ui/ChannelUsersActivity;->isModerator:Z

    if-eqz v1, :cond_b7

    iget v1, p0, Lorg/telegram/ui/ChannelUsersActivity;->type:I

    if-eq v1, v2, :cond_bf

    :cond_b7
    iget-boolean v1, p0, Lorg/telegram/ui/ChannelUsersActivity;->isMegagroup:Z

    if-eqz v1, :cond_c9

    iget v1, p0, Lorg/telegram/ui/ChannelUsersActivity;->type:I

    if-nez v1, :cond_c9

    .line 239
    :cond_bf
    iget-object v1, p0, Lorg/telegram/ui/ChannelUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v2, Lorg/telegram/ui/ChannelUsersActivity$3;

    invoke-direct {v2, p0}, Lorg/telegram/ui/ChannelUsersActivity$3;-><init>(Lorg/telegram/ui/ChannelUsersActivity;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemLongClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListener;)V

    .line 309
    :cond_c9
    iget-boolean v1, p0, Lorg/telegram/ui/ChannelUsersActivity;->loadingUsers:Z

    if-eqz v1, :cond_10f

    .line 310
    iget-object v1, p0, Lorg/telegram/ui/ChannelUsersActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/EmptyTextProgressView;->showProgress()V

    .line 314
    :goto_d2
    iget-object v1, p0, Lorg/telegram/ui/ChannelUsersActivity;->fragmentView:Landroid/view/View;

    return-object v1

    .line 115
    .end local v0    # "frameLayout":Landroid/widget/FrameLayout;
    :cond_d5
    iget v3, p0, Lorg/telegram/ui/ChannelUsersActivity;->type:I

    if-ne v3, v1, :cond_e9

    .line 116
    iget-object v3, p0, Lorg/telegram/ui/ChannelUsersActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string v4, "ChannelAdministrators"

    const v5, 0x7f070115

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_24

    .line 117
    :cond_e9
    iget v3, p0, Lorg/telegram/ui/ChannelUsersActivity;->type:I

    if-ne v3, v2, :cond_24

    .line 118
    iget-object v3, p0, Lorg/telegram/ui/ChannelUsersActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string v4, "ChannelMembers"

    const v5, 0x7f070130

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_24

    .line 138
    .restart local v0    # "frameLayout":Landroid/widget/FrameLayout;
    :cond_fd
    iget-object v3, p0, Lorg/telegram/ui/ChannelUsersActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    const-string v4, "NoBlocked"

    const v5, 0x7f070351

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/EmptyTextProgressView;->setText(Ljava/lang/String;)V

    goto/16 :goto_61

    :cond_10d
    move v1, v2

    .line 147
    goto :goto_95

    .line 312
    :cond_10f
    iget-object v1, p0, Lorg/telegram/ui/ChannelUsersActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/EmptyTextProgressView;->showTextView()V

    goto :goto_d2
.end method

.method public varargs didReceivedNotification(I[Ljava/lang/Object;)V
    .registers 6
    .param p1, "id"    # I
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 350
    sget v1, Lorg/telegram/messenger/NotificationCenter;->chatInfoDidLoaded:I

    if-ne p1, v1, :cond_17

    .line 351
    const/4 v1, 0x0

    aget-object v0, p2, v1

    check-cast v0, Lorg/telegram/tgnet/TLRPC$ChatFull;

    .line 352
    .local v0, "chatFull":Lorg/telegram/tgnet/TLRPC$ChatFull;
    iget v1, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->id:I

    iget v2, p0, Lorg/telegram/ui/ChannelUsersActivity;->chatId:I

    if-ne v1, v2, :cond_17

    .line 353
    new-instance v1, Lorg/telegram/ui/ChannelUsersActivity$5;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ChannelUsersActivity$5;-><init>(Lorg/telegram/ui/ChannelUsersActivity;)V

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 361
    .end local v0    # "chatFull":Lorg/telegram/tgnet/TLRPC$ChatFull;
    :cond_17
    return-void
.end method

.method public getThemeDescriptions()[Lorg/telegram/ui/ActionBar/ThemeDescription;
    .registers 13

    .prologue
    .line 709
    new-instance v9, Lorg/telegram/ui/ChannelUsersActivity$7;

    invoke-direct {v9, p0}, Lorg/telegram/ui/ChannelUsersActivity$7;-><init>(Lorg/telegram/ui/ChannelUsersActivity;)V

    .line 722
    .local v9, "\u0441ellDelegate":Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;
    const/16 v0, 0x20

    new-array v10, v0, [Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v8, 0x0

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CELLBACKGROUNDCOLOR:I

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/UserCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Lorg/telegram/ui/Cells/TextSettingsCell;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-class v5, Lorg/telegram/ui/Cells/TextCell;

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-class v5, Lorg/telegram/ui/Cells/RadioCell;

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "windowBackgroundWhite"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/4 v8, 0x1

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelUsersActivity;->fragmentView:Landroid/view/View;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "windowBackgroundGray"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/4 v8, 0x2

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelUsersActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "actionBarDefault"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/4 v8, 0x3

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LISTGLOWCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "actionBarDefault"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/4 v8, 0x4

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelUsersActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_ITEMSCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "actionBarDefaultIcon"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/4 v8, 0x5

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelUsersActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_TITLECOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "actionBarDefaultTitle"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/4 v8, 0x6

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelUsersActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SELECTORCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "actionBarDefaultSelector"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/4 v8, 0x7

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "listSelectorSDK21"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x8

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/view/View;

    aput-object v5, v3, v4

    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "divider"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x9

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

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

    const/16 v11, 0xa

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

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

    const/16 v11, 0xb

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

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

    const/16 v11, 0xc

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

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

    const/16 v11, 0xd

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/TextSettingsCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "valueImageView"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "windowBackgroundWhiteGrayIcon"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v11

    const/16 v8, 0xe

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

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

    const/16 v11, 0xf

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

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

    const/16 v11, 0x10

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/RadioCell;

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

    const/16 v11, 0x11

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKBOX:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/RadioCell;

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

    const/16 v11, 0x12

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKBOXCHECK:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/RadioCell;

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

    const/16 v11, 0x13

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/UserCell;

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

    const/16 v11, 0x14

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/UserCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "statusColor"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v8, "windowBackgroundWhiteGrayText"

    move-object v7, v9

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v11

    const/16 v11, 0x15

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/UserCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "statusOnlineColor"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v8, "windowBackgroundWhiteBlueText"

    move-object v7, v9

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v11

    const/16 v8, 0x16

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/UserCell;

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x2

    new-array v5, v5, [Landroid/graphics/drawable/Drawable;

    const/4 v6, 0x0

    sget-object v7, Lorg/telegram/ui/ActionBar/Theme;->avatar_photoDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    sget-object v7, Lorg/telegram/ui/ActionBar/Theme;->avatar_broadcastDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const-string v7, "avatar_text"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x17

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

    const/16 v8, 0x18

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

    const/16 v8, 0x19

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

    const/16 v8, 0x1a

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

    const/16 v8, 0x1b

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

    const/16 v8, 0x1c

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

    const/16 v8, 0x1d

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

    const/16 v11, 0x1e

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/TextCell;

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

    const/16 v11, 0x1f

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/TextCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "imageView"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "windowBackgroundWhiteGrayIcon"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v11

    return-object v10
.end method

.method public onFragmentCreate()Z
    .registers 3

    .prologue
    .line 97
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    .line 98
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->chatInfoDidLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 99
    const/4 v0, 0x0

    const/16 v1, 0xc8

    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/ChannelUsersActivity;->getChannelParticipants(II)V

    .line 100
    const/4 v0, 0x1

    return v0
.end method

.method public onFragmentDestroy()V
    .registers 3

    .prologue
    .line 105
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    .line 106
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->chatInfoDidLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 107
    return-void
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 486
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onResume()V

    .line 487
    iget-object v0, p0, Lorg/telegram/ui/ChannelUsersActivity;->listViewAdapter:Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;

    if-eqz v0, :cond_c

    .line 488
    iget-object v0, p0, Lorg/telegram/ui/ChannelUsersActivity;->listViewAdapter:Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;->notifyDataSetChanged()V

    .line 490
    :cond_c
    return-void
.end method

.method public setUserChannelRole(Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$ChannelParticipantRole;)V
    .registers 6
    .param p1, "user"    # Lorg/telegram/tgnet/TLRPC$User;
    .param p2, "role"    # Lorg/telegram/tgnet/TLRPC$ChannelParticipantRole;

    .prologue
    .line 318
    if-eqz p1, :cond_4

    if-nez p2, :cond_5

    .line 346
    :cond_4
    :goto_4
    return-void

    .line 321
    :cond_5
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channels_editAdmin;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channels_editAdmin;-><init>()V

    .line 322
    .local v0, "req":Lorg/telegram/tgnet/TLRPC$TL_channels_editAdmin;
    iget v1, p0, Lorg/telegram/ui/ChannelUsersActivity;->chatId:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInputChannel(I)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_editAdmin;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    .line 323
    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInputUser(Lorg/telegram/tgnet/TLRPC$User;)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_editAdmin;->user_id:Lorg/telegram/tgnet/TLRPC$InputUser;

    .line 324
    iput-object p2, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_editAdmin;->role:Lorg/telegram/tgnet/TLRPC$ChannelParticipantRole;

    .line 325
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/ChannelUsersActivity$4;

    invoke-direct {v2, p0, v0}, Lorg/telegram/ui/ChannelUsersActivity$4;-><init>(Lorg/telegram/ui/ChannelUsersActivity;Lorg/telegram/tgnet/TLRPC$TL_channels_editAdmin;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto :goto_4
.end method
