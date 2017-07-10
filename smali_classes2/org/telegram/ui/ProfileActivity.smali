.class public Lorg/telegram/ui/ProfileActivity;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "ProfileActivity.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;
.implements Lorg/telegram/ui/DialogsActivity$DialogsActivityDelegate;
.implements Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/ProfileActivity$ListAdapter;,
        Lorg/telegram/ui/ProfileActivity$TopView;
    }
.end annotation


# static fields
.field private static final add_contact:I = 0x1

.field private static final add_shortcut:I = 0xe

.field private static final block_contact:I = 0x2

.field private static final call_item:I = 0xf

.field private static final convert_to_supergroup:I = 0xd

.field private static final delete_contact:I = 0x5

.field private static final edit_channel:I = 0xc

.field private static final edit_contact:I = 0x4

.field private static final edit_name:I = 0x8

.field private static final invite_to_group:I = 0x9

.field private static final leave_group:I = 0x7

.field private static final set_admins:I = 0xb

.field private static final share:I = 0xa

.field private static final share_contact:I = 0x3


# instance fields
.field private addMemberRow:I

.field private allowProfileAnimation:Z

.field private animatingItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

.field private animationProgress:F

.field private avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

.field private avatarImage:Lorg/telegram/ui/Components/BackupImageView;

.field private avatarUpdater:Lorg/telegram/ui/Components/AvatarUpdater;

.field private blockedUsersRow:I

.field private botInfo:Lorg/telegram/tgnet/TLRPC$BotInfo;

.field private callItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

.field private channelInfoRow:I

.field private channelNameRow:I

.field private chat_id:I

.field private convertHelpRow:I

.field private convertRow:I

.field private creatingChat:Z

.field private currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

.field private currentEncryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

.field private dialog_id:J

.field private emptyRow:I

.field private emptyRowChat:I

.field private emptyRowChat2:I

.field private extraHeight:I

.field private groupsInCommonRow:I

.field private info:Lorg/telegram/tgnet/TLRPC$ChatFull;

.field private initialAnimationExtraHeight:I

.field private layoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

.field private leaveChannelRow:I

.field private listAdapter:Lorg/telegram/ui/ProfileActivity$ListAdapter;

.field private listView:Lorg/telegram/ui/Components/RecyclerListView;

.field private loadMoreMembersRow:I

.field private loadingUsers:Z

.field private managementRow:I

.field private membersEndRow:I

.field private membersRow:I

.field private membersSectionRow:I

.field private mergeDialogId:J

.field private nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

.field private onlineCount:I

.field private onlineTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

.field private openAnimationInProgress:Z

.field private participantsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/telegram/tgnet/TLRPC$ChatParticipant;",
            ">;"
        }
    .end annotation
.end field

.field private phoneRow:I

.field private playProfileAnimation:Z

.field private recreateMenuAfterAnimation:Z

.field private rowCount:I

.field private sectionRow:I

.field private selectedUser:I

.field private settingsKeyRow:I

.field private settingsNotificationsRow:I

.field private settingsTimerRow:I

.field private sharedMediaRow:I

.field private sortedUsers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private startSecretChatRow:I

.field private topView:Lorg/telegram/ui/ProfileActivity$TopView;

.field private totalMediaCount:I

.field private totalMediaCountMerge:I

.field private userBlocked:Z

.field private userInfoRow:I

.field private userSectionRow:I

.field private user_id:I

.field private usernameRow:I

.field private usersEndReached:Z

.field private writeButton:Landroid/widget/ImageView;

.field private writeButtonAnimation:Landroid/animation/AnimatorSet;


# direct methods
.method public constructor <init>(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x2

    const/4 v1, -0x1

    .line 236
    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>(Landroid/os/Bundle;)V

    .line 120
    new-array v0, v2, [Lorg/telegram/ui/ActionBar/SimpleTextView;

    iput-object v0, p0, Lorg/telegram/ui/ProfileActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    .line 121
    new-array v0, v2, [Lorg/telegram/ui/ActionBar/SimpleTextView;

    iput-object v0, p0, Lorg/telegram/ui/ProfileActivity;->onlineTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    .line 136
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ProfileActivity;->participantsMap:Ljava/util/HashMap;

    .line 142
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/ProfileActivity;->allowProfileAnimation:Z

    .line 150
    iput v1, p0, Lorg/telegram/ui/ProfileActivity;->onlineCount:I

    .line 157
    iput v1, p0, Lorg/telegram/ui/ProfileActivity;->totalMediaCount:I

    .line 158
    iput v1, p0, Lorg/telegram/ui/ProfileActivity;->totalMediaCountMerge:I

    .line 201
    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    .line 237
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;

    .prologue
    .line 114
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object v0
.end method

.method static synthetic access$100(Lorg/telegram/ui/ProfileActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;

    .prologue
    .line 114
    iget v0, p0, Lorg/telegram/ui/ProfileActivity;->extraHeight:I

    return v0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$BotInfo;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;

    .prologue
    .line 114
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity;->botInfo:Lorg/telegram/tgnet/TLRPC$BotInfo;

    return-object v0
.end method

.method static synthetic access$1100(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;

    .prologue
    .line 114
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity;->currentEncryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    return-object v0
.end method

.method static synthetic access$1200(Lorg/telegram/ui/ProfileActivity;)V
    .registers 1
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;

    .prologue
    .line 114
    invoke-direct {p0}, Lorg/telegram/ui/ProfileActivity;->checkListViewScroll()V

    return-void
.end method

.method static synthetic access$1300(Lorg/telegram/ui/ProfileActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;

    .prologue
    .line 114
    iget v0, p0, Lorg/telegram/ui/ProfileActivity;->sharedMediaRow:I

    return v0
.end method

.method static synthetic access$1400(Lorg/telegram/ui/ProfileActivity;)J
    .registers 3
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;

    .prologue
    .line 114
    iget-wide v0, p0, Lorg/telegram/ui/ProfileActivity;->dialog_id:J

    return-wide v0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/ProfileActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;

    .prologue
    .line 114
    iget v0, p0, Lorg/telegram/ui/ProfileActivity;->groupsInCommonRow:I

    return v0
.end method

.method static synthetic access$1600(Lorg/telegram/ui/ProfileActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;

    .prologue
    .line 114
    iget v0, p0, Lorg/telegram/ui/ProfileActivity;->settingsKeyRow:I

    return v0
.end method

.method static synthetic access$1700(Lorg/telegram/ui/ProfileActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;

    .prologue
    .line 114
    iget v0, p0, Lorg/telegram/ui/ProfileActivity;->settingsTimerRow:I

    return v0
.end method

.method static synthetic access$1800(Lorg/telegram/ui/ProfileActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;

    .prologue
    .line 114
    iget v0, p0, Lorg/telegram/ui/ProfileActivity;->settingsNotificationsRow:I

    return v0
.end method

.method static synthetic access$1900(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ProfileActivity$ListAdapter;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;

    .prologue
    .line 114
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity;->listAdapter:Lorg/telegram/ui/ProfileActivity$ListAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/ActionBarLayout;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;

    .prologue
    .line 114
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity;->parentLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    return-object v0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/ProfileActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;

    .prologue
    .line 114
    iget v0, p0, Lorg/telegram/ui/ProfileActivity;->startSecretChatRow:I

    return v0
.end method

.method static synthetic access$2102(Lorg/telegram/ui/ProfileActivity;Z)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 114
    iput-boolean p1, p0, Lorg/telegram/ui/ProfileActivity;->creatingChat:Z

    return p1
.end method

.method static synthetic access$2200(Lorg/telegram/ui/ProfileActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;

    .prologue
    .line 114
    iget v0, p0, Lorg/telegram/ui/ProfileActivity;->emptyRowChat2:I

    return v0
.end method

.method static synthetic access$2300(Lorg/telegram/ui/ProfileActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;

    .prologue
    .line 114
    iget v0, p0, Lorg/telegram/ui/ProfileActivity;->membersEndRow:I

    return v0
.end method

.method static synthetic access$2400(Lorg/telegram/ui/ProfileActivity;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;

    .prologue
    .line 114
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity;->sortedUsers:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2500(Lorg/telegram/ui/ProfileActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;

    .prologue
    .line 114
    iget v0, p0, Lorg/telegram/ui/ProfileActivity;->addMemberRow:I

    return v0
.end method

.method static synthetic access$2600(Lorg/telegram/ui/ProfileActivity;)V
    .registers 1
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;

    .prologue
    .line 114
    invoke-direct {p0}, Lorg/telegram/ui/ProfileActivity;->openAddMember()V

    return-void
.end method

.method static synthetic access$2700(Lorg/telegram/ui/ProfileActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;

    .prologue
    .line 114
    iget v0, p0, Lorg/telegram/ui/ProfileActivity;->channelNameRow:I

    return v0
.end method

.method static synthetic access$2800(Lorg/telegram/ui/ProfileActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;

    .prologue
    .line 114
    iget v0, p0, Lorg/telegram/ui/ProfileActivity;->leaveChannelRow:I

    return v0
.end method

.method static synthetic access$2900(Lorg/telegram/ui/ProfileActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;

    .prologue
    .line 114
    iget v0, p0, Lorg/telegram/ui/ProfileActivity;->membersRow:I

    return v0
.end method

.method static synthetic access$300(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/ActionBarLayout;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;

    .prologue
    .line 114
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity;->parentLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    return-object v0
.end method

.method static synthetic access$3000(Lorg/telegram/ui/ProfileActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;

    .prologue
    .line 114
    iget v0, p0, Lorg/telegram/ui/ProfileActivity;->blockedUsersRow:I

    return v0
.end method

.method static synthetic access$3100(Lorg/telegram/ui/ProfileActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;

    .prologue
    .line 114
    iget v0, p0, Lorg/telegram/ui/ProfileActivity;->managementRow:I

    return v0
.end method

.method static synthetic access$3200(Lorg/telegram/ui/ProfileActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;

    .prologue
    .line 114
    iget v0, p0, Lorg/telegram/ui/ProfileActivity;->convertRow:I

    return v0
.end method

.method static synthetic access$3300(Lorg/telegram/ui/ProfileActivity;I)Z
    .registers 3
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;
    .param p1, "x1"    # I

    .prologue
    .line 114
    invoke-direct {p0, p1}, Lorg/telegram/ui/ProfileActivity;->processOnClickOrPress(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3400(Lorg/telegram/ui/ProfileActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;

    .prologue
    .line 114
    iget v0, p0, Lorg/telegram/ui/ProfileActivity;->selectedUser:I

    return v0
.end method

.method static synthetic access$3402(Lorg/telegram/ui/ProfileActivity;I)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;
    .param p1, "x1"    # I

    .prologue
    .line 114
    iput p1, p0, Lorg/telegram/ui/ProfileActivity;->selectedUser:I

    return p1
.end method

.method static synthetic access$3500(Lorg/telegram/ui/ProfileActivity;I)V
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;
    .param p1, "x1"    # I

    .prologue
    .line 114
    invoke-direct {p0, p1}, Lorg/telegram/ui/ProfileActivity;->kickUser(I)V

    return-void
.end method

.method static synthetic access$3600(Lorg/telegram/ui/ProfileActivity;)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;

    .prologue
    .line 114
    iget-boolean v0, p0, Lorg/telegram/ui/ProfileActivity;->playProfileAnimation:Z

    return v0
.end method

.method static synthetic access$3700(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/ActionBarLayout;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;

    .prologue
    .line 114
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity;->parentLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    return-object v0
.end method

.method static synthetic access$3800(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/ActionBarLayout;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;

    .prologue
    .line 114
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity;->parentLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    return-object v0
.end method

.method static synthetic access$3900(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/ActionBarLayout;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;

    .prologue
    .line 114
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity;->parentLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    return-object v0
.end method

.method static synthetic access$400(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$Chat;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;

    .prologue
    .line 114
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    return-object v0
.end method

.method static synthetic access$4000(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/ActionBarLayout;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;

    .prologue
    .line 114
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity;->parentLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    return-object v0
.end method

.method static synthetic access$402(Lorg/telegram/ui/ProfileActivity;Lorg/telegram/tgnet/TLRPC$Chat;)Lorg/telegram/tgnet/TLRPC$Chat;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;
    .param p1, "x1"    # Lorg/telegram/tgnet/TLRPC$Chat;

    .prologue
    .line 114
    iput-object p1, p0, Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    return-object p1
.end method

.method static synthetic access$4100(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/AvatarUpdater;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;

    .prologue
    .line 114
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity;->avatarUpdater:Lorg/telegram/ui/Components/AvatarUpdater;

    return-object v0
.end method

.method static synthetic access$4200(Lorg/telegram/ui/ProfileActivity;)Ljava/util/HashMap;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;

    .prologue
    .line 114
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity;->participantsMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$4300(Lorg/telegram/ui/ProfileActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;

    .prologue
    .line 114
    iget v0, p0, Lorg/telegram/ui/ProfileActivity;->loadMoreMembersRow:I

    return v0
.end method

.method static synthetic access$4400(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/messenger/support/widget/LinearLayoutManager;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;

    .prologue
    .line 114
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity;->layoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    return-object v0
.end method

.method static synthetic access$4500(Lorg/telegram/ui/ProfileActivity;Z)V
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 114
    invoke-direct {p0, p1}, Lorg/telegram/ui/ProfileActivity;->getChannelParticipants(Z)V

    return-void
.end method

.method static synthetic access$4600(Lorg/telegram/ui/ProfileActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;

    .prologue
    .line 114
    iget v0, p0, Lorg/telegram/ui/ProfileActivity;->channelInfoRow:I

    return v0
.end method

.method static synthetic access$4702(Lorg/telegram/ui/ProfileActivity;Z)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 114
    iput-boolean p1, p0, Lorg/telegram/ui/ProfileActivity;->usersEndReached:Z

    return p1
.end method

.method static synthetic access$4800(Lorg/telegram/ui/ProfileActivity;)V
    .registers 1
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;

    .prologue
    .line 114
    invoke-direct {p0}, Lorg/telegram/ui/ProfileActivity;->updateOnlineCount()V

    return-void
.end method

.method static synthetic access$4902(Lorg/telegram/ui/ProfileActivity;Z)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 114
    iput-boolean p1, p0, Lorg/telegram/ui/ProfileActivity;->loadingUsers:Z

    return p1
.end method

.method static synthetic access$500(Lorg/telegram/ui/ProfileActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;

    .prologue
    .line 114
    iget v0, p0, Lorg/telegram/ui/ProfileActivity;->chat_id:I

    return v0
.end method

.method static synthetic access$5000(Lorg/telegram/ui/ProfileActivity;)V
    .registers 1
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;

    .prologue
    .line 114
    invoke-direct {p0}, Lorg/telegram/ui/ProfileActivity;->updateRowsIds()V

    return-void
.end method

.method static synthetic access$5100(Lorg/telegram/ui/ProfileActivity;)Landroid/animation/AnimatorSet;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;

    .prologue
    .line 114
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity;->writeButtonAnimation:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic access$5102(Lorg/telegram/ui/ProfileActivity;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;
    .param p1, "x1"    # Landroid/animation/AnimatorSet;

    .prologue
    .line 114
    iput-object p1, p0, Lorg/telegram/ui/ProfileActivity;->writeButtonAnimation:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$5200(Lorg/telegram/ui/ProfileActivity;)Landroid/view/View;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;

    .prologue
    .line 114
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity;->fragmentView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$5300(Lorg/telegram/ui/ProfileActivity;)V
    .registers 1
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;

    .prologue
    .line 114
    invoke-direct {p0}, Lorg/telegram/ui/ProfileActivity;->needLayout()V

    return-void
.end method

.method static synthetic access$5400(Lorg/telegram/ui/ProfileActivity;)Landroid/view/View;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;

    .prologue
    .line 114
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity;->fragmentView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$5500(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/RecyclerListView;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;

    .prologue
    .line 114
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object v0
.end method

.method static synthetic access$5600(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;

    .prologue
    .line 114
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity;->animatingItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    return-object v0
.end method

.method static synthetic access$5602(Lorg/telegram/ui/ProfileActivity;Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;
    .param p1, "x1"    # Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .prologue
    .line 114
    iput-object p1, p0, Lorg/telegram/ui/ProfileActivity;->animatingItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    return-object p1
.end method

.method static synthetic access$5700(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;

    .prologue
    .line 114
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object v0
.end method

.method static synthetic access$5800(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/ActionBarLayout;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;

    .prologue
    .line 114
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity;->parentLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    return-object v0
.end method

.method static synthetic access$5900(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/ActionBarLayout;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;

    .prologue
    .line 114
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity;->parentLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    return-object v0
.end method

.method static synthetic access$600(Lorg/telegram/ui/ProfileActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;

    .prologue
    .line 114
    iget v0, p0, Lorg/telegram/ui/ProfileActivity;->user_id:I

    return v0
.end method

.method static synthetic access$6000(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/ActionBarLayout;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;

    .prologue
    .line 114
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity;->parentLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    return-object v0
.end method

.method static synthetic access$6100(Lorg/telegram/ui/ProfileActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;

    .prologue
    .line 114
    iget v0, p0, Lorg/telegram/ui/ProfileActivity;->emptyRowChat:I

    return v0
.end method

.method static synthetic access$6200(Lorg/telegram/ui/ProfileActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;

    .prologue
    .line 114
    iget v0, p0, Lorg/telegram/ui/ProfileActivity;->phoneRow:I

    return v0
.end method

.method static synthetic access$6300(Lorg/telegram/ui/ProfileActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;

    .prologue
    .line 114
    iget v0, p0, Lorg/telegram/ui/ProfileActivity;->usernameRow:I

    return v0
.end method

.method static synthetic access$6400(Lorg/telegram/ui/ProfileActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;

    .prologue
    .line 114
    iget v0, p0, Lorg/telegram/ui/ProfileActivity;->totalMediaCount:I

    return v0
.end method

.method static synthetic access$6500(Lorg/telegram/ui/ProfileActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;

    .prologue
    .line 114
    iget v0, p0, Lorg/telegram/ui/ProfileActivity;->totalMediaCountMerge:I

    return v0
.end method

.method static synthetic access$6600(Lorg/telegram/ui/ProfileActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;

    .prologue
    .line 114
    iget v0, p0, Lorg/telegram/ui/ProfileActivity;->userInfoRow:I

    return v0
.end method

.method static synthetic access$6700(Lorg/telegram/ui/ProfileActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;

    .prologue
    .line 114
    iget v0, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    return v0
.end method

.method static synthetic access$6800(Lorg/telegram/ui/ProfileActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;

    .prologue
    .line 114
    iget v0, p0, Lorg/telegram/ui/ProfileActivity;->emptyRow:I

    return v0
.end method

.method static synthetic access$6900(Lorg/telegram/ui/ProfileActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;

    .prologue
    .line 114
    iget v0, p0, Lorg/telegram/ui/ProfileActivity;->sectionRow:I

    return v0
.end method

.method static synthetic access$700(Lorg/telegram/ui/ProfileActivity;)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;

    .prologue
    .line 114
    iget-boolean v0, p0, Lorg/telegram/ui/ProfileActivity;->userBlocked:Z

    return v0
.end method

.method static synthetic access$7000(Lorg/telegram/ui/ProfileActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;

    .prologue
    .line 114
    iget v0, p0, Lorg/telegram/ui/ProfileActivity;->userSectionRow:I

    return v0
.end method

.method static synthetic access$7100(Lorg/telegram/ui/ProfileActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;

    .prologue
    .line 114
    iget v0, p0, Lorg/telegram/ui/ProfileActivity;->membersSectionRow:I

    return v0
.end method

.method static synthetic access$7200(Lorg/telegram/ui/ProfileActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;

    .prologue
    .line 114
    iget v0, p0, Lorg/telegram/ui/ProfileActivity;->convertHelpRow:I

    return v0
.end method

.method static synthetic access$800(Lorg/telegram/ui/ProfileActivity;)V
    .registers 1
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;

    .prologue
    .line 114
    invoke-direct {p0}, Lorg/telegram/ui/ProfileActivity;->leaveChatPressed()V

    return-void
.end method

.method static synthetic access$900(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ProfileActivity;

    .prologue
    .line 114
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    return-object v0
.end method

.method private checkListViewScroll()V
    .registers 7

    .prologue
    const/4 v4, 0x0

    .line 1331
    iget-object v5, p0, Lorg/telegram/ui/ProfileActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/RecyclerListView;->getChildCount()I

    move-result v5

    if-lez v5, :cond_d

    iget-boolean v5, p0, Lorg/telegram/ui/ProfileActivity;->openAnimationInProgress:Z

    if-eqz v5, :cond_e

    .line 1350
    :cond_d
    :goto_d
    return-void

    .line 1335
    :cond_e
    iget-object v5, p0, Lorg/telegram/ui/ProfileActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v5, v4}, Lorg/telegram/ui/Components/RecyclerListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1336
    .local v0, "child":Landroid/view/View;
    iget-object v5, p0, Lorg/telegram/ui/ProfileActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v5, v0}, Lorg/telegram/ui/Components/RecyclerListView;->findContainingViewHolder(Landroid/view/View;)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    .line 1337
    .local v1, "holder":Lorg/telegram/ui/Components/RecyclerListView$Holder;
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    .line 1338
    .local v3, "top":I
    const/4 v2, 0x0

    .line 1339
    .local v2, "newOffset":I
    if-ltz v3, :cond_2c

    if-eqz v1, :cond_2c

    invoke-virtual {v1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;->getAdapterPosition()I

    move-result v5

    if-nez v5, :cond_2c

    .line 1340
    move v2, v3

    .line 1342
    :cond_2c
    iget v5, p0, Lorg/telegram/ui/ProfileActivity;->extraHeight:I

    if-eq v5, v2, :cond_d

    .line 1343
    iput v2, p0, Lorg/telegram/ui/ProfileActivity;->extraHeight:I

    .line 1344
    iget-object v5, p0, Lorg/telegram/ui/ProfileActivity;->topView:Lorg/telegram/ui/ProfileActivity$TopView;

    invoke-virtual {v5}, Lorg/telegram/ui/ProfileActivity$TopView;->invalidate()V

    .line 1345
    iget-boolean v5, p0, Lorg/telegram/ui/ProfileActivity;->playProfileAnimation:Z

    if-eqz v5, :cond_42

    .line 1346
    iget v5, p0, Lorg/telegram/ui/ProfileActivity;->extraHeight:I

    if-eqz v5, :cond_40

    const/4 v4, 0x1

    :cond_40
    iput-boolean v4, p0, Lorg/telegram/ui/ProfileActivity;->allowProfileAnimation:Z

    .line 1348
    :cond_42
    invoke-direct {p0}, Lorg/telegram/ui/ProfileActivity;->needLayout()V

    goto :goto_d
.end method

.method private createActionBarMenu()V
    .registers 14

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v8, 0x0

    const v10, 0x7f0200e7

    const/16 v9, 0xa

    .line 2400
    iget-object v6, p0, Lorg/telegram/ui/ProfileActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v6}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v3

    .line 2401
    .local v3, "menu":Lorg/telegram/ui/ActionBar/ActionBarMenu;
    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->clearItems()V

    .line 2402
    const/4 v6, 0x0

    iput-object v6, p0, Lorg/telegram/ui/ProfileActivity;->animatingItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 2404
    const/4 v2, 0x0

    .line 2405
    .local v2, "item":Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    iget v6, p0, Lorg/telegram/ui/ProfileActivity;->user_id:I

    if-eqz v6, :cond_16f

    .line 2406
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v6

    iget v7, p0, Lorg/telegram/ui/ProfileActivity;->user_id:I

    if-eq v6, v7, :cond_15d

    .line 2407
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    iget v7, p0, Lorg/telegram/ui/ProfileActivity;->user_id:I

    invoke-virtual {v6, v7}, Lorg/telegram/messenger/MessagesController;->getUserFull(I)Lorg/telegram/tgnet/TLRPC$TL_userFull;

    move-result-object v5

    .line 2408
    .local v5, "userFull":Lorg/telegram/tgnet/TLRPC$TL_userFull;
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    iget-boolean v6, v6, Lorg/telegram/messenger/MessagesController;->callsEnabled:Z

    if-eqz v6, :cond_44

    if-eqz v5, :cond_44

    iget-boolean v6, v5, Lorg/telegram/tgnet/TLRPC$TL_userFull;->phone_calls_available:Z

    if-eqz v6, :cond_44

    .line 2409
    const/16 v6, 0xf

    const v7, 0x7f020107

    invoke-virtual {v3, v6, v7}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(II)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v6

    iput-object v6, p0, Lorg/telegram/ui/ProfileActivity;->callItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 2411
    :cond_44
    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v6

    iget-object v6, v6, Lorg/telegram/messenger/ContactsController;->contactsDict:Landroid/util/SparseArray;

    iget v7, p0, Lorg/telegram/ui/ProfileActivity;->user_id:I

    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_117

    .line 2412
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    iget v7, p0, Lorg/telegram/ui/ProfileActivity;->user_id:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v4

    .line 2413
    .local v4, "user":Lorg/telegram/tgnet/TLRPC$User;
    if-nez v4, :cond_63

    .line 2492
    .end local v4    # "user":Lorg/telegram/tgnet/TLRPC$User;
    .end local v5    # "userFull":Lorg/telegram/tgnet/TLRPC$TL_userFull;
    :goto_62
    return-void

    .line 2416
    .restart local v4    # "user":Lorg/telegram/tgnet/TLRPC$User;
    .restart local v5    # "userFull":Lorg/telegram/tgnet/TLRPC$TL_userFull;
    :cond_63
    invoke-virtual {v3, v9, v10}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(II)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v2

    .line 2417
    iget-boolean v6, v4, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-eqz v6, :cond_89

    .line 2418
    iget-boolean v6, v4, Lorg/telegram/tgnet/TLRPC$User;->bot_nochats:Z

    if-nez v6, :cond_7d

    .line 2419
    const/16 v6, 0x9

    const-string v7, "BotInvite"

    const v8, 0x7f0700dd

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(ILjava/lang/String;)Landroid/widget/TextView;

    .line 2421
    :cond_7d
    const-string v6, "BotShare"

    const v7, 0x7f0700e1

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v9, v6}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(ILjava/lang/String;)Landroid/widget/TextView;

    .line 2424
    :cond_89
    iget-object v6, v4, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    if-eqz v6, :cond_dd

    iget-object v6, v4, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_dd

    .line 2425
    const/4 v6, 0x1

    const-string v7, "AddContact"

    const v8, 0x7f070066

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(ILjava/lang/String;)Landroid/widget/TextView;

    .line 2426
    const-string v6, "ShareContact"

    const v7, 0x7f0704fd

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v12, v6}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(ILjava/lang/String;)Landroid/widget/TextView;

    .line 2427
    iget-boolean v6, p0, Lorg/telegram/ui/ProfileActivity;->userBlocked:Z

    if-nez v6, :cond_d3

    const-string v6, "BlockContact"

    const v7, 0x7f0700d2

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    :goto_bb
    invoke-virtual {v2, v11, v6}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(ILjava/lang/String;)Landroid/widget/TextView;

    .line 2488
    .end local v4    # "user":Lorg/telegram/tgnet/TLRPC$User;
    .end local v5    # "userFull":Lorg/telegram/tgnet/TLRPC$TL_userFull;
    :cond_be
    :goto_be
    if-nez v2, :cond_c4

    .line 2489
    invoke-virtual {v3, v9, v10}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(II)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v2

    .line 2491
    :cond_c4
    const/16 v6, 0xe

    const-string v7, "AddShortcut"

    const v8, 0x7f07006f

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(ILjava/lang/String;)Landroid/widget/TextView;

    goto :goto_62

    .line 2427
    .restart local v4    # "user":Lorg/telegram/tgnet/TLRPC$User;
    .restart local v5    # "userFull":Lorg/telegram/tgnet/TLRPC$TL_userFull;
    :cond_d3
    const-string v6, "Unblock"

    const v7, 0x7f07054d

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    goto :goto_bb

    .line 2429
    :cond_dd
    iget-boolean v6, v4, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-eqz v6, :cond_fc

    .line 2430
    iget-boolean v6, p0, Lorg/telegram/ui/ProfileActivity;->userBlocked:Z

    if-nez v6, :cond_f2

    const-string v6, "BotStop"

    const v7, 0x7f0700e5

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    :goto_ee
    invoke-virtual {v2, v11, v6}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(ILjava/lang/String;)Landroid/widget/TextView;

    goto :goto_be

    :cond_f2
    const-string v6, "BotRestart"

    const v7, 0x7f0700df

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    goto :goto_ee

    .line 2432
    :cond_fc
    iget-boolean v6, p0, Lorg/telegram/ui/ProfileActivity;->userBlocked:Z

    if-nez v6, :cond_10d

    const-string v6, "BlockContact"

    const v7, 0x7f0700d2

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    :goto_109
    invoke-virtual {v2, v11, v6}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(ILjava/lang/String;)Landroid/widget/TextView;

    goto :goto_be

    :cond_10d
    const-string v6, "Unblock"

    const v7, 0x7f07054d

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    goto :goto_109

    .line 2436
    .end local v4    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_117
    invoke-virtual {v3, v9, v10}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(II)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v2

    .line 2437
    const-string v6, "ShareContact"

    const v7, 0x7f0704fd

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v12, v6}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(ILjava/lang/String;)Landroid/widget/TextView;

    .line 2438
    iget-boolean v6, p0, Lorg/telegram/ui/ProfileActivity;->userBlocked:Z

    if-nez v6, :cond_153

    const-string v6, "BlockContact"

    const v7, 0x7f0700d2

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    :goto_134
    invoke-virtual {v2, v11, v6}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(ILjava/lang/String;)Landroid/widget/TextView;

    .line 2439
    const/4 v6, 0x4

    const-string v7, "EditContact"

    const v8, 0x7f0701eb

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(ILjava/lang/String;)Landroid/widget/TextView;

    .line 2440
    const/4 v6, 0x5

    const-string v7, "DeleteContact"

    const v8, 0x7f0701d2

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(ILjava/lang/String;)Landroid/widget/TextView;

    goto/16 :goto_be

    .line 2438
    :cond_153
    const-string v6, "Unblock"

    const v7, 0x7f07054d

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    goto :goto_134

    .line 2443
    .end local v5    # "userFull":Lorg/telegram/tgnet/TLRPC$TL_userFull;
    :cond_15d
    invoke-virtual {v3, v9, v10}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(II)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v2

    .line 2444
    const-string v6, "ShareContact"

    const v7, 0x7f0704fd

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v12, v6}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(ILjava/lang/String;)Landroid/widget/TextView;

    goto/16 :goto_be

    .line 2446
    :cond_16f
    iget v6, p0, Lorg/telegram/ui/ProfileActivity;->chat_id:I

    if-eqz v6, :cond_be

    .line 2447
    iget v6, p0, Lorg/telegram/ui/ProfileActivity;->chat_id:I

    if-lez v6, :cond_286

    .line 2448
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    iget v7, p0, Lorg/telegram/ui/ProfileActivity;->chat_id:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    .line 2449
    .local v0, "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    iget-object v6, p0, Lorg/telegram/ui/ProfileActivity;->writeButton:Landroid/widget/ImageView;

    if-eqz v6, :cond_1ca

    .line 2450
    iget-object v6, p0, Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v6}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v1

    .line 2451
    .local v1, "isChannel":Z
    if-eqz v1, :cond_1a3

    iget-object v6, p0, Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v6, v6, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    if-nez v6, :cond_1a3

    iget-object v6, p0, Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v6, v6, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v6, :cond_1b7

    iget-object v6, p0, Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v6, v6, Lorg/telegram/tgnet/TLRPC$Chat;->editor:Z

    if-eqz v6, :cond_1b7

    :cond_1a3
    if-nez v1, :cond_213

    iget-object v6, p0, Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v6, v6, Lorg/telegram/tgnet/TLRPC$Chat;->admin:Z

    if-nez v6, :cond_213

    iget-object v6, p0, Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v6, v6, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    if-nez v6, :cond_213

    iget-object v6, p0, Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v6, v6, Lorg/telegram/tgnet/TLRPC$Chat;->admins_enabled:Z

    if-eqz v6, :cond_213

    .line 2452
    :cond_1b7
    iget-object v6, p0, Lorg/telegram/ui/ProfileActivity;->writeButton:Landroid/widget/ImageView;

    const v7, 0x7f0200cd

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2453
    iget-object v6, p0, Lorg/telegram/ui/ProfileActivity;->writeButton:Landroid/widget/ImageView;

    const/high16 v7, 0x40400000    # 3.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    invoke-virtual {v6, v8, v7, v8, v8}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 2459
    .end local v1    # "isChannel":Z
    :cond_1ca
    :goto_1ca
    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v6

    if-eqz v6, :cond_221

    .line 2460
    iget-boolean v6, v0, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    if-nez v6, :cond_1dc

    iget-boolean v6, v0, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v6, :cond_1ee

    iget-boolean v6, v0, Lorg/telegram/tgnet/TLRPC$Chat;->editor:Z

    if-eqz v6, :cond_1ee

    .line 2461
    :cond_1dc
    invoke-virtual {v3, v9, v10}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(II)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v2

    .line 2462
    const/16 v6, 0xc

    const-string v7, "ChannelEdit"

    const v8, 0x7f070125

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(ILjava/lang/String;)Landroid/widget/TextView;

    .line 2464
    :cond_1ee
    iget-boolean v6, v0, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    if-nez v6, :cond_be

    iget-boolean v6, v0, Lorg/telegram/tgnet/TLRPC$Chat;->left:Z

    if-nez v6, :cond_be

    iget-boolean v6, v0, Lorg/telegram/tgnet/TLRPC$Chat;->kicked:Z

    if-nez v6, :cond_be

    iget-boolean v6, v0, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v6, :cond_be

    .line 2465
    if-nez v2, :cond_204

    .line 2466
    invoke-virtual {v3, v9, v10}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(II)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v2

    .line 2468
    :cond_204
    const/4 v6, 0x7

    const-string v7, "LeaveMegaMenu"

    const v8, 0x7f0702db

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(ILjava/lang/String;)Landroid/widget/TextView;

    goto/16 :goto_be

    .line 2455
    .restart local v1    # "isChannel":Z
    :cond_213
    iget-object v6, p0, Lorg/telegram/ui/ProfileActivity;->writeButton:Landroid/widget/ImageView;

    const v7, 0x7f0200cc

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2456
    iget-object v6, p0, Lorg/telegram/ui/ProfileActivity;->writeButton:Landroid/widget/ImageView;

    invoke-virtual {v6, v8, v8, v8, v8}, Landroid/widget/ImageView;->setPadding(IIII)V

    goto :goto_1ca

    .line 2471
    .end local v1    # "isChannel":Z
    :cond_221
    invoke-virtual {v3, v9, v10}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(II)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v2

    .line 2472
    iget-boolean v6, v0, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    if-eqz v6, :cond_23b

    iget v6, p0, Lorg/telegram/ui/ProfileActivity;->chat_id:I

    if-lez v6, :cond_23b

    .line 2473
    const/16 v6, 0xb

    const-string v7, "SetAdmins"

    const v8, 0x7f0704f3

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(ILjava/lang/String;)Landroid/widget/TextView;

    .line 2475
    :cond_23b
    iget-boolean v6, v0, Lorg/telegram/tgnet/TLRPC$Chat;->admins_enabled:Z

    if-eqz v6, :cond_247

    iget-boolean v6, v0, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    if-nez v6, :cond_247

    iget-boolean v6, v0, Lorg/telegram/tgnet/TLRPC$Chat;->admin:Z

    if-eqz v6, :cond_255

    .line 2476
    :cond_247
    const/16 v6, 0x8

    const-string v7, "EditName"

    const v8, 0x7f0701ee

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(ILjava/lang/String;)Landroid/widget/TextView;

    .line 2478
    :cond_255
    iget-boolean v6, v0, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    if-eqz v6, :cond_277

    iget-object v6, p0, Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz v6, :cond_269

    iget-object v6, p0, Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_277

    .line 2479
    :cond_269
    const/16 v6, 0xd

    const-string v7, "ConvertGroupMenu"

    const v8, 0x7f070199

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(ILjava/lang/String;)Landroid/widget/TextView;

    .line 2481
    :cond_277
    const/4 v6, 0x7

    const-string v7, "DeleteAndExit"

    const v8, 0x7f0701cd

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(ILjava/lang/String;)Landroid/widget/TextView;

    goto/16 :goto_be

    .line 2484
    .end local v0    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_286
    invoke-virtual {v3, v9, v10}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(II)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v2

    .line 2485
    const/16 v6, 0x8

    const-string v7, "EditName"

    const v8, 0x7f0701ee

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(ILjava/lang/String;)Landroid/widget/TextView;

    goto/16 :goto_be
.end method

.method private fetchUsersFromChannelInfo()V
    .registers 5

    .prologue
    .line 2057
    iget-object v2, p0, Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_channelFull;

    if-eqz v2, :cond_33

    iget-object v2, p0, Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    if-eqz v2, :cond_33

    .line 2058
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_d
    iget-object v2, p0, Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_33

    .line 2059
    iget-object v2, p0, Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    .line 2060
    .local v1, "chatParticipant":Lorg/telegram/tgnet/TLRPC$ChatParticipant;
    iget-object v2, p0, Lorg/telegram/ui/ProfileActivity;->participantsMap:Ljava/util/HashMap;

    iget v3, v1, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2058
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 2063
    .end local v0    # "a":I
    .end local v1    # "chatParticipant":Lorg/telegram/tgnet/TLRPC$ChatParticipant;
    :cond_33
    return-void
.end method

.method private fixLayout()V
    .registers 3

    .prologue
    .line 1455
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity;->fragmentView:Landroid/view/View;

    if-nez v0, :cond_5

    .line 1469
    :goto_4
    return-void

    .line 1458
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity;->fragmentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/ProfileActivity$21;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ProfileActivity$21;-><init>(Lorg/telegram/ui/ProfileActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto :goto_4
.end method

.method private getChannelParticipants(Z)V
    .registers 7
    .param p1, "reload"    # Z

    .prologue
    const/4 v3, 0x0

    .line 1246
    iget-boolean v4, p0, Lorg/telegram/ui/ProfileActivity;->loadingUsers:Z

    if-nez v4, :cond_d

    iget-object v4, p0, Lorg/telegram/ui/ProfileActivity;->participantsMap:Ljava/util/HashMap;

    if-eqz v4, :cond_d

    iget-object v4, p0, Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-nez v4, :cond_e

    .line 1298
    :cond_d
    :goto_d
    return-void

    .line 1249
    :cond_e
    const/4 v4, 0x1

    iput-boolean v4, p0, Lorg/telegram/ui/ProfileActivity;->loadingUsers:Z

    .line 1250
    iget-object v4, p0, Lorg/telegram/ui/ProfileActivity;->participantsMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_50

    if-eqz p1, :cond_50

    const/16 v0, 0x12c

    .line 1252
    .local v0, "delay":I
    :goto_1d
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;-><init>()V

    .line 1253
    .local v1, "req":Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;
    iget v4, p0, Lorg/telegram/ui/ProfileActivity;->chat_id:I

    invoke-static {v4}, Lorg/telegram/messenger/MessagesController;->getInputChannel(I)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object v4

    iput-object v4, v1, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    .line 1254
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantsRecent;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantsRecent;-><init>()V

    iput-object v4, v1, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;->filter:Lorg/telegram/tgnet/TLRPC$ChannelParticipantsFilter;

    .line 1255
    if-eqz p1, :cond_52

    :goto_33
    iput v3, v1, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;->offset:I

    .line 1256
    const/16 v3, 0xc8

    iput v3, v1, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;->limit:I

    .line 1257
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/ProfileActivity$18;

    invoke-direct {v4, p0, v1, v0}, Lorg/telegram/ui/ProfileActivity$18;-><init>(Lorg/telegram/ui/ProfileActivity;Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;I)V

    invoke-virtual {v3, v1, v4}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    move-result v2

    .line 1297
    .local v2, "reqId":I
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v3

    iget v4, p0, Lorg/telegram/ui/ProfileActivity;->classGuid:I

    invoke-virtual {v3, v2, v4}, Lorg/telegram/tgnet/ConnectionsManager;->bindRequestToGuid(II)V

    goto :goto_d

    .end local v0    # "delay":I
    .end local v1    # "req":Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;
    .end local v2    # "reqId":I
    :cond_50
    move v0, v3

    .line 1250
    goto :goto_1d

    .line 1255
    .restart local v0    # "delay":I
    .restart local v1    # "req":Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;
    :cond_52
    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity;->participantsMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    goto :goto_33
.end method

.method private kickUser(I)V
    .registers 11
    .param p1, "uid"    # I

    .prologue
    const/4 v8, 0x0

    .line 2066
    if-eqz p1, :cond_a5

    .line 2067
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget v4, p0, Lorg/telegram/ui/ProfileActivity;->chat_id:I

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v5

    iget-object v6, p0, Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    invoke-virtual {v3, v4, v5, v6}, Lorg/telegram/messenger/MessagesController;->deleteUserFromChat(ILorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$ChatFull;)V

    .line 2068
    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v3, :cond_9e

    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz v3, :cond_9e

    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    if-eqz v3, :cond_9e

    .line 2069
    const/4 v1, 0x0

    .line 2070
    .local v1, "changed":Z
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_2c
    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_60

    .line 2071
    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_chatChannelParticipant;

    iget-object v2, v3, Lorg/telegram/tgnet/TLRPC$TL_chatChannelParticipant;->channelParticipant:Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    .line 2072
    .local v2, "p":Lorg/telegram/tgnet/TLRPC$ChannelParticipant;
    iget v3, v2, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->user_id:I

    if-ne v3, p1, :cond_9f

    .line 2073
    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz v3, :cond_56

    .line 2074
    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget v4, v3, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants_count:I

    add-int/lit8 v4, v4, -0x1

    iput v4, v3, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants_count:I

    .line 2076
    :cond_56
    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2077
    const/4 v1, 0x1

    .line 2081
    .end local v2    # "p":Lorg/telegram/tgnet/TLRPC$ChannelParticipant;
    :cond_60
    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz v3, :cond_91

    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    if-eqz v3, :cond_91

    .line 2082
    const/4 v0, 0x0

    :goto_6b
    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_91

    .line 2083
    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    .line 2084
    .local v2, "p":Lorg/telegram/tgnet/TLRPC$ChatParticipant;
    iget v3, v2, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:I

    if-ne v3, p1, :cond_a2

    .line 2085
    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2086
    const/4 v1, 0x1

    .line 2091
    .end local v2    # "p":Lorg/telegram/tgnet/TLRPC$ChatParticipant;
    :cond_91
    if-eqz v1, :cond_9e

    .line 2092
    invoke-direct {p0}, Lorg/telegram/ui/ProfileActivity;->updateOnlineCount()V

    .line 2093
    invoke-direct {p0}, Lorg/telegram/ui/ProfileActivity;->updateRowsIds()V

    .line 2094
    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity;->listAdapter:Lorg/telegram/ui/ProfileActivity$ListAdapter;

    invoke-virtual {v3}, Lorg/telegram/ui/ProfileActivity$ListAdapter;->notifyDataSetChanged()V

    .line 2108
    .end local v0    # "a":I
    .end local v1    # "changed":Z
    :cond_9e
    :goto_9e
    return-void

    .line 2070
    .restart local v0    # "a":I
    .restart local v1    # "changed":Z
    .local v2, "p":Lorg/telegram/tgnet/TLRPC$ChannelParticipant;
    :cond_9f
    add-int/lit8 v0, v0, 0x1

    goto :goto_2c

    .line 2082
    .local v2, "p":Lorg/telegram/tgnet/TLRPC$ChatParticipant;
    :cond_a2
    add-int/lit8 v0, v0, 0x1

    goto :goto_6b

    .line 2098
    .end local v0    # "a":I
    .end local v1    # "changed":Z
    .end local v2    # "p":Lorg/telegram/tgnet/TLRPC$ChatParticipant;
    :cond_a5
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/NotificationCenter;->closeChats:I

    invoke-virtual {v3, p0, v4}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 2099
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_eb

    .line 2100
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/NotificationCenter;->closeChats:I

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    iget v6, p0, Lorg/telegram/ui/ProfileActivity;->chat_id:I

    int-to-long v6, v6

    neg-long v6, v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {v3, v4, v5}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 2104
    :goto_ca
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget v4, p0, Lorg/telegram/ui/ProfileActivity;->chat_id:I

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v5

    iget-object v6, p0, Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    invoke-virtual {v3, v4, v5, v6}, Lorg/telegram/messenger/MessagesController;->deleteUserFromChat(ILorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$ChatFull;)V

    .line 2105
    iput-boolean v8, p0, Lorg/telegram/ui/ProfileActivity;->playProfileAnimation:Z

    .line 2106
    invoke-virtual {p0}, Lorg/telegram/ui/ProfileActivity;->finishFragment()V

    goto :goto_9e

    .line 2102
    :cond_eb
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/NotificationCenter;->closeChats:I

    new-array v5, v8, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto :goto_ca
.end method

.method private leaveChatPressed()V
    .registers 4

    .prologue
    const v2, 0x7f0700a7

    .line 1202
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ProfileActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1203
    .local v0, "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    iget v1, p0, Lorg/telegram/ui/ProfileActivity;->chat_id:I

    invoke-static {v1}, Lorg/telegram/messenger/ChatObject;->isChannel(I)Z

    move-result v1

    if-eqz v1, :cond_67

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez v1, :cond_67

    .line 1204
    iget v1, p0, Lorg/telegram/ui/ProfileActivity;->chat_id:I

    invoke-static {v1}, Lorg/telegram/messenger/ChatObject;->isChannel(I)Z

    move-result v1

    if-eqz v1, :cond_60

    const-string v1, "ChannelLeaveAlert"

    const v2, 0x7f07012c

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    :goto_2b
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1208
    :goto_2e
    const-string v1, "AppName"

    const v2, 0x7f070092

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1209
    const-string v1, "OK"

    const v2, 0x7f0703d4

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/ProfileActivity$17;

    invoke-direct {v2, p0}, Lorg/telegram/ui/ProfileActivity$17;-><init>(Lorg/telegram/ui/ProfileActivity;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1215
    const-string v1, "Cancel"

    const v2, 0x7f0700fe

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1216
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ProfileActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 1217
    return-void

    .line 1204
    :cond_60
    const-string v1, "AreYouSureDeleteAndExit"

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2b

    .line 1206
    :cond_67
    const-string v1, "AreYouSureDeleteAndExit"

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto :goto_2e
.end method

.method private needLayout()V
    .registers 21

    .prologue
    .line 1354
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/ProfileActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v12}, Lorg/telegram/ui/ActionBar/ActionBar;->getOccupyStatusBar()Z

    move-result v12

    if-eqz v12, :cond_1ba

    sget v12, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    :goto_c
    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v13

    add-int v7, v12, v13

    .line 1355
    .local v7, "newTop":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/ProfileActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz v12, :cond_35

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lorg/telegram/ui/ProfileActivity;->openAnimationInProgress:Z

    if-nez v12, :cond_35

    .line 1356
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/ProfileActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v12}, Lorg/telegram/ui/Components/RecyclerListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    .line 1357
    .local v6, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iget v12, v6, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    if-eq v12, v7, :cond_35

    .line 1358
    iput v7, v6, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1359
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/ProfileActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v12, v6}, Lorg/telegram/ui/Components/RecyclerListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1363
    .end local v6    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_35
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/ProfileActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    if-eqz v12, :cond_3ab

    .line 1364
    move-object/from16 v0, p0

    iget v12, v0, Lorg/telegram/ui/ProfileActivity;->extraHeight:I

    int-to-float v12, v12

    const/high16 v13, 0x42b00000    # 88.0f

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    int-to-float v13, v13

    div-float v5, v12, v13

    .line 1365
    .local v5, "diff":F
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/ProfileActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v0, p0

    iget v13, v0, Lorg/telegram/ui/ProfileActivity;->extraHeight:I

    invoke-virtual {v12, v13}, Lorg/telegram/ui/Components/RecyclerListView;->setTopGlowOffset(I)V

    .line 1367
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/ProfileActivity;->writeButton:Landroid/widget/ImageView;

    if-eqz v12, :cond_146

    .line 1368
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/ProfileActivity;->writeButton:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/ProfileActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v12}, Lorg/telegram/ui/ActionBar/ActionBar;->getOccupyStatusBar()Z

    move-result v12

    if-eqz v12, :cond_1bd

    sget v12, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    :goto_6a
    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v14

    add-int/2addr v12, v14

    move-object/from16 v0, p0

    iget v14, v0, Lorg/telegram/ui/ProfileActivity;->extraHeight:I

    add-int/2addr v12, v14

    const/high16 v14, 0x41ec0000    # 29.5f

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    sub-int/2addr v12, v14

    int-to-float v12, v12

    invoke-virtual {v13, v12}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 1370
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lorg/telegram/ui/ProfileActivity;->openAnimationInProgress:Z

    if-nez v12, :cond_146

    .line 1371
    const v12, 0x3e4ccccd

    cmpl-float v12, v5, v12

    if-lez v12, :cond_1c0

    const/4 v9, 0x1

    .line 1372
    .local v9, "setVisible":Z
    :goto_8d
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/ProfileActivity;->writeButton:Landroid/widget/ImageView;

    invoke-virtual {v12}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v12

    if-nez v12, :cond_1c3

    const/4 v4, 0x1

    .line 1373
    .local v4, "currentVisible":Z
    :goto_98
    if-eq v9, v4, :cond_146

    .line 1374
    if-eqz v9, :cond_1c6

    .line 1375
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/ProfileActivity;->writeButton:Landroid/widget/ImageView;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 1379
    :goto_a4
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/ProfileActivity;->writeButtonAnimation:Landroid/animation/AnimatorSet;

    if-eqz v12, :cond_b6

    .line 1380
    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/telegram/ui/ProfileActivity;->writeButtonAnimation:Landroid/animation/AnimatorSet;

    .line 1381
    .local v8, "old":Landroid/animation/AnimatorSet;
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lorg/telegram/ui/ProfileActivity;->writeButtonAnimation:Landroid/animation/AnimatorSet;

    .line 1382
    invoke-virtual {v8}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1384
    .end local v8    # "old":Landroid/animation/AnimatorSet;
    :cond_b6
    new-instance v12, Landroid/animation/AnimatorSet;

    invoke-direct {v12}, Landroid/animation/AnimatorSet;-><init>()V

    move-object/from16 v0, p0

    iput-object v12, v0, Lorg/telegram/ui/ProfileActivity;->writeButtonAnimation:Landroid/animation/AnimatorSet;

    .line 1385
    if-eqz v9, :cond_1d4

    .line 1386
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/ProfileActivity;->writeButtonAnimation:Landroid/animation/AnimatorSet;

    new-instance v13, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v13}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v12, v13}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1387
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/ProfileActivity;->writeButtonAnimation:Landroid/animation/AnimatorSet;

    const/4 v13, 0x3

    new-array v13, v13, [Landroid/animation/Animator;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/ProfileActivity;->writeButton:Landroid/widget/ImageView;

    const-string v16, "scaleX"

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [F

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/high16 v19, 0x3f800000    # 1.0f

    aput v19, v17, v18

    .line 1388
    invoke-static/range {v15 .. v17}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/ProfileActivity;->writeButton:Landroid/widget/ImageView;

    const-string v16, "scaleY"

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [F

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/high16 v19, 0x3f800000    # 1.0f

    aput v19, v17, v18

    .line 1389
    invoke-static/range {v15 .. v17}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x2

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/ProfileActivity;->writeButton:Landroid/widget/ImageView;

    const-string v16, "alpha"

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [F

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/high16 v19, 0x3f800000    # 1.0f

    aput v19, v17, v18

    .line 1390
    invoke-static/range {v15 .. v17}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v15

    aput-object v15, v13, v14

    .line 1387
    invoke-virtual {v12, v13}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1400
    :goto_128
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/ProfileActivity;->writeButtonAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v14, 0x96

    invoke-virtual {v12, v14, v15}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1401
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/ProfileActivity;->writeButtonAnimation:Landroid/animation/AnimatorSet;

    new-instance v13, Lorg/telegram/ui/ProfileActivity$20;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lorg/telegram/ui/ProfileActivity$20;-><init>(Lorg/telegram/ui/ProfileActivity;)V

    invoke-virtual {v12, v13}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1409
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/ProfileActivity;->writeButtonAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v12}, Landroid/animation/AnimatorSet;->start()V

    .line 1414
    .end local v4    # "currentVisible":Z
    .end local v9    # "setVisible":Z
    :cond_146
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/ProfileActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v12}, Lorg/telegram/ui/ActionBar/ActionBar;->getOccupyStatusBar()Z

    move-result v12

    if-eqz v12, :cond_23f

    sget v12, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    :goto_152
    int-to-float v12, v12

    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v13

    int-to-float v13, v13

    const/high16 v14, 0x40000000    # 2.0f

    div-float/2addr v13, v14

    const/high16 v14, 0x3f800000    # 1.0f

    add-float/2addr v14, v5

    mul-float/2addr v13, v14

    add-float/2addr v12, v13

    const/high16 v13, 0x41a80000    # 21.0f

    sget v14, Lorg/telegram/messenger/AndroidUtilities;->density:F

    mul-float/2addr v13, v14

    sub-float/2addr v12, v13

    const/high16 v13, 0x41d80000    # 27.0f

    sget v14, Lorg/telegram/messenger/AndroidUtilities;->density:F

    mul-float/2addr v13, v14

    mul-float/2addr v13, v5

    add-float v3, v12, v13

    .line 1415
    .local v3, "avatarY":F
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/ProfileActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    const/high16 v13, 0x42280000    # 42.0f

    const/high16 v14, 0x41900000    # 18.0f

    mul-float/2addr v14, v5

    add-float/2addr v13, v14

    const/high16 v14, 0x42280000    # 42.0f

    div-float/2addr v13, v14

    invoke-virtual {v12, v13}, Lorg/telegram/ui/Components/BackupImageView;->setScaleX(F)V

    .line 1416
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/ProfileActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    const/high16 v13, 0x42280000    # 42.0f

    const/high16 v14, 0x41900000    # 18.0f

    mul-float/2addr v14, v5

    add-float/2addr v13, v14

    const/high16 v14, 0x42280000    # 42.0f

    div-float/2addr v13, v14

    invoke-virtual {v12, v13}, Lorg/telegram/ui/Components/BackupImageView;->setScaleY(F)V

    .line 1417
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/ProfileActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    const/high16 v13, 0x423c0000    # 47.0f

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    neg-int v13, v13

    int-to-float v13, v13

    mul-float/2addr v13, v5

    invoke-virtual {v12, v13}, Lorg/telegram/ui/Components/BackupImageView;->setTranslationX(F)V

    .line 1418
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/ProfileActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    float-to-double v14, v3

    invoke-static {v14, v15}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v14

    double-to-float v13, v14

    invoke-virtual {v12, v13}, Lorg/telegram/ui/Components/BackupImageView;->setTranslationY(F)V

    .line 1419
    const/4 v2, 0x0

    .local v2, "a":I
    :goto_1ac
    const/4 v12, 0x2

    if-ge v2, v12, :cond_3ab

    .line 1420
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/ProfileActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v12, v12, v2

    if-nez v12, :cond_242

    .line 1419
    :cond_1b7
    :goto_1b7
    add-int/lit8 v2, v2, 0x1

    goto :goto_1ac

    .line 1354
    .end local v2    # "a":I
    .end local v3    # "avatarY":F
    .end local v5    # "diff":F
    .end local v7    # "newTop":I
    :cond_1ba
    const/4 v12, 0x0

    goto/16 :goto_c

    .line 1368
    .restart local v5    # "diff":F
    .restart local v7    # "newTop":I
    :cond_1bd
    const/4 v12, 0x0

    goto/16 :goto_6a

    .line 1371
    :cond_1c0
    const/4 v9, 0x0

    goto/16 :goto_8d

    .line 1372
    .restart local v9    # "setVisible":Z
    :cond_1c3
    const/4 v4, 0x0

    goto/16 :goto_98

    .line 1377
    .restart local v4    # "currentVisible":Z
    :cond_1c6
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/ProfileActivity;->writeButton:Landroid/widget/ImageView;

    const/4 v13, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_a4

    .line 1393
    :cond_1d4
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/ProfileActivity;->writeButtonAnimation:Landroid/animation/AnimatorSet;

    new-instance v13, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v13}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v12, v13}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1394
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/ProfileActivity;->writeButtonAnimation:Landroid/animation/AnimatorSet;

    const/4 v13, 0x3

    new-array v13, v13, [Landroid/animation/Animator;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/ProfileActivity;->writeButton:Landroid/widget/ImageView;

    const-string v16, "scaleX"

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [F

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const v19, 0x3e4ccccd

    aput v19, v17, v18

    .line 1395
    invoke-static/range {v15 .. v17}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/ProfileActivity;->writeButton:Landroid/widget/ImageView;

    const-string v16, "scaleY"

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [F

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const v19, 0x3e4ccccd

    aput v19, v17, v18

    .line 1396
    invoke-static/range {v15 .. v17}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x2

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/ProfileActivity;->writeButton:Landroid/widget/ImageView;

    const-string v16, "alpha"

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [F

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    aput v19, v17, v18

    .line 1397
    invoke-static/range {v15 .. v17}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v15

    aput-object v15, v13, v14

    .line 1394
    invoke-virtual {v12, v13}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto/16 :goto_128

    .line 1414
    .end local v4    # "currentVisible":Z
    .end local v9    # "setVisible":Z
    :cond_23f
    const/4 v12, 0x0

    goto/16 :goto_152

    .line 1423
    .restart local v2    # "a":I
    .restart local v3    # "avatarY":F
    :cond_242
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/ProfileActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v12, v12, v2

    const/high16 v13, -0x3e580000    # -21.0f

    sget v14, Lorg/telegram/messenger/AndroidUtilities;->density:F

    mul-float/2addr v13, v14

    mul-float/2addr v13, v5

    invoke-virtual {v12, v13}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTranslationX(F)V

    .line 1424
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/ProfileActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v12, v12, v2

    float-to-double v14, v3

    invoke-static {v14, v15}, Ljava/lang/Math;->floor(D)D

    move-result-wide v14

    double-to-float v13, v14

    const v14, 0x3fa66666

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    int-to-float v14, v14

    add-float/2addr v13, v14

    const/high16 v14, 0x40e00000    # 7.0f

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    int-to-float v14, v14

    mul-float/2addr v14, v5

    add-float/2addr v13, v14

    invoke-virtual {v12, v13}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTranslationY(F)V

    .line 1425
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/ProfileActivity;->onlineTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v12, v12, v2

    const/high16 v13, -0x3e580000    # -21.0f

    sget v14, Lorg/telegram/messenger/AndroidUtilities;->density:F

    mul-float/2addr v13, v14

    mul-float/2addr v13, v5

    invoke-virtual {v12, v13}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTranslationX(F)V

    .line 1426
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/ProfileActivity;->onlineTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v12, v12, v2

    float-to-double v14, v3

    invoke-static {v14, v15}, Ljava/lang/Math;->floor(D)D

    move-result-wide v14

    double-to-float v13, v14

    const/high16 v14, 0x41c00000    # 24.0f

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    int-to-float v14, v14

    add-float/2addr v13, v14

    const/high16 v14, 0x41300000    # 11.0f

    sget v15, Lorg/telegram/messenger/AndroidUtilities;->density:F

    mul-float/2addr v14, v15

    float-to-double v14, v14

    invoke-static {v14, v15}, Ljava/lang/Math;->floor(D)D

    move-result-wide v14

    double-to-float v14, v14

    mul-float/2addr v14, v5

    add-float/2addr v13, v14

    invoke-virtual {v12, v13}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTranslationY(F)V

    .line 1427
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/ProfileActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v12, v12, v2

    const/high16 v13, 0x3f800000    # 1.0f

    const v14, 0x3df5c28f

    mul-float/2addr v14, v5

    add-float/2addr v13, v14

    invoke-virtual {v12, v13}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setScaleX(F)V

    .line 1428
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/ProfileActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v12, v12, v2

    const/high16 v13, 0x3f800000    # 1.0f

    const v14, 0x3df5c28f

    mul-float/2addr v14, v5

    add-float/2addr v13, v14

    invoke-virtual {v12, v13}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setScaleY(F)V

    .line 1429
    const/4 v12, 0x1

    if-ne v2, v12, :cond_1b7

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lorg/telegram/ui/ProfileActivity;->openAnimationInProgress:Z

    if-nez v12, :cond_1b7

    .line 1431
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v12

    if-eqz v12, :cond_39e

    .line 1432
    const/high16 v12, 0x43f50000    # 490.0f

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    .line 1436
    .local v10, "width":I
    :goto_2da
    const/high16 v13, 0x42fc0000    # 126.0f

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/ProfileActivity;->callItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz v12, :cond_3a4

    const/16 v12, 0x30

    :goto_2e4
    add-int/lit8 v12, v12, 0x28

    int-to-float v12, v12

    const/high16 v14, 0x3f800000    # 1.0f

    sub-float/2addr v14, v5

    mul-float/2addr v12, v14

    add-float/2addr v12, v13

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    sub-int v12, v10, v12

    int-to-float v12, v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/ProfileActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v13, v13, v2

    invoke-virtual {v13}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getTranslationX()F

    move-result v13

    sub-float/2addr v12, v13

    float-to-int v10, v12

    .line 1437
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/ProfileActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v12, v12, v2

    invoke-virtual {v12}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getPaint()Landroid/graphics/Paint;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/ProfileActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v13, v13, v2

    invoke-virtual {v13}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v13

    invoke-interface {v13}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/ProfileActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v13, v13, v2

    invoke-virtual {v13}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getScaleX()F

    move-result v13

    mul-float/2addr v12, v13

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/ProfileActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v13, v13, v2

    invoke-virtual {v13}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getSideDrawablesSize()I

    move-result v13

    int-to-float v13, v13

    add-float v11, v12, v13

    .line 1438
    .local v11, "width2":F
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/ProfileActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v12, v12, v2

    invoke-virtual {v12}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    .line 1439
    .restart local v6    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    int-to-float v12, v10

    cmpg-float v12, v12, v11

    if-gez v12, :cond_3a7

    .line 1440
    int-to-float v12, v10

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/ProfileActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v13, v13, v2

    invoke-virtual {v13}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getScaleX()F

    move-result v13

    div-float/2addr v12, v13

    float-to-double v12, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v12

    double-to-int v12, v12

    iput v12, v6, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1444
    :goto_358
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/ProfileActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v12, v12, v2

    invoke-virtual {v12, v6}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1446
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/ProfileActivity;->onlineTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v12, v12, v2

    invoke-virtual {v12}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .end local v6    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    .line 1447
    .restart local v6    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/ProfileActivity;->onlineTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v12, v12, v2

    invoke-virtual {v12}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getTranslationX()F

    move-result v12

    const/high16 v13, 0x41000000    # 8.0f

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    int-to-float v13, v13

    add-float/2addr v12, v13

    const/high16 v13, 0x42200000    # 40.0f

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    int-to-float v13, v13

    const/high16 v14, 0x3f800000    # 1.0f

    sub-float/2addr v14, v5

    mul-float/2addr v13, v14

    add-float/2addr v12, v13

    float-to-double v12, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v12

    double-to-int v12, v12

    iput v12, v6, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 1448
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/ProfileActivity;->onlineTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v12, v12, v2

    invoke-virtual {v12, v6}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1b7

    .line 1434
    .end local v6    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .end local v10    # "width":I
    .end local v11    # "width2":F
    :cond_39e
    sget-object v12, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v10, v12, Landroid/graphics/Point;->x:I

    .restart local v10    # "width":I
    goto/16 :goto_2da

    .line 1436
    :cond_3a4
    const/4 v12, 0x0

    goto/16 :goto_2e4

    .line 1442
    .restart local v6    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .restart local v11    # "width2":F
    :cond_3a7
    const/4 v12, -0x2

    iput v12, v6, Landroid/widget/FrameLayout$LayoutParams;->width:I

    goto :goto_358

    .line 1452
    .end local v2    # "a":I
    .end local v3    # "avatarY":F
    .end local v5    # "diff":F
    .end local v6    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .end local v10    # "width":I
    .end local v11    # "width2":F
    :cond_3ab
    return-void
.end method

.method private openAddMember()V
    .registers 8

    .prologue
    const/4 v4, 0x1

    .line 1301
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1302
    .local v1, "args":Landroid/os/Bundle;
    const-string v5, "onlyUsers"

    invoke-virtual {v1, v5, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1303
    const-string v5, "destroyAfterSelect"

    invoke-virtual {v1, v5, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1304
    const-string v5, "returnAsResult"

    invoke-virtual {v1, v5, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1305
    const-string v5, "needForwardCount"

    iget-object v6, p0, Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v6}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v6

    if-nez v6, :cond_85

    :goto_1f
    invoke-virtual {v1, v5, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1307
    iget v4, p0, Lorg/telegram/ui/ProfileActivity;->chat_id:I

    if-lez v4, :cond_43

    .line 1308
    iget-object v4, p0, Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v4, v4, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    if-eqz v4, :cond_35

    .line 1309
    const-string v4, "chat_id"

    iget-object v5, p0, Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1311
    :cond_35
    const-string v4, "selectAlertString"

    const-string v5, "AddToTheGroup"

    const v6, 0x7f070076

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1313
    :cond_43
    new-instance v2, Lorg/telegram/ui/ContactsActivity;

    invoke-direct {v2, v1}, Lorg/telegram/ui/ContactsActivity;-><init>(Landroid/os/Bundle;)V

    .line 1314
    .local v2, "fragment":Lorg/telegram/ui/ContactsActivity;
    new-instance v4, Lorg/telegram/ui/ProfileActivity$19;

    invoke-direct {v4, p0}, Lorg/telegram/ui/ProfileActivity$19;-><init>(Lorg/telegram/ui/ProfileActivity;)V

    invoke-virtual {v2, v4}, Lorg/telegram/ui/ContactsActivity;->setDelegate(Lorg/telegram/ui/ContactsActivity$ContactsActivityDelegate;)V

    .line 1320
    iget-object v4, p0, Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz v4, :cond_8a

    iget-object v4, p0, Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    if-eqz v4, :cond_8a

    .line 1321
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 1322
    .local v3, "users":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lorg/telegram/tgnet/TLRPC$User;>;"
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_60
    iget-object v4, p0, Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_87

    .line 1323
    iget-object v4, p0, Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1322
    add-int/lit8 v0, v0, 0x1

    goto :goto_60

    .line 1305
    .end local v0    # "a":I
    .end local v2    # "fragment":Lorg/telegram/ui/ContactsActivity;
    .end local v3    # "users":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lorg/telegram/tgnet/TLRPC$User;>;"
    :cond_85
    const/4 v4, 0x0

    goto :goto_1f

    .line 1325
    .restart local v0    # "a":I
    .restart local v2    # "fragment":Lorg/telegram/ui/ContactsActivity;
    .restart local v3    # "users":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lorg/telegram/tgnet/TLRPC$User;>;"
    :cond_87
    invoke-virtual {v2, v3}, Lorg/telegram/ui/ContactsActivity;->setIgnoreUsers(Ljava/util/HashMap;)V

    .line 1327
    .end local v0    # "a":I
    .end local v3    # "users":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lorg/telegram/tgnet/TLRPC$User;>;"
    :cond_8a
    invoke-virtual {p0, v2}, Lorg/telegram/ui/ProfileActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    .line 1328
    return-void
.end method

.method private processOnClickOrPress(I)Z
    .registers 14
    .param p1, "position"    # I

    .prologue
    const v11, 0x7f07019a

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1094
    iget v9, p0, Lorg/telegram/ui/ProfileActivity;->usernameRow:I

    if-eq p1, v9, :cond_d

    iget v9, p0, Lorg/telegram/ui/ProfileActivity;->channelNameRow:I

    if-ne p1, v9, :cond_63

    .line 1096
    :cond_d
    iget v9, p0, Lorg/telegram/ui/ProfileActivity;->usernameRow:I

    if-ne p1, v9, :cond_4c

    .line 1097
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v9

    iget v10, p0, Lorg/telegram/ui/ProfileActivity;->user_id:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v4

    .line 1098
    .local v4, "user":Lorg/telegram/tgnet/TLRPC$User;
    if-eqz v4, :cond_25

    iget-object v9, v4, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    if-nez v9, :cond_26

    .line 1198
    .end local v4    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_25
    :goto_25
    return v7

    .line 1101
    .restart local v4    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_26
    iget-object v6, v4, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    .line 1109
    .end local v4    # "user":Lorg/telegram/tgnet/TLRPC$User;
    .local v6, "username":Ljava/lang/String;
    :goto_28
    new-instance v1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ProfileActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v1, v9}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1110
    .local v1, "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    new-array v9, v8, [Ljava/lang/CharSequence;

    const-string v10, "Copy"

    invoke-static {v10, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v7

    new-instance v7, Lorg/telegram/ui/ProfileActivity$14;

    invoke-direct {v7, p0, v6}, Lorg/telegram/ui/ProfileActivity$14;-><init>(Lorg/telegram/ui/ProfileActivity;Ljava/lang/String;)V

    invoke-virtual {v1, v9, v7}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1124
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v7

    invoke-virtual {p0, v7}, Lorg/telegram/ui/ProfileActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    move v7, v8

    .line 1125
    goto :goto_25

    .line 1103
    .end local v1    # "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    .end local v6    # "username":Ljava/lang/String;
    :cond_4c
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v9

    iget v10, p0, Lorg/telegram/ui/ProfileActivity;->chat_id:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v2

    .line 1104
    .local v2, "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    if-eqz v2, :cond_25

    iget-object v9, v2, Lorg/telegram/tgnet/TLRPC$Chat;->username:Ljava/lang/String;

    if-eqz v9, :cond_25

    .line 1107
    iget-object v6, v2, Lorg/telegram/tgnet/TLRPC$Chat;->username:Ljava/lang/String;

    .restart local v6    # "username":Ljava/lang/String;
    goto :goto_28

    .line 1126
    .end local v2    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    .end local v6    # "username":Ljava/lang/String;
    :cond_63
    iget v9, p0, Lorg/telegram/ui/ProfileActivity;->phoneRow:I

    if-ne p1, v9, :cond_109

    .line 1127
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v9

    iget v10, p0, Lorg/telegram/ui/ProfileActivity;->user_id:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v4

    .line 1128
    .restart local v4    # "user":Lorg/telegram/tgnet/TLRPC$User;
    if-eqz v4, :cond_25

    iget-object v9, v4, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    if-eqz v9, :cond_25

    iget-object v9, v4, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_25

    invoke-virtual {p0}, Lorg/telegram/ui/ProfileActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v9

    if-eqz v9, :cond_25

    .line 1132
    new-instance v1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ProfileActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v1, v9}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1133
    .restart local v1    # "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1134
    .local v3, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1135
    .local v0, "actions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v9

    iget v10, v4, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-virtual {v9, v10}, Lorg/telegram/messenger/MessagesController;->getUserFull(I)Lorg/telegram/tgnet/TLRPC$TL_userFull;

    move-result-object v5

    .line 1136
    .local v5, "userFull":Lorg/telegram/tgnet/TLRPC$TL_userFull;
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v9

    iget-boolean v9, v9, Lorg/telegram/messenger/MessagesController;->callsEnabled:Z

    if-eqz v9, :cond_c8

    if-eqz v5, :cond_c8

    iget-boolean v9, v5, Lorg/telegram/tgnet/TLRPC$TL_userFull;->phone_calls_available:Z

    if-eqz v9, :cond_c8

    .line 1137
    const-string v9, "CallViaTelegram"

    const v10, 0x7f0700f9

    invoke-static {v9, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1138
    const/4 v9, 0x2

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1140
    :cond_c8
    const-string v9, "Call"

    const v10, 0x7f0700ec

    invoke-static {v9, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1141
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1142
    const-string v7, "Copy"

    invoke-static {v7, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1143
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1144
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v7, v7, [Ljava/lang/CharSequence;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/CharSequence;

    new-instance v9, Lorg/telegram/ui/ProfileActivity$15;

    invoke-direct {v9, p0, v0, v4}, Lorg/telegram/ui/ProfileActivity$15;-><init>(Lorg/telegram/ui/ProfileActivity;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$User;)V

    invoke-virtual {v1, v7, v9}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1169
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v7

    invoke-virtual {p0, v7}, Lorg/telegram/ui/ProfileActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    move v7, v8

    .line 1170
    goto/16 :goto_25

    .line 1171
    .end local v0    # "actions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v1    # "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    .end local v3    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    .end local v4    # "user":Lorg/telegram/tgnet/TLRPC$User;
    .end local v5    # "userFull":Lorg/telegram/tgnet/TLRPC$TL_userFull;
    :cond_109
    iget v9, p0, Lorg/telegram/ui/ProfileActivity;->channelInfoRow:I

    if-eq p1, v9, :cond_111

    iget v9, p0, Lorg/telegram/ui/ProfileActivity;->userInfoRow:I

    if-ne p1, v9, :cond_25

    .line 1172
    :cond_111
    new-instance v1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ProfileActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v1, v9}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1173
    .restart local v1    # "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    new-array v9, v8, [Ljava/lang/CharSequence;

    const-string v10, "Copy"

    invoke-static {v10, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v7

    new-instance v7, Lorg/telegram/ui/ProfileActivity$16;

    invoke-direct {v7, p0, p1}, Lorg/telegram/ui/ProfileActivity$16;-><init>(Lorg/telegram/ui/ProfileActivity;I)V

    invoke-virtual {v1, v9, v7}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1195
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v7

    invoke-virtual {p0, v7}, Lorg/telegram/ui/ProfileActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    move v7, v8

    .line 1196
    goto/16 :goto_25
.end method

.method private updateOnlineCount()V
    .registers 9

    .prologue
    .line 1981
    const/4 v5, 0x0

    iput v5, p0, Lorg/telegram/ui/ProfileActivity;->onlineCount:I

    .line 1982
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v1

    .line 1983
    .local v1, "currentTime":I
    iget-object v5, p0, Lorg/telegram/ui/ProfileActivity;->sortedUsers:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 1984
    iget-object v5, p0, Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    instance-of v5, v5, Lorg/telegram/tgnet/TLRPC$TL_chatFull;

    if-nez v5, :cond_2a

    iget-object v5, p0, Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    instance-of v5, v5, Lorg/telegram/tgnet/TLRPC$TL_channelFull;

    if-eqz v5, :cond_9c

    iget-object v5, p0, Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants_count:I

    const/16 v6, 0xc8

    if-gt v5, v6, :cond_9c

    iget-object v5, p0, Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    if-eqz v5, :cond_9c

    .line 1985
    :cond_2a
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_2b
    iget-object v5, p0, Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_7f

    .line 1986
    iget-object v5, p0, Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    .line 1987
    .local v3, "participant":Lorg/telegram/tgnet/TLRPC$ChatParticipant;
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    iget v6, v3, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v4

    .line 1988
    .local v4, "user":Lorg/telegram/tgnet/TLRPC$User;
    if-eqz v4, :cond_73

    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    if-eqz v5, :cond_73

    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    if-gt v5, v1, :cond_65

    iget v5, v4, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v6

    if-ne v5, v6, :cond_73

    :cond_65
    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    const/16 v6, 0x2710

    if-le v5, v6, :cond_73

    .line 1989
    iget v5, p0, Lorg/telegram/ui/ProfileActivity;->onlineCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lorg/telegram/ui/ProfileActivity;->onlineCount:I

    .line 1991
    :cond_73
    iget-object v5, p0, Lorg/telegram/ui/ProfileActivity;->sortedUsers:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1985
    add-int/lit8 v0, v0, 0x1

    goto :goto_2b

    .line 1995
    .end local v3    # "participant":Lorg/telegram/tgnet/TLRPC$ChatParticipant;
    .end local v4    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_7f
    :try_start_7f
    iget-object v5, p0, Lorg/telegram/ui/ProfileActivity;->sortedUsers:Ljava/util/ArrayList;

    new-instance v6, Lorg/telegram/ui/ProfileActivity$25;

    invoke-direct {v6, p0}, Lorg/telegram/ui/ProfileActivity$25;-><init>(Lorg/telegram/ui/ProfileActivity;)V

    invoke-static {v5, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_89
    .catch Ljava/lang/Exception; {:try_start_7f .. :try_end_89} :catch_9d

    .line 2042
    :goto_89
    iget-object v5, p0, Lorg/telegram/ui/ProfileActivity;->listAdapter:Lorg/telegram/ui/ProfileActivity$ListAdapter;

    if-eqz v5, :cond_9c

    .line 2043
    iget-object v5, p0, Lorg/telegram/ui/ProfileActivity;->listAdapter:Lorg/telegram/ui/ProfileActivity$ListAdapter;

    iget v6, p0, Lorg/telegram/ui/ProfileActivity;->emptyRowChat2:I

    add-int/lit8 v6, v6, 0x1

    iget-object v7, p0, Lorg/telegram/ui/ProfileActivity;->sortedUsers:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Lorg/telegram/ui/ProfileActivity$ListAdapter;->notifyItemRangeChanged(II)V

    .line 2046
    .end local v0    # "a":I
    :cond_9c
    return-void

    .line 2038
    .restart local v0    # "a":I
    :catch_9d
    move-exception v2

    .line 2039
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_89
.end method

.method private updateProfileData()V
    .registers 22

    .prologue
    .line 2254
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/ProfileActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    if-eqz v15, :cond_c

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/ProfileActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-nez v15, :cond_d

    .line 2397
    :cond_c
    :goto_c
    return-void

    .line 2257
    :cond_d
    move-object/from16 v0, p0

    iget v15, v0, Lorg/telegram/ui/ProfileActivity;->user_id:I

    if-eqz v15, :cond_1c8

    .line 2258
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ProfileActivity;->user_id:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v14

    .line 2259
    .local v14, "user":Lorg/telegram/tgnet/TLRPC$User;
    const/4 v9, 0x0

    .line 2260
    .local v9, "photo":Lorg/telegram/tgnet/TLRPC$FileLocation;
    const/4 v10, 0x0

    .line 2261
    .local v10, "photoBig":Lorg/telegram/tgnet/TLRPC$FileLocation;
    iget-object v15, v14, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    if-eqz v15, :cond_33

    .line 2262
    iget-object v15, v14, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    iget-object v9, v15, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 2263
    iget-object v15, v14, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    iget-object v10, v15, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_big:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 2265
    :cond_33
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/ProfileActivity;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v15, v14}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$User;)V

    .line 2266
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/ProfileActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    const-string v16, "50_50"

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v15, v9, v0, v1}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 2268
    invoke-static {v14}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v6

    .line 2273
    .local v6, "newString":Ljava/lang/String;
    iget v15, v14, Lorg/telegram/tgnet/TLRPC$User;->id:I

    const v16, 0x514c8

    move/from16 v0, v16

    if-eq v15, v0, :cond_63

    iget v15, v14, Lorg/telegram/tgnet/TLRPC$User;->id:I

    const v16, 0xbdb28

    move/from16 v0, v16

    if-ne v15, v0, :cond_7b

    .line 2274
    :cond_63
    const-string v15, "ServiceNotifications"

    const v16, 0x7f0704ed

    invoke-static/range {v15 .. v16}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    .line 2280
    .local v7, "newString2":Ljava/lang/String;
    :goto_6c
    const/4 v2, 0x0

    .local v2, "a":I
    :goto_6d
    const/4 v15, 0x2

    if-ge v2, v15, :cond_1a8

    .line 2281
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/ProfileActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v15, v15, v2

    if-nez v15, :cond_8e

    .line 2280
    :goto_78
    add-int/lit8 v2, v2, 0x1

    goto :goto_6d

    .line 2275
    .end local v2    # "a":I
    .end local v7    # "newString2":Ljava/lang/String;
    :cond_7b
    iget-boolean v15, v14, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-eqz v15, :cond_89

    .line 2276
    const-string v15, "Bot"

    const v16, 0x7f0700d9

    invoke-static/range {v15 .. v16}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    .restart local v7    # "newString2":Ljava/lang/String;
    goto :goto_6c

    .line 2278
    .end local v7    # "newString2":Ljava/lang/String;
    :cond_89
    invoke-static {v14}, Lorg/telegram/messenger/LocaleController;->formatUserStatus(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v7

    .restart local v7    # "newString2":Ljava/lang/String;
    goto :goto_6c

    .line 2284
    .restart local v2    # "a":I
    :cond_8e
    if-nez v2, :cond_16e

    iget v15, v14, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v16

    move/from16 v0, v16

    if-eq v15, v0, :cond_16e

    iget v15, v14, Lorg/telegram/tgnet/TLRPC$User;->id:I

    div-int/lit16 v15, v15, 0x3e8

    const/16 v16, 0x309

    move/from16 v0, v16

    if-eq v15, v0, :cond_16e

    iget v15, v14, Lorg/telegram/tgnet/TLRPC$User;->id:I

    div-int/lit16 v15, v15, 0x3e8

    const/16 v16, 0x14d

    move/from16 v0, v16

    if-eq v15, v0, :cond_16e

    iget-object v15, v14, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    if-eqz v15, :cond_16e

    iget-object v15, v14, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    if-eqz v15, :cond_16e

    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v15

    iget-object v15, v15, Lorg/telegram/messenger/ContactsController;->contactsDict:Landroid/util/SparseArray;

    iget v0, v14, Lorg/telegram/tgnet/TLRPC$User;->id:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v15

    if-nez v15, :cond_16e

    .line 2285
    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v15

    iget-object v15, v15, Lorg/telegram/messenger/ContactsController;->contactsDict:Landroid/util/SparseArray;

    invoke-virtual {v15}, Landroid/util/SparseArray;->size()I

    move-result v15

    if-nez v15, :cond_e0

    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v15

    invoke-virtual {v15}, Lorg/telegram/messenger/ContactsController;->isLoadingContacts()Z

    move-result v15

    if-nez v15, :cond_16e

    .line 2286
    :cond_e0
    invoke-static {}, Lorg/telegram/PhoneFormat/PhoneFormat;->getInstance()Lorg/telegram/PhoneFormat/PhoneFormat;

    move-result-object v15

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "+"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget-object v0, v14, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Lorg/telegram/PhoneFormat/PhoneFormat;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2287
    .local v8, "phoneString":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/ProfileActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v15, v15, v2

    invoke-virtual {v15}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_118

    .line 2288
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/ProfileActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v15, v15, v2

    invoke-virtual {v15, v8}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)V

    .line 2295
    .end local v8    # "phoneString":Ljava/lang/String;
    :cond_118
    :goto_118
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/ProfileActivity;->onlineTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v15, v15, v2

    invoke-virtual {v15}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_131

    .line 2296
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/ProfileActivity;->onlineTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v15, v15, v2

    invoke-virtual {v15, v7}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)V

    .line 2298
    :cond_131
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/ProfileActivity;->currentEncryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    if-eqz v15, :cond_188

    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->chat_lockIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 2299
    .local v5, "leftIcon":Landroid/graphics/drawable/Drawable;
    :goto_139
    const/4 v12, 0x0

    .line 2300
    .local v12, "rightIcon":Landroid/graphics/drawable/Drawable;
    if-nez v2, :cond_198

    .line 2301
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v15

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/ui/ProfileActivity;->dialog_id:J

    move-wide/from16 v16, v0

    const-wide/16 v18, 0x0

    cmp-long v16, v16, v18

    if-eqz v16, :cond_18a

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/ui/ProfileActivity;->dialog_id:J

    move-wide/from16 v16, v0

    :goto_152
    invoke-virtual/range {v15 .. v17}, Lorg/telegram/messenger/MessagesController;->isDialogMuted(J)Z

    move-result v15

    if-eqz v15, :cond_196

    sget-object v12, Lorg/telegram/ui/ActionBar/Theme;->chat_muteIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 2305
    :cond_15a
    :goto_15a
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/ProfileActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v15, v15, v2

    invoke-virtual {v15, v5}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setLeftDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2306
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/ProfileActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v15, v15, v2

    invoke-virtual {v15, v12}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setRightDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_78

    .line 2291
    .end local v5    # "leftIcon":Landroid/graphics/drawable/Drawable;
    .end local v12    # "rightIcon":Landroid/graphics/drawable/Drawable;
    :cond_16e
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/ProfileActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v15, v15, v2

    invoke-virtual {v15}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_118

    .line 2292
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/ProfileActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v15, v15, v2

    invoke-virtual {v15, v6}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_118

    .line 2298
    :cond_188
    const/4 v5, 0x0

    goto :goto_139

    .line 2301
    .restart local v5    # "leftIcon":Landroid/graphics/drawable/Drawable;
    .restart local v12    # "rightIcon":Landroid/graphics/drawable/Drawable;
    :cond_18a
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ProfileActivity;->user_id:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    goto :goto_152

    :cond_196
    const/4 v12, 0x0

    goto :goto_15a

    .line 2302
    :cond_198
    iget-boolean v15, v14, Lorg/telegram/tgnet/TLRPC$User;->verified:Z

    if-eqz v15, :cond_15a

    .line 2303
    new-instance v12, Lorg/telegram/ui/Components/CombinedDrawable;

    .end local v12    # "rightIcon":Landroid/graphics/drawable/Drawable;
    sget-object v15, Lorg/telegram/ui/ActionBar/Theme;->profile_verifiedDrawable:Landroid/graphics/drawable/Drawable;

    sget-object v16, Lorg/telegram/ui/ActionBar/Theme;->profile_verifiedCheckDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, v16

    invoke-direct {v12, v15, v0}, Lorg/telegram/ui/Components/CombinedDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .restart local v12    # "rightIcon":Landroid/graphics/drawable/Drawable;
    goto :goto_15a

    .line 2309
    .end local v5    # "leftIcon":Landroid/graphics/drawable/Drawable;
    .end local v12    # "rightIcon":Landroid/graphics/drawable/Drawable;
    :cond_1a8
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/ProfileActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v15}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v16

    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v15

    invoke-virtual {v15, v10}, Lorg/telegram/ui/PhotoViewer;->isShowingImage(Lorg/telegram/tgnet/TLRPC$FileLocation;)Z

    move-result v15

    if-nez v15, :cond_1c6

    const/4 v15, 0x1

    :goto_1bb
    const/16 v17, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v0, v15, v1}, Lorg/telegram/messenger/ImageReceiver;->setVisible(ZZ)V

    goto/16 :goto_c

    :cond_1c6
    const/4 v15, 0x0

    goto :goto_1bb

    .line 2310
    .end local v2    # "a":I
    .end local v6    # "newString":Ljava/lang/String;
    .end local v7    # "newString2":Ljava/lang/String;
    .end local v9    # "photo":Lorg/telegram/tgnet/TLRPC$FileLocation;
    .end local v10    # "photoBig":Lorg/telegram/tgnet/TLRPC$FileLocation;
    .end local v14    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_1c8
    move-object/from16 v0, p0

    iget v15, v0, Lorg/telegram/ui/ProfileActivity;->chat_id:I

    if-eqz v15, :cond_c

    .line 2311
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ProfileActivity;->chat_id:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v3

    .line 2312
    .local v3, "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    if-eqz v3, :cond_236

    .line 2313
    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    .line 2319
    :goto_1e6
    invoke-static {v3}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v15

    if-eqz v15, :cond_306

    .line 2320
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz v15, :cond_212

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v15, v15, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez v15, :cond_25d

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget v15, v15, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants_count:I

    if-eqz v15, :cond_212

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v15, v15, Lorg/telegram/tgnet/TLRPC$Chat;->admin:Z

    if-nez v15, :cond_212

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-boolean v15, v15, Lorg/telegram/tgnet/TLRPC$ChatFull;->can_view_participants:Z

    if-eqz v15, :cond_25d

    .line 2321
    :cond_212
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v15, v15, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v15, :cond_23b

    .line 2322
    const-string v15, "Loading"

    const v16, 0x7f0702eb

    invoke-static/range {v15 .. v16}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    .line 2355
    .restart local v6    # "newString":Ljava/lang/String;
    :goto_227
    const/4 v2, 0x0

    .restart local v2    # "a":I
    :goto_228
    const/4 v15, 0x2

    if-ge v2, v15, :cond_49e

    .line 2356
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/ProfileActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v15, v15, v2

    if-nez v15, :cond_35a

    .line 2355
    :cond_233
    :goto_233
    add-int/lit8 v2, v2, 0x1

    goto :goto_228

    .line 2315
    .end local v2    # "a":I
    .end local v6    # "newString":Ljava/lang/String;
    :cond_236
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    goto :goto_1e6

    .line 2324
    :cond_23b
    iget v15, v3, Lorg/telegram/tgnet/TLRPC$Chat;->flags:I

    and-int/lit8 v15, v15, 0x40

    if-eqz v15, :cond_24f

    .line 2325
    const-string v15, "ChannelPublic"

    const v16, 0x7f070150

    invoke-static/range {v15 .. v16}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "newString":Ljava/lang/String;
    goto :goto_227

    .line 2327
    .end local v6    # "newString":Ljava/lang/String;
    :cond_24f
    const-string v15, "ChannelPrivate"

    const v16, 0x7f07014d

    invoke-static/range {v15 .. v16}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "newString":Ljava/lang/String;
    goto :goto_227

    .line 2331
    .end local v6    # "newString":Ljava/lang/String;
    :cond_25d
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v15, v15, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v15, :cond_2cd

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget v15, v15, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants_count:I

    const/16 v16, 0xc8

    move/from16 v0, v16

    if-gt v15, v0, :cond_2cd

    .line 2332
    move-object/from16 v0, p0

    iget v15, v0, Lorg/telegram/ui/ProfileActivity;->onlineCount:I

    const/16 v16, 0x1

    move/from16 v0, v16

    if-le v15, v0, :cond_2b9

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget v15, v15, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants_count:I

    if-eqz v15, :cond_2b9

    .line 2333
    const-string v15, "%s, %s"

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const-string v18, "Members"

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants_count:I

    move/from16 v19, v0

    invoke-static/range {v18 .. v19}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x1

    const-string v18, "Online"

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ProfileActivity;->onlineCount:I

    move/from16 v19, v0

    invoke-static/range {v18 .. v19}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "newString":Ljava/lang/String;
    goto/16 :goto_227

    .line 2335
    .end local v6    # "newString":Ljava/lang/String;
    :cond_2b9
    const-string v15, "Members"

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants_count:I

    move/from16 v16, v0

    invoke-static/range {v15 .. v16}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "newString":Ljava/lang/String;
    goto/16 :goto_227

    .line 2338
    .end local v6    # "newString":Ljava/lang/String;
    :cond_2cd
    const/4 v15, 0x1

    new-array v11, v15, [I

    .line 2339
    .local v11, "result":[I
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget v15, v15, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants_count:I

    invoke-static {v15, v11}, Lorg/telegram/messenger/LocaleController;->formatShortNumber(I[I)Ljava/lang/String;

    move-result-object v13

    .line 2340
    .local v13, "shortNumber":Ljava/lang/String;
    const-string v15, "Members"

    const/16 v16, 0x0

    aget v16, v11, v16

    invoke-static/range {v15 .. v16}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v15

    const-string v16, "%d"

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    aget v19, v11, v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    .line 2341
    .restart local v6    # "newString":Ljava/lang/String;
    goto/16 :goto_227

    .line 2344
    .end local v6    # "newString":Ljava/lang/String;
    .end local v11    # "result":[I
    .end local v13    # "shortNumber":Ljava/lang/String;
    :cond_306
    iget v4, v3, Lorg/telegram/tgnet/TLRPC$Chat;->participants_count:I

    .line 2345
    .local v4, "count":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz v15, :cond_31a

    .line 2346
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object v15, v15, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v15, v15, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 2348
    :cond_31a
    if-eqz v4, :cond_352

    move-object/from16 v0, p0

    iget v15, v0, Lorg/telegram/ui/ProfileActivity;->onlineCount:I

    const/16 v16, 0x1

    move/from16 v0, v16

    if-le v15, v0, :cond_352

    .line 2349
    const-string v15, "%s, %s"

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const-string v18, "Members"

    move-object/from16 v0, v18

    invoke-static {v0, v4}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x1

    const-string v18, "Online"

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ProfileActivity;->onlineCount:I

    move/from16 v19, v0

    invoke-static/range {v18 .. v19}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "newString":Ljava/lang/String;
    goto/16 :goto_227

    .line 2351
    .end local v6    # "newString":Ljava/lang/String;
    :cond_352
    const-string v15, "Members"

    invoke-static {v15, v4}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "newString":Ljava/lang/String;
    goto/16 :goto_227

    .line 2359
    .end local v4    # "count":I
    .restart local v2    # "a":I
    :cond_35a
    iget-object v15, v3, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    if-eqz v15, :cond_37f

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/ProfileActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v15, v15, v2

    invoke-virtual {v15}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v15

    iget-object v0, v3, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_37f

    .line 2360
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/ProfileActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v15, v15, v2

    iget-object v0, v3, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)V

    .line 2362
    :cond_37f
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/ProfileActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v15, v15, v2

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setLeftDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2363
    if-eqz v2, :cond_3e9

    .line 2364
    iget-boolean v15, v3, Lorg/telegram/tgnet/TLRPC$Chat;->verified:Z

    if-eqz v15, :cond_3dd

    .line 2365
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/ProfileActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v15, v15, v2

    new-instance v16, Lorg/telegram/ui/Components/CombinedDrawable;

    sget-object v17, Lorg/telegram/ui/ActionBar/Theme;->profile_verifiedDrawable:Landroid/graphics/drawable/Drawable;

    sget-object v18, Lorg/telegram/ui/ActionBar/Theme;->profile_verifiedCheckDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct/range {v16 .. v18}, Lorg/telegram/ui/Components/CombinedDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual/range {v15 .. v16}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setRightDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2372
    :goto_3a2
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v15, v15, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v15, :cond_415

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz v15, :cond_415

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget v15, v15, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants_count:I

    const/16 v16, 0xc8

    move/from16 v0, v16

    if-gt v15, v0, :cond_415

    move-object/from16 v0, p0

    iget v15, v0, Lorg/telegram/ui/ProfileActivity;->onlineCount:I

    if-lez v15, :cond_415

    .line 2373
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/ProfileActivity;->onlineTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v15, v15, v2

    invoke-virtual {v15}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_233

    .line 2374
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/ProfileActivity;->onlineTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v15, v15, v2

    invoke-virtual {v15, v6}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_233

    .line 2367
    :cond_3dd
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/ProfileActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v15, v15, v2

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setRightDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3a2

    .line 2370
    :cond_3e9
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/ProfileActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v16, v15, v2

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ProfileActivity;->chat_id:I

    move/from16 v17, v0

    move/from16 v0, v17

    neg-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-virtual {v15, v0, v1}, Lorg/telegram/messenger/MessagesController;->isDialogMuted(J)Z

    move-result v15

    if-eqz v15, :cond_413

    sget-object v15, Lorg/telegram/ui/ActionBar/Theme;->chat_muteIconDrawable:Landroid/graphics/drawable/Drawable;

    :goto_40d
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setRightDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3a2

    :cond_413
    const/4 v15, 0x0

    goto :goto_40d

    .line 2376
    :cond_415
    if-nez v2, :cond_483

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v15}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v15

    if-eqz v15, :cond_483

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz v15, :cond_483

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget v15, v15, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants_count:I

    if-eqz v15, :cond_483

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v15, v15, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez v15, :cond_43f

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v15, v15, Lorg/telegram/tgnet/TLRPC$Chat;->broadcast:Z

    if-eqz v15, :cond_483

    .line 2377
    :cond_43f
    const/4 v15, 0x1

    new-array v11, v15, [I

    .line 2378
    .restart local v11    # "result":[I
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget v15, v15, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants_count:I

    invoke-static {v15, v11}, Lorg/telegram/messenger/LocaleController;->formatShortNumber(I[I)Ljava/lang/String;

    move-result-object v13

    .line 2379
    .restart local v13    # "shortNumber":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/ProfileActivity;->onlineTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v15, v15, v2

    const-string v16, "Members"

    const/16 v17, 0x0

    aget v17, v11, v17

    invoke-static/range {v16 .. v17}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v16

    const-string v17, "%d"

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    aget v20, v11, v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v18, v19

    invoke-static/range {v17 .. v18}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_233

    .line 2381
    .end local v11    # "result":[I
    .end local v13    # "shortNumber":Ljava/lang/String;
    :cond_483
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/ProfileActivity;->onlineTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v15, v15, v2

    invoke-virtual {v15}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_233

    .line 2382
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/ProfileActivity;->onlineTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v15, v15, v2

    invoke-virtual {v15, v6}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_233

    .line 2387
    :cond_49e
    const/4 v9, 0x0

    .line 2388
    .restart local v9    # "photo":Lorg/telegram/tgnet/TLRPC$FileLocation;
    const/4 v10, 0x0

    .line 2389
    .restart local v10    # "photoBig":Lorg/telegram/tgnet/TLRPC$FileLocation;
    iget-object v15, v3, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    if-eqz v15, :cond_4ac

    .line 2390
    iget-object v15, v3, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    iget-object v9, v15, Lorg/telegram/tgnet/TLRPC$ChatPhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 2391
    iget-object v15, v3, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    iget-object v10, v15, Lorg/telegram/tgnet/TLRPC$ChatPhoto;->photo_big:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 2393
    :cond_4ac
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/ProfileActivity;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v15, v3}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$Chat;)V

    .line 2394
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/ProfileActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    const-string v16, "50_50"

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v15, v9, v0, v1}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 2395
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/ProfileActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v15}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v16

    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v15

    invoke-virtual {v15, v10}, Lorg/telegram/ui/PhotoViewer;->isShowingImage(Lorg/telegram/tgnet/TLRPC$FileLocation;)Z

    move-result v15

    if-nez v15, :cond_4e4

    const/4 v15, 0x1

    :goto_4d9
    const/16 v17, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v0, v15, v1}, Lorg/telegram/messenger/ImageReceiver;->setVisible(ZZ)V

    goto/16 :goto_c

    :cond_4e4
    const/4 v15, 0x0

    goto :goto_4d9
.end method

.method private updateRowsIds()V
    .registers 7

    .prologue
    const/4 v5, -0x1

    .line 2115
    iput v5, p0, Lorg/telegram/ui/ProfileActivity;->emptyRow:I

    .line 2116
    iput v5, p0, Lorg/telegram/ui/ProfileActivity;->phoneRow:I

    .line 2117
    iput v5, p0, Lorg/telegram/ui/ProfileActivity;->userInfoRow:I

    .line 2118
    iput v5, p0, Lorg/telegram/ui/ProfileActivity;->userSectionRow:I

    .line 2119
    iput v5, p0, Lorg/telegram/ui/ProfileActivity;->sectionRow:I

    .line 2120
    iput v5, p0, Lorg/telegram/ui/ProfileActivity;->sharedMediaRow:I

    .line 2121
    iput v5, p0, Lorg/telegram/ui/ProfileActivity;->settingsNotificationsRow:I

    .line 2122
    iput v5, p0, Lorg/telegram/ui/ProfileActivity;->usernameRow:I

    .line 2123
    iput v5, p0, Lorg/telegram/ui/ProfileActivity;->settingsTimerRow:I

    .line 2124
    iput v5, p0, Lorg/telegram/ui/ProfileActivity;->settingsKeyRow:I

    .line 2125
    iput v5, p0, Lorg/telegram/ui/ProfileActivity;->startSecretChatRow:I

    .line 2126
    iput v5, p0, Lorg/telegram/ui/ProfileActivity;->membersEndRow:I

    .line 2127
    iput v5, p0, Lorg/telegram/ui/ProfileActivity;->emptyRowChat2:I

    .line 2128
    iput v5, p0, Lorg/telegram/ui/ProfileActivity;->addMemberRow:I

    .line 2129
    iput v5, p0, Lorg/telegram/ui/ProfileActivity;->channelInfoRow:I

    .line 2130
    iput v5, p0, Lorg/telegram/ui/ProfileActivity;->channelNameRow:I

    .line 2131
    iput v5, p0, Lorg/telegram/ui/ProfileActivity;->convertRow:I

    .line 2132
    iput v5, p0, Lorg/telegram/ui/ProfileActivity;->convertHelpRow:I

    .line 2133
    iput v5, p0, Lorg/telegram/ui/ProfileActivity;->emptyRowChat:I

    .line 2134
    iput v5, p0, Lorg/telegram/ui/ProfileActivity;->membersSectionRow:I

    .line 2135
    iput v5, p0, Lorg/telegram/ui/ProfileActivity;->membersRow:I

    .line 2136
    iput v5, p0, Lorg/telegram/ui/ProfileActivity;->managementRow:I

    .line 2137
    iput v5, p0, Lorg/telegram/ui/ProfileActivity;->leaveChannelRow:I

    .line 2138
    iput v5, p0, Lorg/telegram/ui/ProfileActivity;->loadMoreMembersRow:I

    .line 2139
    iput v5, p0, Lorg/telegram/ui/ProfileActivity;->groupsInCommonRow:I

    .line 2140
    iput v5, p0, Lorg/telegram/ui/ProfileActivity;->blockedUsersRow:I

    .line 2142
    const/4 v3, 0x0

    iput v3, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    .line 2143
    iget v3, p0, Lorg/telegram/ui/ProfileActivity;->user_id:I

    if-eqz v3, :cond_fc

    .line 2144
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget v4, p0, Lorg/telegram/ui/ProfileActivity;->user_id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v1

    .line 2145
    .local v1, "user":Lorg/telegram/tgnet/TLRPC$User;
    iget v3, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    iput v3, p0, Lorg/telegram/ui/ProfileActivity;->emptyRow:I

    .line 2146
    if-eqz v1, :cond_58

    iget-boolean v3, v1, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-nez v3, :cond_60

    .line 2147
    :cond_58
    iget v3, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    iput v3, p0, Lorg/telegram/ui/ProfileActivity;->phoneRow:I

    .line 2149
    :cond_60
    if-eqz v1, :cond_76

    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    if-eqz v3, :cond_76

    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_76

    .line 2150
    iget v3, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    iput v3, p0, Lorg/telegram/ui/ProfileActivity;->usernameRow:I

    .line 2152
    :cond_76
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget v4, v1, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/MessagesController;->getUserFull(I)Lorg/telegram/tgnet/TLRPC$TL_userFull;

    move-result-object v2

    .line 2153
    .local v2, "userFull":Lorg/telegram/tgnet/TLRPC$TL_userFull;
    if-eqz v2, :cond_f5

    iget-object v0, v2, Lorg/telegram/tgnet/TLRPC$TL_userFull;->about:Ljava/lang/String;

    .line 2154
    .local v0, "about":Ljava/lang/String;
    :goto_84
    if-eqz v0, :cond_f7

    .line 2155
    iget v3, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    iput v3, p0, Lorg/telegram/ui/ProfileActivity;->userSectionRow:I

    .line 2156
    iget v3, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    iput v3, p0, Lorg/telegram/ui/ProfileActivity;->userInfoRow:I

    .line 2161
    :goto_96
    iget v3, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    iput v3, p0, Lorg/telegram/ui/ProfileActivity;->sectionRow:I

    .line 2162
    iget v3, p0, Lorg/telegram/ui/ProfileActivity;->user_id:I

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v4

    if-eq v3, v4, :cond_ae

    .line 2163
    iget v3, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    iput v3, p0, Lorg/telegram/ui/ProfileActivity;->settingsNotificationsRow:I

    .line 2165
    :cond_ae
    iget v3, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    iput v3, p0, Lorg/telegram/ui/ProfileActivity;->sharedMediaRow:I

    .line 2166
    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity;->currentEncryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    instance-of v3, v3, Lorg/telegram/tgnet/TLRPC$TL_encryptedChat;

    if-eqz v3, :cond_cc

    .line 2167
    iget v3, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    iput v3, p0, Lorg/telegram/ui/ProfileActivity;->settingsTimerRow:I

    .line 2168
    iget v3, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    iput v3, p0, Lorg/telegram/ui/ProfileActivity;->settingsKeyRow:I

    .line 2170
    :cond_cc
    if-eqz v2, :cond_da

    iget v3, v2, Lorg/telegram/tgnet/TLRPC$TL_userFull;->common_chats_count:I

    if-eqz v3, :cond_da

    .line 2171
    iget v3, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    iput v3, p0, Lorg/telegram/ui/ProfileActivity;->groupsInCommonRow:I

    .line 2173
    :cond_da
    if-eqz v1, :cond_f4

    iget-boolean v3, v1, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-nez v3, :cond_f4

    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity;->currentEncryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    if-nez v3, :cond_f4

    iget v3, v1, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v4

    if-eq v3, v4, :cond_f4

    .line 2174
    iget v3, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    iput v3, p0, Lorg/telegram/ui/ProfileActivity;->startSecretChatRow:I

    .line 2251
    .end local v0    # "about":Ljava/lang/String;
    .end local v1    # "user":Lorg/telegram/tgnet/TLRPC$User;
    .end local v2    # "userFull":Lorg/telegram/tgnet/TLRPC$TL_userFull;
    :cond_f4
    :goto_f4
    return-void

    .line 2153
    .restart local v1    # "user":Lorg/telegram/tgnet/TLRPC$User;
    .restart local v2    # "userFull":Lorg/telegram/tgnet/TLRPC$TL_userFull;
    :cond_f5
    const/4 v0, 0x0

    goto :goto_84

    .line 2158
    .restart local v0    # "about":Ljava/lang/String;
    :cond_f7
    iput v5, p0, Lorg/telegram/ui/ProfileActivity;->userSectionRow:I

    .line 2159
    iput v5, p0, Lorg/telegram/ui/ProfileActivity;->userInfoRow:I

    goto :goto_96

    .line 2176
    .end local v0    # "about":Ljava/lang/String;
    .end local v1    # "user":Lorg/telegram/tgnet/TLRPC$User;
    .end local v2    # "userFull":Lorg/telegram/tgnet/TLRPC$TL_userFull;
    :cond_fc
    iget v3, p0, Lorg/telegram/ui/ProfileActivity;->chat_id:I

    if-eqz v3, :cond_f4

    .line 2177
    iget v3, p0, Lorg/telegram/ui/ProfileActivity;->chat_id:I

    if-lez v3, :cond_331

    .line 2178
    iget v3, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    iput v3, p0, Lorg/telegram/ui/ProfileActivity;->emptyRow:I

    .line 2179
    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v3}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v3

    if-eqz v3, :cond_174

    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz v3, :cond_128

    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$ChatFull;->about:Ljava/lang/String;

    if-eqz v3, :cond_128

    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$ChatFull;->about:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_138

    :cond_128
    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Chat;->username:Ljava/lang/String;

    if-eqz v3, :cond_174

    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Chat;->username:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_174

    .line 2180
    :cond_138
    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz v3, :cond_154

    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$ChatFull;->about:Ljava/lang/String;

    if-eqz v3, :cond_154

    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$ChatFull;->about:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_154

    .line 2181
    iget v3, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    iput v3, p0, Lorg/telegram/ui/ProfileActivity;->channelInfoRow:I

    .line 2183
    :cond_154
    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Chat;->username:Ljava/lang/String;

    if-eqz v3, :cond_16c

    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Chat;->username:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_16c

    .line 2184
    iget v3, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    iput v3, p0, Lorg/telegram/ui/ProfileActivity;->channelNameRow:I

    .line 2186
    :cond_16c
    iget v3, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    iput v3, p0, Lorg/telegram/ui/ProfileActivity;->sectionRow:I

    .line 2188
    :cond_174
    iget v3, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    iput v3, p0, Lorg/telegram/ui/ProfileActivity;->settingsNotificationsRow:I

    .line 2189
    iget v3, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    iput v3, p0, Lorg/telegram/ui/ProfileActivity;->sharedMediaRow:I

    .line 2190
    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v3}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v3

    if-eqz v3, :cond_293

    .line 2191
    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez v3, :cond_1aa

    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz v3, :cond_1aa

    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    if-nez v3, :cond_1a2

    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$ChatFull;->can_view_participants:Z

    if-eqz v3, :cond_1aa

    .line 2192
    :cond_1a2
    iget v3, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    iput v3, p0, Lorg/telegram/ui/ProfileActivity;->membersRow:I

    .line 2194
    :cond_1aa
    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v3}, Lorg/telegram/messenger/ChatObject;->isNotInChat(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v3

    if-nez v3, :cond_1d2

    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez v3, :cond_1d2

    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    if-nez v3, :cond_1ca

    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$Chat;->editor:Z

    if-nez v3, :cond_1ca

    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$Chat;->moderator:Z

    if-eqz v3, :cond_1d2

    .line 2195
    :cond_1ca
    iget v3, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    iput v3, p0, Lorg/telegram/ui/ProfileActivity;->managementRow:I

    .line 2197
    :cond_1d2
    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v3}, Lorg/telegram/messenger/ChatObject;->isNotInChat(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v3

    if-nez v3, :cond_1f4

    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v3, :cond_1f4

    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$Chat;->editor:Z

    if-nez v3, :cond_1ec

    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    if-eqz v3, :cond_1f4

    .line 2198
    :cond_1ec
    iget v3, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    iput v3, p0, Lorg/telegram/ui/ProfileActivity;->blockedUsersRow:I

    .line 2200
    :cond_1f4
    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    if-nez v3, :cond_214

    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$Chat;->left:Z

    if-nez v3, :cond_214

    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$Chat;->kicked:Z

    if-nez v3, :cond_214

    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez v3, :cond_214

    .line 2201
    iget v3, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    iput v3, p0, Lorg/telegram/ui/ProfileActivity;->leaveChannelRow:I

    .line 2203
    :cond_214
    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v3, :cond_244

    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$Chat;->editor:Z

    if-nez v3, :cond_22c

    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    if-nez v3, :cond_22c

    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$Chat;->democracy:Z

    if-eqz v3, :cond_244

    .line 2204
    :cond_22c
    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz v3, :cond_23c

    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants_count:I

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget v4, v4, Lorg/telegram/messenger/MessagesController;->maxMegagroupCount:I

    if-ge v3, v4, :cond_244

    .line 2205
    :cond_23c
    iget v3, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    iput v3, p0, Lorg/telegram/ui/ProfileActivity;->addMemberRow:I

    .line 2208
    :cond_244
    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz v3, :cond_f4

    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    if-eqz v3, :cond_f4

    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_f4

    .line 2209
    iget v3, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    iput v3, p0, Lorg/telegram/ui/ProfileActivity;->emptyRowChat:I

    .line 2210
    iget v3, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    iput v3, p0, Lorg/telegram/ui/ProfileActivity;->membersSectionRow:I

    .line 2211
    iget v3, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    iput v3, p0, Lorg/telegram/ui/ProfileActivity;->emptyRowChat2:I

    .line 2212
    iget v3, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    iget-object v4, p0, Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    .line 2213
    iget v3, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    iput v3, p0, Lorg/telegram/ui/ProfileActivity;->membersEndRow:I

    .line 2214
    iget-boolean v3, p0, Lorg/telegram/ui/ProfileActivity;->usersEndReached:Z

    if-nez v3, :cond_f4

    .line 2215
    iget v3, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    iput v3, p0, Lorg/telegram/ui/ProfileActivity;->loadMoreMembersRow:I

    goto/16 :goto_f4

    .line 2219
    :cond_293
    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz v3, :cond_2eb

    .line 2220
    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    instance-of v3, v3, Lorg/telegram/tgnet/TLRPC$TL_chatParticipantsForbidden;

    if-nez v3, :cond_2cb

    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    .line 2221
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget v4, v4, Lorg/telegram/messenger/MessagesController;->maxGroupCount:I

    if-ge v3, v4, :cond_2cb

    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$Chat;->admin:Z

    if-nez v3, :cond_2c3

    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    if-nez v3, :cond_2c3

    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$Chat;->admins_enabled:Z

    if-nez v3, :cond_2cb

    .line 2223
    :cond_2c3
    iget v3, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    iput v3, p0, Lorg/telegram/ui/ProfileActivity;->addMemberRow:I

    .line 2226
    :cond_2cb
    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    if-eqz v3, :cond_2eb

    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget v4, v4, Lorg/telegram/messenger/MessagesController;->minGroupConvertSize:I

    if-lt v3, v4, :cond_2eb

    .line 2227
    iget v3, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    iput v3, p0, Lorg/telegram/ui/ProfileActivity;->convertRow:I

    .line 2230
    :cond_2eb
    iget v3, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    iput v3, p0, Lorg/telegram/ui/ProfileActivity;->emptyRowChat:I

    .line 2231
    iget v3, p0, Lorg/telegram/ui/ProfileActivity;->convertRow:I

    if-eq v3, v5, :cond_328

    .line 2232
    iget v3, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    iput v3, p0, Lorg/telegram/ui/ProfileActivity;->convertHelpRow:I

    .line 2236
    :goto_2ff
    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz v3, :cond_f4

    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    instance-of v3, v3, Lorg/telegram/tgnet/TLRPC$TL_chatParticipantsForbidden;

    if-nez v3, :cond_f4

    .line 2237
    iget v3, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    iput v3, p0, Lorg/telegram/ui/ProfileActivity;->emptyRowChat2:I

    .line 2238
    iget v3, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    iget-object v4, p0, Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    .line 2239
    iget v3, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    iput v3, p0, Lorg/telegram/ui/ProfileActivity;->membersEndRow:I

    goto/16 :goto_f4

    .line 2234
    :cond_328
    iget v3, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    iput v3, p0, Lorg/telegram/ui/ProfileActivity;->membersSectionRow:I

    goto :goto_2ff

    .line 2243
    :cond_331
    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v3}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v3

    if-nez v3, :cond_f4

    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz v3, :cond_f4

    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    instance-of v3, v3, Lorg/telegram/tgnet/TLRPC$TL_chatParticipantsForbidden;

    if-nez v3, :cond_f4

    .line 2244
    iget v3, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    iput v3, p0, Lorg/telegram/ui/ProfileActivity;->addMemberRow:I

    .line 2245
    iget v3, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    iput v3, p0, Lorg/telegram/ui/ProfileActivity;->emptyRowChat2:I

    .line 2246
    iget v3, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    iget-object v4, p0, Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    .line 2247
    iget v3, p0, Lorg/telegram/ui/ProfileActivity;->rowCount:I

    iput v3, p0, Lorg/telegram/ui/ProfileActivity;->membersEndRow:I

    goto/16 :goto_f4
.end method


# virtual methods
.method public allowCaption()Z
    .registers 2

    .prologue
    .line 1893
    const/4 v0, 0x1

    return v0
.end method

.method public cancelButtonPressed()Z
    .registers 2

    .prologue
    .line 1968
    const/4 v0, 0x1

    return v0
.end method

.method protected createActionBar(Landroid/content/Context;)Lorg/telegram/ui/ActionBar/ActionBar;
    .registers 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 363
    new-instance v0, Lorg/telegram/ui/ProfileActivity$3;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/ProfileActivity$3;-><init>(Lorg/telegram/ui/ProfileActivity;Landroid/content/Context;)V

    .line 369
    .local v0, "actionBar":Lorg/telegram/ui/ActionBar/ActionBar;
    iget v1, p0, Lorg/telegram/ui/ProfileActivity;->user_id:I

    if-nez v1, :cond_19

    iget v1, p0, Lorg/telegram/ui/ProfileActivity;->chat_id:I

    invoke-static {v1}, Lorg/telegram/messenger/ChatObject;->isChannel(I)Z

    move-result v1

    if-eqz v1, :cond_52

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez v1, :cond_52

    :cond_19
    const/4 v1, 0x5

    :goto_1a
    invoke-static {v1}, Lorg/telegram/ui/Components/AvatarDrawable;->getButtonColorForId(I)I

    move-result v1

    invoke-virtual {v0, v1, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsBackgroundColor(IZ)V

    .line 370
    const-string v1, "actionBarDefaultIcon"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsColor(IZ)V

    .line 371
    const-string v1, "actionBarActionModeDefaultIcon"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsColor(IZ)V

    .line 372
    new-instance v1, Lorg/telegram/ui/ActionBar/BackDrawable;

    invoke-direct {v1, v3}, Lorg/telegram/ui/ActionBar/BackDrawable;-><init>(Z)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 373
    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setCastShadows(Z)V

    .line 374
    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setAddToContainer(Z)V

    .line 375
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v1, v4, :cond_55

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v1

    if-nez v1, :cond_55

    move v1, v2

    :goto_4e
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setOccupyStatusBar(Z)V

    .line 376
    return-object v0

    .line 369
    :cond_52
    iget v1, p0, Lorg/telegram/ui/ProfileActivity;->chat_id:I

    goto :goto_1a

    :cond_55
    move v1, v3

    .line 375
    goto :goto_4e
.end method

.method public createView(Landroid/content/Context;)Landroid/view/View;
    .registers 19
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 381
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/ActionBar/Theme;->createProfileResources(Landroid/content/Context;)V

    .line 383
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/ProfileActivity;->hasOwnBackground:Z

    .line 384
    const/high16 v2, 0x42b00000    # 88.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/ProfileActivity;->extraHeight:I

    .line 385
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ProfileActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v3, Lorg/telegram/ui/ProfileActivity$4;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/ProfileActivity$4;-><init>(Lorg/telegram/ui/ProfileActivity;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 562
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/ProfileActivity;->createActionBarMenu()V

    .line 564
    new-instance v2, Lorg/telegram/ui/ProfileActivity$ListAdapter;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v2, v0, v1}, Lorg/telegram/ui/ProfileActivity$ListAdapter;-><init>(Lorg/telegram/ui/ProfileActivity;Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/ProfileActivity;->listAdapter:Lorg/telegram/ui/ProfileActivity$ListAdapter;

    .line 565
    new-instance v2, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v2}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/ProfileActivity;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    .line 566
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ProfileActivity;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/AvatarDrawable;->setProfile(Z)V

    .line 568
    new-instance v2, Lorg/telegram/ui/ProfileActivity$5;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v2, v0, v1}, Lorg/telegram/ui/ProfileActivity$5;-><init>(Lorg/telegram/ui/ProfileActivity;Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/ProfileActivity;->fragmentView:Landroid/view/View;

    .line 580
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/ProfileActivity;->fragmentView:Landroid/view/View;

    check-cast v13, Landroid/widget/FrameLayout;

    .line 582
    .local v13, "frameLayout":Landroid/widget/FrameLayout;
    new-instance v2, Lorg/telegram/ui/ProfileActivity$6;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v2, v0, v1}, Lorg/telegram/ui/ProfileActivity$6;-><init>(Lorg/telegram/ui/ProfileActivity;Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/ProfileActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 588
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ProfileActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v3, 0x6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setTag(Ljava/lang/Object;)V

    .line 589
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ProfileActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v3, 0x0

    const/high16 v4, 0x42b00000    # 88.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Lorg/telegram/ui/Components/RecyclerListView;->setPadding(IIII)V

    .line 590
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ProfileActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const-string v3, "windowBackgroundWhite"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setBackgroundColor(I)V

    .line 591
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ProfileActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setVerticalScrollBarEnabled(Z)V

    .line 592
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ProfileActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setItemAnimator(Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator;)V

    .line 593
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ProfileActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    .line 594
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ProfileActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setClipToPadding(Z)V

    .line 595
    new-instance v2, Lorg/telegram/ui/ProfileActivity$7;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v2, v0, v1}, Lorg/telegram/ui/ProfileActivity$7;-><init>(Lorg/telegram/ui/ProfileActivity;Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/ProfileActivity;->layoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    .line 601
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ProfileActivity;->layoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->setOrientation(I)V

    .line 602
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ProfileActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ProfileActivity;->layoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setLayoutManager(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;)V

    .line 603
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ProfileActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/ProfileActivity;->user_id:I

    if-nez v2, :cond_e6

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/ProfileActivity;->chat_id:I

    invoke-static {v2}, Lorg/telegram/messenger/ChatObject;->isChannel(I)Z

    move-result v2

    if-eqz v2, :cond_1c2

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez v2, :cond_1c2

    :cond_e6
    const/4 v2, 0x5

    :goto_e7
    invoke-static {v2}, Lorg/telegram/ui/Components/AvatarDrawable;->getProfileBackColorForId(I)I

    move-result v2

    invoke-virtual {v3, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setGlowColor(I)V

    .line 604
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ProfileActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/16 v5, 0x33

    invoke-static {v3, v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v13, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 606
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ProfileActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ProfileActivity;->listAdapter:Lorg/telegram/ui/ProfileActivity$ListAdapter;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;)V

    .line 607
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ProfileActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v3, Lorg/telegram/ui/ProfileActivity$8;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/ProfileActivity$8;-><init>(Lorg/telegram/ui/ProfileActivity;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    .line 808
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ProfileActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v3, Lorg/telegram/ui/ProfileActivity$9;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/ProfileActivity$9;-><init>(Lorg/telegram/ui/ProfileActivity;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemLongClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListener;)V

    .line 916
    new-instance v2, Lorg/telegram/ui/ProfileActivity$TopView;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v2, v0, v1}, Lorg/telegram/ui/ProfileActivity$TopView;-><init>(Lorg/telegram/ui/ProfileActivity;Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/ProfileActivity;->topView:Lorg/telegram/ui/ProfileActivity$TopView;

    .line 917
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ProfileActivity;->topView:Lorg/telegram/ui/ProfileActivity$TopView;

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/ProfileActivity;->user_id:I

    if-nez v2, :cond_14d

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/ProfileActivity;->chat_id:I

    invoke-static {v2}, Lorg/telegram/messenger/ChatObject;->isChannel(I)Z

    move-result v2

    if-eqz v2, :cond_1c8

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez v2, :cond_1c8

    :cond_14d
    const/4 v2, 0x5

    :goto_14e
    invoke-static {v2}, Lorg/telegram/ui/Components/AvatarDrawable;->getProfileBackColorForId(I)I

    move-result v2

    invoke-virtual {v3, v2}, Lorg/telegram/ui/ProfileActivity$TopView;->setBackgroundColor(I)V

    .line 918
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ProfileActivity;->topView:Lorg/telegram/ui/ProfileActivity$TopView;

    invoke-virtual {v13, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 920
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ProfileActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v13, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 922
    new-instance v2, Lorg/telegram/ui/Components/BackupImageView;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/ProfileActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    .line 923
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ProfileActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    const/high16 v3, 0x41a80000    # 21.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/BackupImageView;->setRoundRadius(I)V

    .line 924
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ProfileActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/BackupImageView;->setPivotX(F)V

    .line 925
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ProfileActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/BackupImageView;->setPivotY(F)V

    .line 926
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    move-object/from16 v16, v0

    const/16 v2, 0x2a

    const/high16 v3, 0x42280000    # 42.0f

    const/16 v4, 0x33

    const/high16 v5, 0x42800000    # 64.0f

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v13, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 927
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ProfileActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    new-instance v3, Lorg/telegram/ui/ProfileActivity$10;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/ProfileActivity$10;-><init>(Lorg/telegram/ui/ProfileActivity;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/BackupImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 946
    const/4 v9, 0x0

    .local v9, "a":I
    :goto_1b4
    const/4 v2, 0x2

    if-ge v9, v2, :cond_2f2

    .line 947
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/ProfileActivity;->playProfileAnimation:Z

    if-nez v2, :cond_1cd

    if-nez v9, :cond_1cd

    .line 946
    :goto_1bf
    add-int/lit8 v9, v9, 0x1

    goto :goto_1b4

    .line 603
    .end local v9    # "a":I
    :cond_1c2
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/ProfileActivity;->chat_id:I

    goto/16 :goto_e7

    .line 917
    :cond_1c8
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/ProfileActivity;->chat_id:I

    goto :goto_14e

    .line 950
    .restart local v9    # "a":I
    :cond_1cd
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ProfileActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    new-instance v3, Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-object/from16 v0, p1

    invoke-direct {v3, v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;-><init>(Landroid/content/Context;)V

    aput-object v3, v2, v9

    .line 951
    const/4 v2, 0x1

    if-ne v9, v2, :cond_2cf

    .line 952
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ProfileActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v2, v2, v9

    const-string v3, "profile_title"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 956
    :goto_1ec
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ProfileActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v2, v2, v9

    const/16 v3, 0x12

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextSize(I)V

    .line 957
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ProfileActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v2, v2, v9

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setGravity(I)V

    .line 958
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ProfileActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v2, v2, v9

    const-string v3, "fonts/rmedium.ttf"

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 959
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ProfileActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v2, v2, v9

    const v3, 0x3fa66666

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    neg-int v3, v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setLeftDrawableTopPadding(I)V

    .line 960
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ProfileActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v2, v2, v9

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setPivotX(F)V

    .line 961
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ProfileActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v2, v2, v9

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setPivotY(F)V

    .line 962
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ProfileActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v3, v2, v9

    if-nez v9, :cond_2e0

    const/4 v2, 0x0

    :goto_23e
    invoke-virtual {v3, v2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setAlpha(F)V

    .line 963
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ProfileActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v16, v2, v9

    const/4 v2, -0x2

    const/high16 v3, -0x40000000    # -2.0f

    const/16 v4, 0x33

    const/high16 v5, 0x42ec0000    # 118.0f

    const/4 v6, 0x0

    if-nez v9, :cond_2e4

    const/high16 v7, 0x42400000    # 48.0f

    :goto_253
    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v13, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 965
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ProfileActivity;->onlineTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    new-instance v3, Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-object/from16 v0, p1

    invoke-direct {v3, v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;-><init>(Landroid/content/Context;)V

    aput-object v3, v2, v9

    .line 966
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ProfileActivity;->onlineTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v3, v2, v9

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/ProfileActivity;->user_id:I

    if-nez v2, :cond_288

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/ProfileActivity;->chat_id:I

    invoke-static {v2}, Lorg/telegram/messenger/ChatObject;->isChannel(I)Z

    move-result v2

    if-eqz v2, :cond_2e7

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez v2, :cond_2e7

    :cond_288
    const/4 v2, 0x5

    :goto_289
    invoke-static {v2}, Lorg/telegram/ui/Components/AvatarDrawable;->getProfileTextColorForId(I)I

    move-result v2

    invoke-virtual {v3, v2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 967
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ProfileActivity;->onlineTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v2, v2, v9

    const/16 v3, 0xe

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextSize(I)V

    .line 968
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ProfileActivity;->onlineTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v2, v2, v9

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setGravity(I)V

    .line 969
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ProfileActivity;->onlineTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v3, v2, v9

    if-nez v9, :cond_2ec

    const/4 v2, 0x0

    :goto_2ae
    invoke-virtual {v3, v2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setAlpha(F)V

    .line 970
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ProfileActivity;->onlineTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v16, v2, v9

    const/4 v2, -0x2

    const/high16 v3, -0x40000000    # -2.0f

    const/16 v4, 0x33

    const/high16 v5, 0x42ec0000    # 118.0f

    const/4 v6, 0x0

    if-nez v9, :cond_2ef

    const/high16 v7, 0x42400000    # 48.0f

    :goto_2c3
    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v13, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1bf

    .line 954
    :cond_2cf
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ProfileActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v2, v2, v9

    const-string v3, "actionBarDefaultTitle"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    goto/16 :goto_1ec

    .line 962
    :cond_2e0
    const/high16 v2, 0x3f800000    # 1.0f

    goto/16 :goto_23e

    .line 963
    :cond_2e4
    const/4 v7, 0x0

    goto/16 :goto_253

    .line 966
    :cond_2e7
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/ProfileActivity;->chat_id:I

    goto :goto_289

    .line 969
    :cond_2ec
    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_2ae

    .line 970
    :cond_2ef
    const/high16 v7, 0x41000000    # 8.0f

    goto :goto_2c3

    .line 973
    :cond_2f2
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/ProfileActivity;->user_id:I

    if-nez v2, :cond_312

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/ProfileActivity;->chat_id:I

    if-ltz v2, :cond_463

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v2}, Lorg/telegram/messenger/ChatObject;->isLeftFromChat(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v2

    if-eqz v2, :cond_312

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v2}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v2

    if-eqz v2, :cond_463

    .line 974
    :cond_312
    new-instance v2, Landroid/widget/ImageView;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/ProfileActivity;->writeButton:Landroid/widget/ImageView;

    .line 975
    const/high16 v2, 0x42600000    # 56.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    const-string v3, "profile_actionBackground"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    const-string v4, "profile_actionPressedBackground"

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    invoke-static {v2, v3, v4}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorCircleDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    .line 976
    .local v12, "drawable":Landroid/graphics/drawable/Drawable;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-ge v2, v3, :cond_36b

    .line 977
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0200d0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v15

    .line 978
    .local v15, "shadowDrawable":Landroid/graphics/drawable/Drawable;
    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    const/high16 v3, -0x1000000

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v15, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 979
    new-instance v11, Lorg/telegram/ui/Components/CombinedDrawable;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v11, v15, v12, v2, v3}, Lorg/telegram/ui/Components/CombinedDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;II)V

    .line 980
    .local v11, "combinedDrawable":Lorg/telegram/ui/Components/CombinedDrawable;
    const/high16 v2, 0x42600000    # 56.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    const/high16 v3, 0x42600000    # 56.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {v11, v2, v3}, Lorg/telegram/ui/Components/CombinedDrawable;->setIconSize(II)V

    .line 981
    move-object v12, v11

    .line 983
    .end local v11    # "combinedDrawable":Lorg/telegram/ui/Components/CombinedDrawable;
    .end local v15    # "shadowDrawable":Landroid/graphics/drawable/Drawable;
    :cond_36b
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ProfileActivity;->writeButton:Landroid/widget/ImageView;

    invoke-virtual {v2, v12}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 984
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ProfileActivity;->writeButton:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 985
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ProfileActivity;->writeButton:Landroid/widget/ImageView;

    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    const-string v4, "profile_actionIcon"

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 986
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/ProfileActivity;->user_id:I

    if-eqz v2, :cond_479

    .line 987
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ProfileActivity;->writeButton:Landroid/widget/ImageView;

    const v3, 0x7f0200cd

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 988
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ProfileActivity;->writeButton:Landroid/widget/ImageView;

    const/4 v3, 0x0

    const/high16 v4, 0x40400000    # 3.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 998
    :cond_3af
    :goto_3af
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->writeButton:Landroid/widget/ImageView;

    move-object/from16 v16, v0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_4e3

    const/16 v2, 0x38

    :goto_3bd
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_4e7

    const/high16 v3, 0x42600000    # 56.0f

    :goto_3c5
    const/16 v4, 0x35

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x41800000    # 16.0f

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v13, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 999
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_455

    .line 1000
    new-instance v10, Landroid/animation/StateListAnimator;

    invoke-direct {v10}, Landroid/animation/StateListAnimator;-><init>()V

    .line 1001
    .local v10, "animator":Landroid/animation/StateListAnimator;
    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const v4, 0x10100a7

    aput v4, v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ProfileActivity;->writeButton:Landroid/widget/ImageView;

    const-string v4, "translationZ"

    const/4 v5, 0x2

    new-array v5, v5, [F

    const/4 v6, 0x0

    const/high16 v7, 0x40000000    # 2.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    aput v7, v5, v6

    const/4 v6, 0x1

    const/high16 v7, 0x40800000    # 4.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    aput v7, v5, v6

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    const-wide/16 v4, 0xc8

    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v10, v2, v3}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    .line 1002
    const/4 v2, 0x0

    new-array v2, v2, [I

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ProfileActivity;->writeButton:Landroid/widget/ImageView;

    const-string v4, "translationZ"

    const/4 v5, 0x2

    new-array v5, v5, [F

    const/4 v6, 0x0

    const/high16 v7, 0x40800000    # 4.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    aput v7, v5, v6

    const/4 v6, 0x1

    const/high16 v7, 0x40000000    # 2.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    aput v7, v5, v6

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    const-wide/16 v4, 0xc8

    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v10, v2, v3}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    .line 1003
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ProfileActivity;->writeButton:Landroid/widget/ImageView;

    invoke-virtual {v2, v10}, Landroid/widget/ImageView;->setStateListAnimator(Landroid/animation/StateListAnimator;)V

    .line 1004
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ProfileActivity;->writeButton:Landroid/widget/ImageView;

    new-instance v3, Lorg/telegram/ui/ProfileActivity$11;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/ProfileActivity$11;-><init>(Lorg/telegram/ui/ProfileActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 1012
    .end local v10    # "animator":Landroid/animation/StateListAnimator;
    :cond_455
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ProfileActivity;->writeButton:Landroid/widget/ImageView;

    new-instance v3, Lorg/telegram/ui/ProfileActivity$12;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/ProfileActivity$12;-><init>(Lorg/telegram/ui/ProfileActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1078
    .end local v12    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_463
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/ProfileActivity;->needLayout()V

    .line 1080
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ProfileActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v3, Lorg/telegram/ui/ProfileActivity$13;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/ProfileActivity$13;-><init>(Lorg/telegram/ui/ProfileActivity;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setOnScrollListener(Lorg/telegram/messenger/support/widget/RecyclerView$OnScrollListener;)V

    .line 1090
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ProfileActivity;->fragmentView:Landroid/view/View;

    return-object v2

    .line 989
    .restart local v12    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_479
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/ProfileActivity;->chat_id:I

    if-eqz v2, :cond_3af

    .line 990
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v2}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v14

    .line 991
    .local v14, "isChannel":Z
    if-eqz v14, :cond_4a1

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    if-nez v2, :cond_4a1

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v2, :cond_4bb

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->editor:Z

    if-eqz v2, :cond_4bb

    :cond_4a1
    if-nez v14, :cond_4d7

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->admin:Z

    if-nez v2, :cond_4d7

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    if-nez v2, :cond_4d7

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->admins_enabled:Z

    if-eqz v2, :cond_4d7

    .line 992
    :cond_4bb
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ProfileActivity;->writeButton:Landroid/widget/ImageView;

    const v3, 0x7f0200cd

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 993
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ProfileActivity;->writeButton:Landroid/widget/ImageView;

    const/4 v3, 0x0

    const/high16 v4, 0x40400000    # 3.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/ImageView;->setPadding(IIII)V

    goto/16 :goto_3af

    .line 995
    :cond_4d7
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ProfileActivity;->writeButton:Landroid/widget/ImageView;

    const v3, 0x7f0200cc

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_3af

    .line 998
    .end local v14    # "isChannel":Z
    :cond_4e3
    const/16 v2, 0x3c

    goto/16 :goto_3bd

    :cond_4e7
    const/high16 v3, 0x42700000    # 60.0f

    goto/16 :goto_3c5
.end method

.method public varargs didReceivedNotification(I[Ljava/lang/Object;)V
    .registers 33
    .param p1, "id"    # I
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 1480
    sget v23, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    move/from16 v0, p1

    move/from16 v1, v23

    if-ne v0, v1, :cond_123

    .line 1481
    const/16 v23, 0x0

    aget-object v23, p2, v23

    check-cast v23, Ljava/lang/Integer;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v19

    .line 1482
    .local v19, "mask":I
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ProfileActivity;->user_id:I

    move/from16 v23, v0

    if-eqz v23, :cond_67

    .line 1483
    and-int/lit8 v23, v19, 0x2

    if-nez v23, :cond_26

    and-int/lit8 v23, v19, 0x1

    if-nez v23, :cond_26

    and-int/lit8 v23, v19, 0x4

    if-eqz v23, :cond_29

    .line 1484
    :cond_26
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/ProfileActivity;->updateProfileData()V

    .line 1486
    :cond_29
    move/from16 v0, v19

    and-int/lit16 v0, v0, 0x400

    move/from16 v23, v0

    if-eqz v23, :cond_66

    .line 1487
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v23, v0

    if-eqz v23, :cond_66

    .line 1488
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ProfileActivity;->phoneRow:I

    move/from16 v26, v0

    move-object/from16 v0, v23

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->findViewHolderForPosition(I)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    move-result-object v16

    check-cast v16, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    .line 1489
    .local v16, "holder":Lorg/telegram/ui/Components/RecyclerListView$Holder;
    if-eqz v16, :cond_66

    .line 1490
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->listAdapter:Lorg/telegram/ui/ProfileActivity$ListAdapter;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ProfileActivity;->phoneRow:I

    move/from16 v26, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ProfileActivity$ListAdapter;->onBindViewHolder(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;I)V

    .line 1656
    .end local v16    # "holder":Lorg/telegram/ui/Components/RecyclerListView$Holder;
    .end local v19    # "mask":I
    :cond_66
    :goto_66
    return-void

    .line 1494
    .restart local v19    # "mask":I
    :cond_67
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ProfileActivity;->chat_id:I

    move/from16 v23, v0

    if-eqz v23, :cond_66

    .line 1495
    move/from16 v0, v19

    and-int/lit16 v0, v0, 0x4000

    move/from16 v23, v0

    if-eqz v23, :cond_ac

    .line 1496
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v23

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ProfileActivity;->chat_id:I

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v20

    .line 1497
    .local v20, "newChat":Lorg/telegram/tgnet/TLRPC$Chat;
    if-eqz v20, :cond_ac

    .line 1498
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    .line 1499
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/ProfileActivity;->createActionBarMenu()V

    .line 1500
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/ProfileActivity;->updateRowsIds()V

    .line 1501
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->listAdapter:Lorg/telegram/ui/ProfileActivity$ListAdapter;

    move-object/from16 v23, v0

    if-eqz v23, :cond_ac

    .line 1502
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->listAdapter:Lorg/telegram/ui/ProfileActivity$ListAdapter;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lorg/telegram/ui/ProfileActivity$ListAdapter;->notifyDataSetChanged()V

    .line 1506
    .end local v20    # "newChat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_ac
    move/from16 v0, v19

    and-int/lit16 v0, v0, 0x2000

    move/from16 v23, v0

    if-nez v23, :cond_c4

    and-int/lit8 v23, v19, 0x8

    if-nez v23, :cond_c4

    and-int/lit8 v23, v19, 0x10

    if-nez v23, :cond_c4

    and-int/lit8 v23, v19, 0x20

    if-nez v23, :cond_c4

    and-int/lit8 v23, v19, 0x4

    if-eqz v23, :cond_ca

    .line 1507
    :cond_c4
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/ProfileActivity;->updateOnlineCount()V

    .line 1508
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/ProfileActivity;->updateProfileData()V

    .line 1510
    :cond_ca
    move/from16 v0, v19

    and-int/lit16 v0, v0, 0x2000

    move/from16 v23, v0

    if-eqz v23, :cond_e6

    .line 1511
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/ProfileActivity;->updateRowsIds()V

    .line 1512
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->listAdapter:Lorg/telegram/ui/ProfileActivity$ListAdapter;

    move-object/from16 v23, v0

    if-eqz v23, :cond_e6

    .line 1513
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->listAdapter:Lorg/telegram/ui/ProfileActivity$ListAdapter;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lorg/telegram/ui/ProfileActivity$ListAdapter;->notifyDataSetChanged()V

    .line 1516
    :cond_e6
    and-int/lit8 v23, v19, 0x2

    if-nez v23, :cond_f2

    and-int/lit8 v23, v19, 0x1

    if-nez v23, :cond_f2

    and-int/lit8 v23, v19, 0x4

    if-eqz v23, :cond_66

    .line 1517
    :cond_f2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v23, v0

    if-eqz v23, :cond_66

    .line 1518
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lorg/telegram/ui/Components/RecyclerListView;->getChildCount()I

    move-result v13

    .line 1519
    .local v13, "count":I
    const/4 v6, 0x0

    .local v6, "a":I
    :goto_105
    if-ge v6, v13, :cond_66

    .line 1520
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Lorg/telegram/ui/Components/RecyclerListView;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 1521
    .local v12, "child":Landroid/view/View;
    instance-of v0, v12, Lorg/telegram/ui/Cells/UserCell;

    move/from16 v23, v0

    if-eqz v23, :cond_120

    .line 1522
    check-cast v12, Lorg/telegram/ui/Cells/UserCell;

    .end local v12    # "child":Landroid/view/View;
    move/from16 v0, v19

    invoke-virtual {v12, v0}, Lorg/telegram/ui/Cells/UserCell;->update(I)V

    .line 1519
    :cond_120
    add-int/lit8 v6, v6, 0x1

    goto :goto_105

    .line 1528
    .end local v6    # "a":I
    .end local v13    # "count":I
    .end local v19    # "mask":I
    :cond_123
    sget v23, Lorg/telegram/messenger/NotificationCenter;->contactsDidLoaded:I

    move/from16 v0, p1

    move/from16 v1, v23

    if-ne v0, v1, :cond_130

    .line 1529
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/ProfileActivity;->createActionBarMenu()V

    goto/16 :goto_66

    .line 1530
    :cond_130
    sget v23, Lorg/telegram/messenger/NotificationCenter;->mediaCountDidLoaded:I

    move/from16 v0, p1

    move/from16 v1, v23

    if-ne v0, v1, :cond_201

    .line 1531
    const/16 v23, 0x0

    aget-object v23, p2, v23

    check-cast v23, Ljava/lang/Long;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Long;->longValue()J

    move-result-wide v24

    .line 1532
    .local v24, "uid":J
    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/telegram/ui/ProfileActivity;->dialog_id:J

    .line 1533
    .local v14, "did":J
    const-wide/16 v26, 0x0

    cmp-long v23, v14, v26

    if-nez v23, :cond_15d

    .line 1534
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ProfileActivity;->user_id:I

    move/from16 v23, v0

    if-eqz v23, :cond_1d5

    .line 1535
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ProfileActivity;->user_id:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-long v14, v0

    .line 1540
    :cond_15d
    :goto_15d
    cmp-long v23, v24, v14

    if-eqz v23, :cond_16b

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/ui/ProfileActivity;->mergeDialogId:J

    move-wide/from16 v26, v0

    cmp-long v23, v24, v26

    if-nez v23, :cond_66

    .line 1541
    :cond_16b
    cmp-long v23, v24, v14

    if-nez v23, :cond_1ed

    .line 1542
    const/16 v23, 0x1

    aget-object v23, p2, v23

    check-cast v23, Ljava/lang/Integer;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/ProfileActivity;->totalMediaCount:I

    .line 1546
    :goto_17f
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v23, v0

    if-eqz v23, :cond_66

    .line 1547
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lorg/telegram/ui/Components/RecyclerListView;->getChildCount()I

    move-result v13

    .line 1548
    .restart local v13    # "count":I
    const/4 v6, 0x0

    .restart local v6    # "a":I
    :goto_192
    if-ge v6, v13, :cond_66

    .line 1549
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Lorg/telegram/ui/Components/RecyclerListView;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 1550
    .restart local v12    # "child":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v12}, Lorg/telegram/ui/Components/RecyclerListView;->getChildViewHolder(Landroid/view/View;)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    move-result-object v16

    check-cast v16, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    .line 1551
    .restart local v16    # "holder":Lorg/telegram/ui/Components/RecyclerListView$Holder;
    invoke-virtual/range {v16 .. v16}, Lorg/telegram/ui/Components/RecyclerListView$Holder;->getAdapterPosition()I

    move-result v23

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ProfileActivity;->sharedMediaRow:I

    move/from16 v26, v0

    move/from16 v0, v23

    move/from16 v1, v26

    if-ne v0, v1, :cond_1fe

    .line 1552
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->listAdapter:Lorg/telegram/ui/ProfileActivity$ListAdapter;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ProfileActivity;->sharedMediaRow:I

    move/from16 v26, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ProfileActivity$ListAdapter;->onBindViewHolder(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;I)V

    goto/16 :goto_66

    .line 1536
    .end local v6    # "a":I
    .end local v12    # "child":Landroid/view/View;
    .end local v13    # "count":I
    .end local v16    # "holder":Lorg/telegram/ui/Components/RecyclerListView$Holder;
    :cond_1d5
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ProfileActivity;->chat_id:I

    move/from16 v23, v0

    if-eqz v23, :cond_15d

    .line 1537
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ProfileActivity;->chat_id:I

    move/from16 v23, v0

    move/from16 v0, v23

    neg-int v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-long v14, v0

    goto/16 :goto_15d

    .line 1544
    :cond_1ed
    const/16 v23, 0x1

    aget-object v23, p2, v23

    check-cast v23, Ljava/lang/Integer;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/ProfileActivity;->totalMediaCountMerge:I

    goto :goto_17f

    .line 1548
    .restart local v6    # "a":I
    .restart local v12    # "child":Landroid/view/View;
    .restart local v13    # "count":I
    .restart local v16    # "holder":Lorg/telegram/ui/Components/RecyclerListView$Holder;
    :cond_1fe
    add-int/lit8 v6, v6, 0x1

    goto :goto_192

    .line 1558
    .end local v6    # "a":I
    .end local v12    # "child":Landroid/view/View;
    .end local v13    # "count":I
    .end local v14    # "did":J
    .end local v16    # "holder":Lorg/telegram/ui/Components/RecyclerListView$Holder;
    .end local v24    # "uid":J
    :cond_201
    sget v23, Lorg/telegram/messenger/NotificationCenter;->encryptedChatCreated:I

    move/from16 v0, p1

    move/from16 v1, v23

    if-ne v0, v1, :cond_221

    .line 1559
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/ui/ProfileActivity;->creatingChat:Z

    move/from16 v23, v0

    if-eqz v23, :cond_66

    .line 1560
    new-instance v23, Lorg/telegram/ui/ProfileActivity$22;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/ProfileActivity$22;-><init>(Lorg/telegram/ui/ProfileActivity;[Ljava/lang/Object;)V

    invoke-static/range {v23 .. v23}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto/16 :goto_66

    .line 1572
    :cond_221
    sget v23, Lorg/telegram/messenger/NotificationCenter;->encryptedChatUpdated:I

    move/from16 v0, p1

    move/from16 v1, v23

    if-ne v0, v1, :cond_267

    .line 1573
    const/16 v23, 0x0

    aget-object v10, p2, v23

    check-cast v10, Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    .line 1574
    .local v10, "chat":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->currentEncryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    move-object/from16 v23, v0

    if-eqz v23, :cond_66

    iget v0, v10, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->id:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->currentEncryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->id:I

    move/from16 v26, v0

    move/from16 v0, v23

    move/from16 v1, v26

    if-ne v0, v1, :cond_66

    .line 1575
    move-object/from16 v0, p0

    iput-object v10, v0, Lorg/telegram/ui/ProfileActivity;->currentEncryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    .line 1576
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/ProfileActivity;->updateRowsIds()V

    .line 1577
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->listAdapter:Lorg/telegram/ui/ProfileActivity$ListAdapter;

    move-object/from16 v23, v0

    if-eqz v23, :cond_66

    .line 1578
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->listAdapter:Lorg/telegram/ui/ProfileActivity$ListAdapter;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lorg/telegram/ui/ProfileActivity$ListAdapter;->notifyDataSetChanged()V

    goto/16 :goto_66

    .line 1581
    .end local v10    # "chat":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    :cond_267
    sget v23, Lorg/telegram/messenger/NotificationCenter;->blockedUsersDidLoaded:I

    move/from16 v0, p1

    move/from16 v1, v23

    if-ne v0, v1, :cond_2a8

    .line 1582
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/ui/ProfileActivity;->userBlocked:Z

    move/from16 v22, v0

    .line 1583
    .local v22, "oldValue":Z
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v23

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->blockedUsers:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ProfileActivity;->user_id:I

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/telegram/ui/ProfileActivity;->userBlocked:Z

    .line 1584
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/ui/ProfileActivity;->userBlocked:Z

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_66

    .line 1585
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/ProfileActivity;->createActionBarMenu()V

    goto/16 :goto_66

    .line 1587
    .end local v22    # "oldValue":Z
    :cond_2a8
    sget v23, Lorg/telegram/messenger/NotificationCenter;->chatInfoDidLoaded:I

    move/from16 v0, p1

    move/from16 v1, v23

    if-ne v0, v1, :cond_3bd

    .line 1588
    const/16 v23, 0x0

    aget-object v11, p2, v23

    check-cast v11, Lorg/telegram/tgnet/TLRPC$ChatFull;

    .line 1589
    .local v11, "chatFull":Lorg/telegram/tgnet/TLRPC$ChatFull;
    iget v0, v11, Lorg/telegram/tgnet/TLRPC$ChatFull;->id:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ProfileActivity;->chat_id:I

    move/from16 v26, v0

    move/from16 v0, v23

    move/from16 v1, v26

    if-ne v0, v1, :cond_66

    .line 1590
    const/16 v23, 0x2

    aget-object v23, p2, v23

    check-cast v23, Ljava/lang/Boolean;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    .line 1591
    .local v9, "byChannelUsers":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_channelFull;

    move/from16 v23, v0

    if-eqz v23, :cond_2fc

    .line 1592
    iget-object v0, v11, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    move-object/from16 v23, v0

    if-nez v23, :cond_2fc

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-object/from16 v23, v0

    if-eqz v23, :cond_2fc

    .line 1593
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iput-object v0, v11, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    .line 1596
    :cond_2fc
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-object/from16 v23, v0

    if-nez v23, :cond_3b9

    instance-of v0, v11, Lorg/telegram/tgnet/TLRPC$TL_channelFull;

    move/from16 v23, v0

    if-eqz v23, :cond_3b9

    const/16 v18, 0x1

    .line 1597
    .local v18, "loadChannelParticipants":Z
    :goto_30c
    move-object/from16 v0, p0

    iput-object v11, v0, Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    .line 1598
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/ui/ProfileActivity;->mergeDialogId:J

    move-wide/from16 v26, v0

    const-wide/16 v28, 0x0

    cmp-long v23, v26, v28

    if-nez v23, :cond_361

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->migrated_from_chat_id:I

    move/from16 v23, v0

    if-eqz v23, :cond_361

    .line 1599
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->migrated_from_chat_id:I

    move/from16 v23, v0

    move/from16 v0, v23

    neg-int v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v26, v0

    move-wide/from16 v0, v26

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/telegram/ui/ProfileActivity;->mergeDialogId:J

    .line 1600
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/ui/ProfileActivity;->mergeDialogId:J

    move-wide/from16 v26, v0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ProfileActivity;->classGuid:I

    move/from16 v28, v0

    const/16 v29, 0x1

    move-wide/from16 v0, v26

    move/from16 v2, v23

    move/from16 v3, v28

    move/from16 v4, v29

    invoke-static {v0, v1, v2, v3, v4}, Lorg/telegram/messenger/query/SharedMediaQuery;->getMediaCount(JIIZ)V

    .line 1602
    :cond_361
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/ProfileActivity;->fetchUsersFromChannelInfo()V

    .line 1603
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/ProfileActivity;->updateOnlineCount()V

    .line 1604
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/ProfileActivity;->updateRowsIds()V

    .line 1605
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->listAdapter:Lorg/telegram/ui/ProfileActivity$ListAdapter;

    move-object/from16 v23, v0

    if-eqz v23, :cond_37b

    .line 1606
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->listAdapter:Lorg/telegram/ui/ProfileActivity$ListAdapter;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lorg/telegram/ui/ProfileActivity$ListAdapter;->notifyDataSetChanged()V

    .line 1608
    :cond_37b
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v23

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ProfileActivity;->chat_id:I

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v20

    .line 1609
    .restart local v20    # "newChat":Lorg/telegram/tgnet/TLRPC$Chat;
    if-eqz v20, :cond_39c

    .line 1610
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    .line 1611
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/ProfileActivity;->createActionBarMenu()V

    .line 1613
    :cond_39c
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    move/from16 v23, v0

    if-eqz v23, :cond_66

    if-nez v18, :cond_3ae

    if-nez v9, :cond_66

    .line 1614
    :cond_3ae
    const/16 v23, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1}, Lorg/telegram/ui/ProfileActivity;->getChannelParticipants(Z)V

    goto/16 :goto_66

    .line 1596
    .end local v18    # "loadChannelParticipants":Z
    .end local v20    # "newChat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_3b9
    const/16 v18, 0x0

    goto/16 :goto_30c

    .line 1617
    .end local v9    # "byChannelUsers":Z
    .end local v11    # "chatFull":Lorg/telegram/tgnet/TLRPC$ChatFull;
    :cond_3bd
    sget v23, Lorg/telegram/messenger/NotificationCenter;->closeChats:I

    move/from16 v0, p1

    move/from16 v1, v23

    if-ne v0, v1, :cond_3ca

    .line 1618
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ProfileActivity;->removeSelfFromStack()V

    goto/16 :goto_66

    .line 1619
    :cond_3ca
    sget v23, Lorg/telegram/messenger/NotificationCenter;->botInfoDidLoaded:I

    move/from16 v0, p1

    move/from16 v1, v23

    if-ne v0, v1, :cond_406

    .line 1620
    const/16 v23, 0x0

    aget-object v17, p2, v23

    check-cast v17, Lorg/telegram/tgnet/TLRPC$BotInfo;

    .line 1621
    .local v17, "info":Lorg/telegram/tgnet/TLRPC$BotInfo;
    move-object/from16 v0, v17

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$BotInfo;->user_id:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ProfileActivity;->user_id:I

    move/from16 v26, v0

    move/from16 v0, v23

    move/from16 v1, v26

    if-ne v0, v1, :cond_66

    .line 1622
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/ProfileActivity;->botInfo:Lorg/telegram/tgnet/TLRPC$BotInfo;

    .line 1623
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/ProfileActivity;->updateRowsIds()V

    .line 1624
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->listAdapter:Lorg/telegram/ui/ProfileActivity$ListAdapter;

    move-object/from16 v23, v0

    if-eqz v23, :cond_66

    .line 1625
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->listAdapter:Lorg/telegram/ui/ProfileActivity$ListAdapter;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lorg/telegram/ui/ProfileActivity$ListAdapter;->notifyDataSetChanged()V

    goto/16 :goto_66

    .line 1628
    .end local v17    # "info":Lorg/telegram/tgnet/TLRPC$BotInfo;
    :cond_406
    sget v23, Lorg/telegram/messenger/NotificationCenter;->userInfoDidLoaded:I

    move/from16 v0, p1

    move/from16 v1, v23

    if-ne v0, v1, :cond_456

    .line 1629
    const/16 v23, 0x0

    aget-object v23, p2, v23

    check-cast v23, Ljava/lang/Integer;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v24

    .line 1630
    .local v24, "uid":I
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ProfileActivity;->user_id:I

    move/from16 v23, v0

    move/from16 v0, v24

    move/from16 v1, v23

    if-ne v0, v1, :cond_66

    .line 1631
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/ui/ProfileActivity;->openAnimationInProgress:Z

    move/from16 v23, v0

    if-nez v23, :cond_44d

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->callItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-object/from16 v23, v0

    if-nez v23, :cond_44d

    .line 1632
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/ProfileActivity;->createActionBarMenu()V

    .line 1636
    :goto_437
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/ProfileActivity;->updateRowsIds()V

    .line 1637
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->listAdapter:Lorg/telegram/ui/ProfileActivity$ListAdapter;

    move-object/from16 v23, v0

    if-eqz v23, :cond_66

    .line 1638
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->listAdapter:Lorg/telegram/ui/ProfileActivity$ListAdapter;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lorg/telegram/ui/ProfileActivity$ListAdapter;->notifyDataSetChanged()V

    goto/16 :goto_66

    .line 1634
    :cond_44d
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/telegram/ui/ProfileActivity;->recreateMenuAfterAnimation:Z

    goto :goto_437

    .line 1641
    .end local v24    # "uid":I
    :cond_456
    sget v23, Lorg/telegram/messenger/NotificationCenter;->didReceivedNewMessages:I

    move/from16 v0, p1

    move/from16 v1, v23

    if-ne v0, v1, :cond_66

    .line 1642
    const/16 v23, 0x0

    aget-object v23, p2, v23

    check-cast v23, Ljava/lang/Long;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    .line 1643
    .restart local v14    # "did":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/ui/ProfileActivity;->dialog_id:J

    move-wide/from16 v26, v0

    cmp-long v23, v14, v26

    if-nez v23, :cond_66

    .line 1644
    const/16 v23, 0x1

    aget-object v8, p2, v23

    check-cast v8, Ljava/util/ArrayList;

    .line 1645
    .local v8, "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    const/4 v6, 0x0

    .restart local v6    # "a":I
    :goto_479
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v23

    move/from16 v0, v23

    if-ge v6, v0, :cond_66

    .line 1646
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lorg/telegram/messenger/MessageObject;

    .line 1647
    .local v21, "obj":Lorg/telegram/messenger/MessageObject;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->currentEncryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    move-object/from16 v23, v0

    if-eqz v23, :cond_4ee

    move-object/from16 v0, v21

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v23, v0

    if-eqz v23, :cond_4ee

    move-object/from16 v0, v21

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageEncryptedAction;

    move/from16 v23, v0

    if-eqz v23, :cond_4ee

    move-object/from16 v0, v21

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageAction;->encryptedAction:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionSetMessageTTL;

    move/from16 v23, v0

    if-eqz v23, :cond_4ee

    .line 1648
    move-object/from16 v0, v21

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v7, v0, Lorg/telegram/tgnet/TLRPC$MessageAction;->encryptedAction:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    check-cast v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionSetMessageTTL;

    .line 1649
    .local v7, "action":Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionSetMessageTTL;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->listAdapter:Lorg/telegram/ui/ProfileActivity$ListAdapter;

    move-object/from16 v23, v0

    if-eqz v23, :cond_4ee

    .line 1650
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->listAdapter:Lorg/telegram/ui/ProfileActivity$ListAdapter;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lorg/telegram/ui/ProfileActivity$ListAdapter;->notifyDataSetChanged()V

    .line 1645
    .end local v7    # "action":Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionSetMessageTTL;
    :cond_4ee
    add-int/lit8 v6, v6, 0x1

    goto :goto_479
.end method

.method public didSelectDialog(Lorg/telegram/ui/DialogsActivity;JZ)V
    .registers 15
    .param p1, "fragment"    # Lorg/telegram/ui/DialogsActivity;
    .param p2, "dialog_id"    # J
    .param p4, "param"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2503
    const-wide/16 v2, 0x0

    cmp-long v0, p2, v2

    if-eqz v0, :cond_22

    .line 2504
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 2505
    .local v7, "args":Landroid/os/Bundle;
    const-string v0, "scrollToTopOnResume"

    invoke-virtual {v7, v0, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2506
    long-to-int v8, p2

    .line 2507
    .local v8, "lower_part":I
    if-eqz v8, :cond_2c

    .line 2508
    if-lez v8, :cond_23

    .line 2509
    const-string v0, "user_id"

    invoke-virtual {v7, v0, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2516
    :cond_1c
    :goto_1c
    invoke-static {v7, p1}, Lorg/telegram/messenger/MessagesController;->checkCanOpenChat(Landroid/os/Bundle;Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    move-result v0

    if-nez v0, :cond_37

    .line 2527
    .end local v7    # "args":Landroid/os/Bundle;
    .end local v8    # "lower_part":I
    :cond_22
    :goto_22
    return-void

    .line 2510
    .restart local v7    # "args":Landroid/os/Bundle;
    .restart local v8    # "lower_part":I
    :cond_23
    if-gez v8, :cond_1c

    .line 2511
    const-string v0, "chat_id"

    neg-int v2, v8

    invoke-virtual {v7, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1c

    .line 2514
    :cond_2c
    const-string v0, "enc_id"

    const/16 v2, 0x20

    shr-long v2, p2, v2

    long-to-int v2, v2

    invoke-virtual {v7, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1c

    .line 2520
    :cond_37
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/NotificationCenter;->closeChats:I

    invoke-virtual {v0, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 2521
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/NotificationCenter;->closeChats:I

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 2522
    new-instance v0, Lorg/telegram/ui/ChatActivity;

    invoke-direct {v0, v7}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {p0, v0, v5}, Lorg/telegram/ui/ProfileActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;Z)Z

    .line 2523
    invoke-virtual {p0}, Lorg/telegram/ui/ProfileActivity;->removeSelfFromStack()V

    .line 2524
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget v2, p0, Lorg/telegram/ui/ProfileActivity;->user_id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v1

    .line 2525
    .local v1, "user":Lorg/telegram/tgnet/TLRPC$User;
    invoke-static {}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance()Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v0

    move-wide v2, p2

    move-object v5, v4

    move-object v6, v4

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Lorg/telegram/tgnet/TLRPC$User;JLorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;)V

    goto :goto_22
.end method

.method public getAnimationProgress()F
    .registers 2

    .prologue
    .line 1696
    iget v0, p0, Lorg/telegram/ui/ProfileActivity;->animationProgress:F

    return v0
.end method

.method public getPlaceForPhoto(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$FileLocation;I)Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;
    .registers 14
    .param p1, "messageObject"    # Lorg/telegram/messenger/MessageObject;
    .param p2, "fileLocation"    # Lorg/telegram/tgnet/TLRPC$FileLocation;
    .param p3, "index"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 1903
    if-nez p2, :cond_5

    .line 1940
    :cond_4
    :goto_4
    return-object v2

    .line 1907
    :cond_5
    const/4 v3, 0x0

    .line 1908
    .local v3, "photoBig":Lorg/telegram/tgnet/TLRPC$FileLocation;
    iget v6, p0, Lorg/telegram/ui/ProfileActivity;->user_id:I

    if-eqz v6, :cond_91

    .line 1909
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    iget v7, p0, Lorg/telegram/ui/ProfileActivity;->user_id:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v4

    .line 1910
    .local v4, "user":Lorg/telegram/tgnet/TLRPC$User;
    if-eqz v4, :cond_28

    iget-object v6, v4, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    if-eqz v6, :cond_28

    iget-object v6, v4, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_big:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v6, :cond_28

    .line 1911
    iget-object v6, v4, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    iget-object v3, v6, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_big:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 1921
    .end local v4    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_28
    :goto_28
    if-eqz v3, :cond_4

    iget v6, v3, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    iget v7, p2, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    if-ne v6, v7, :cond_4

    iget-wide v6, v3, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    iget-wide v8, p2, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    cmp-long v6, v6, v8

    if-nez v6, :cond_4

    iget v6, v3, Lorg/telegram/tgnet/TLRPC$FileLocation;->dc_id:I

    iget v7, p2, Lorg/telegram/tgnet/TLRPC$FileLocation;->dc_id:I

    if-ne v6, v7, :cond_4

    .line 1922
    const/4 v6, 0x2

    new-array v1, v6, [I

    .line 1923
    .local v1, "coords":[I
    iget-object v6, p0, Lorg/telegram/ui/ProfileActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v6, v1}, Lorg/telegram/ui/Components/BackupImageView;->getLocationInWindow([I)V

    .line 1924
    new-instance v2, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;

    invoke-direct {v2}, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;-><init>()V

    .line 1925
    .local v2, "object":Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;
    aget v6, v1, v5

    iput v6, v2, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->viewX:I

    .line 1926
    const/4 v6, 0x1

    aget v6, v1, v6

    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x15

    if-lt v7, v8, :cond_b5

    :goto_58
    sub-int v5, v6, v5

    iput v5, v2, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->viewY:I

    .line 1927
    iget-object v5, p0, Lorg/telegram/ui/ProfileActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    iput-object v5, v2, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->parentView:Landroid/view/View;

    .line 1928
    iget-object v5, p0, Lorg/telegram/ui/ProfileActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v5

    iput-object v5, v2, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    .line 1929
    iget v5, p0, Lorg/telegram/ui/ProfileActivity;->user_id:I

    if-eqz v5, :cond_b8

    .line 1930
    iget v5, p0, Lorg/telegram/ui/ProfileActivity;->user_id:I

    iput v5, v2, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->dialogId:I

    .line 1934
    :cond_70
    :goto_70
    iget-object v5, v2, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v5}, Lorg/telegram/messenger/ImageReceiver;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, v2, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->thumb:Landroid/graphics/Bitmap;

    .line 1935
    const/4 v5, -0x1

    iput v5, v2, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->size:I

    .line 1936
    iget-object v5, p0, Lorg/telegram/ui/ProfileActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/messenger/ImageReceiver;->getRoundRadius()I

    move-result v5

    iput v5, v2, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->radius:I

    .line 1937
    iget-object v5, p0, Lorg/telegram/ui/ProfileActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/BackupImageView;->getScaleX()F

    move-result v5

    iput v5, v2, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->scale:F

    goto/16 :goto_4

    .line 1913
    .end local v1    # "coords":[I
    .end local v2    # "object":Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;
    :cond_91
    iget v6, p0, Lorg/telegram/ui/ProfileActivity;->chat_id:I

    if-eqz v6, :cond_28

    .line 1914
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    iget v7, p0, Lorg/telegram/ui/ProfileActivity;->chat_id:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    .line 1915
    .local v0, "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    if-eqz v0, :cond_28

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    if-eqz v6, :cond_28

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$ChatPhoto;->photo_big:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v6, :cond_28

    .line 1916
    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    iget-object v3, v6, Lorg/telegram/tgnet/TLRPC$ChatPhoto;->photo_big:Lorg/telegram/tgnet/TLRPC$FileLocation;

    goto/16 :goto_28

    .line 1926
    .end local v0    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    .restart local v1    # "coords":[I
    .restart local v2    # "object":Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;
    :cond_b5
    sget v5, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    goto :goto_58

    .line 1931
    :cond_b8
    iget v5, p0, Lorg/telegram/ui/ProfileActivity;->chat_id:I

    if-eqz v5, :cond_70

    .line 1932
    iget v5, p0, Lorg/telegram/ui/ProfileActivity;->chat_id:I

    neg-int v5, v5

    iput v5, v2, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->dialogId:I

    goto :goto_70
.end method

.method public getSelectedCount()I
    .registers 2

    .prologue
    .line 1977
    const/4 v0, 0x0

    return v0
.end method

.method public getThemeDescriptions()[Lorg/telegram/ui/ActionBar/ThemeDescription;
    .registers 13

    .prologue
    .line 2890
    new-instance v9, Lorg/telegram/ui/ProfileActivity$26;

    invoke-direct {v9, p0}, Lorg/telegram/ui/ProfileActivity$26;-><init>(Lorg/telegram/ui/ProfileActivity;)V

    .line 2902
    .local v9, "\u0441ellDelegate":Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;
    const/16 v0, 0x5c

    new-array v10, v0, [Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v8, 0x0

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "windowBackgroundWhite"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/4 v8, 0x1

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SUBMENUBACKGROUND:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "actionBarDefaultSubmenuBackground"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/4 v8, 0x2

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SUBMENUITEM:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "actionBarDefaultSubmenuItem"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/4 v8, 0x3

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "avatar_backgroundActionBarBlue"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/4 v8, 0x4

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LISTGLOWCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "avatar_backgroundActionBarBlue"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/4 v8, 0x5

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity;->topView:Lorg/telegram/ui/ProfileActivity$TopView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "avatar_backgroundActionBarBlue"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/4 v8, 0x6

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SELECTORCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "avatar_actionBarSelectorBlue"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/4 v8, 0x7

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "profile_title"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x8

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity;->onlineTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "avatar_subtitleInProfileBlue"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x9

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "avatar_backgroundActionBarRed"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0xa

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LISTGLOWCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "avatar_backgroundActionBarRed"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0xb

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity;->topView:Lorg/telegram/ui/ProfileActivity$TopView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "avatar_backgroundActionBarRed"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0xc

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SELECTORCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "avatar_actionBarSelectorRed"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0xd

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity;->onlineTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "avatar_subtitleInProfileRed"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0xe

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_ITEMSCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "avatar_actionBarIconRed"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0xf

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "avatar_backgroundActionBarOrange"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x10

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LISTGLOWCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "avatar_backgroundActionBarOrange"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x11

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity;->topView:Lorg/telegram/ui/ProfileActivity$TopView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "avatar_backgroundActionBarOrange"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x12

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SELECTORCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "avatar_actionBarSelectorOrange"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x13

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity;->onlineTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "avatar_subtitleInProfileOrange"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x14

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_ITEMSCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "avatar_actionBarIconOrange"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x15

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "avatar_backgroundActionBarViolet"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x16

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LISTGLOWCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "avatar_backgroundActionBarViolet"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x17

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity;->topView:Lorg/telegram/ui/ProfileActivity$TopView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "avatar_backgroundActionBarViolet"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x18

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SELECTORCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "avatar_actionBarSelectorViolet"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x19

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity;->onlineTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "avatar_subtitleInProfileViolet"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x1a

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_ITEMSCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "avatar_actionBarIconViolet"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x1b

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "avatar_backgroundActionBarGreen"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x1c

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LISTGLOWCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "avatar_backgroundActionBarGreen"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x1d

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity;->topView:Lorg/telegram/ui/ProfileActivity$TopView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "avatar_backgroundActionBarGreen"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x1e

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SELECTORCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "avatar_actionBarSelectorGreen"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x1f

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity;->onlineTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "avatar_subtitleInProfileGreen"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x20

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_ITEMSCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "avatar_actionBarIconGreen"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x21

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "avatar_backgroundActionBarCyan"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x22

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LISTGLOWCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "avatar_backgroundActionBarCyan"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x23

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity;->topView:Lorg/telegram/ui/ProfileActivity$TopView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "avatar_backgroundActionBarCyan"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x24

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SELECTORCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "avatar_actionBarSelectorCyan"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x25

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity;->onlineTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "avatar_subtitleInProfileCyan"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x26

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_ITEMSCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "avatar_actionBarIconCyan"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x27

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "avatar_backgroundActionBarPink"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x28

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LISTGLOWCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "avatar_backgroundActionBarPink"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x29

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity;->topView:Lorg/telegram/ui/ProfileActivity$TopView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "avatar_backgroundActionBarPink"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x2a

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SELECTORCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "avatar_actionBarSelectorPink"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x2b

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity;->onlineTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "avatar_subtitleInProfilePink"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x2c

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_ITEMSCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "avatar_actionBarIconPink"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x2d

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "listSelectorSDK21"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x2e

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

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

    const/16 v8, 0x2f

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

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

    const/16 v8, 0x30

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

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

    const/4 v6, 0x0

    const-string v7, "avatar_text"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x31

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Landroid/graphics/drawable/Drawable;

    const/4 v6, 0x0

    iget-object v7, p0, Lorg/telegram/ui/ProfileActivity;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const-string v7, "avatar_backgroundInProfileRed"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x32

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Landroid/graphics/drawable/Drawable;

    const/4 v6, 0x0

    iget-object v7, p0, Lorg/telegram/ui/ProfileActivity;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const-string v7, "avatar_backgroundInProfileOrange"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x33

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Landroid/graphics/drawable/Drawable;

    const/4 v6, 0x0

    iget-object v7, p0, Lorg/telegram/ui/ProfileActivity;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const-string v7, "avatar_backgroundInProfileViolet"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x34

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Landroid/graphics/drawable/Drawable;

    const/4 v6, 0x0

    iget-object v7, p0, Lorg/telegram/ui/ProfileActivity;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const-string v7, "avatar_backgroundInProfileGreen"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x35

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Landroid/graphics/drawable/Drawable;

    const/4 v6, 0x0

    iget-object v7, p0, Lorg/telegram/ui/ProfileActivity;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const-string v7, "avatar_backgroundInProfileCyan"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x36

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Landroid/graphics/drawable/Drawable;

    const/4 v6, 0x0

    iget-object v7, p0, Lorg/telegram/ui/ProfileActivity;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const-string v7, "avatar_backgroundInProfileBlue"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x37

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Landroid/graphics/drawable/Drawable;

    const/4 v6, 0x0

    iget-object v7, p0, Lorg/telegram/ui/ProfileActivity;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const-string v7, "avatar_backgroundInProfilePink"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x38

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity;->writeButton:Landroid/widget/ImageView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_IMAGECOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "profile_actionIcon"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x39

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity;->writeButton:Landroid/widget/ImageView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "profile_actionBackground"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x3a

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity;->writeButton:Landroid/widget/ImageView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_DRAWABLESELECTEDSTATE:I

    or-int/2addr v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "profile_actionPressedBackground"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v11, 0x3b

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

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

    const/16 v11, 0x3c

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

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

    const-string v8, "windowBackgroundWhiteGreenText2"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v11

    const/16 v11, 0x3d

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

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

    const-string v8, "windowBackgroundWhiteRedText5"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v11

    const/16 v11, 0x3e

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/TextCell;

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

    const/16 v11, 0x3f

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

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

    const/16 v11, 0x40

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/TextDetailCell;

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

    const/16 v11, 0x41

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/TextDetailCell;

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

    const/16 v11, 0x42

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/TextDetailCell;

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

    const/16 v11, 0x43

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/UserCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "adminImage"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "profile_creatorIcon"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v11

    const/16 v11, 0x44

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/UserCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "adminImage"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "profile_adminIcon"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v11

    const/16 v11, 0x45

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

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

    const/16 v11, 0x46

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

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

    const/16 v11, 0x47

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

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

    const/16 v8, 0x48

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

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

    const/16 v8, 0x49

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

    const/16 v8, 0x4a

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

    const/16 v8, 0x4b

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

    const/16 v8, 0x4c

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

    const/16 v8, 0x4d

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

    const/16 v8, 0x4e

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

    const/16 v8, 0x4f

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

    const/16 v11, 0x50

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

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

    const/16 v11, 0x51

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/AboutLinkCell;

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

    const/16 v8, 0x52

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/AboutLinkCell;

    aput-object v5, v3, v4

    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->profile_aboutTextPaint:Landroid/text/TextPaint;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "windowBackgroundWhiteBlackText"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x53

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LINKCOLOR:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/AboutLinkCell;

    aput-object v5, v3, v4

    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->profile_aboutTextPaint:Landroid/text/TextPaint;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "windowBackgroundWhiteLinkText"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x54

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/AboutLinkCell;

    aput-object v5, v3, v4

    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->linkSelectionPaint:Landroid/graphics/Paint;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "windowBackgroundWhiteLinkSelection"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x55

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

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

    const/16 v8, 0x56

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CELLBACKGROUNDCOLOR:I

    or-int/2addr v2, v3

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/ShadowSectionCell;

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "windowBackgroundGray"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x57

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

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

    const/16 v8, 0x58

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CELLBACKGROUNDCOLOR:I

    or-int/2addr v2, v3

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "windowBackgroundGray"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v11, 0x59

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

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

    const/16 v8, 0x5a

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Landroid/graphics/drawable/Drawable;

    const/4 v6, 0x0

    sget-object v7, Lorg/telegram/ui/ActionBar/Theme;->profile_verifiedCheckDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const-string v7, "profile_verifiedCheck"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x5b

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Landroid/graphics/drawable/Drawable;

    const/4 v6, 0x0

    sget-object v7, Lorg/telegram/ui/ActionBar/Theme;->profile_verifiedDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const-string v7, "profile_verifiedBackground"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    return-object v10
.end method

.method public getThumbForPhoto(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$FileLocation;I)Landroid/graphics/Bitmap;
    .registers 5
    .param p1, "messageObject"    # Lorg/telegram/messenger/MessageObject;
    .param p2, "fileLocation"    # Lorg/telegram/tgnet/TLRPC$FileLocation;
    .param p3, "index"    # I

    .prologue
    .line 1945
    const/4 v0, 0x0

    return-object v0
.end method

.method public isChat()Z
    .registers 2

    .prologue
    .line 2111
    iget v0, p0, Lorg/telegram/ui/ProfileActivity;->chat_id:I

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isPhotoChecked(I)Z
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 1959
    const/4 v0, 0x0

    return v0
.end method

.method public onActivityResultFragment(IILandroid/content/Intent;)V
    .registers 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 1240
    iget v0, p0, Lorg/telegram/ui/ProfileActivity;->chat_id:I

    if-eqz v0, :cond_9

    .line 1241
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity;->avatarUpdater:Lorg/telegram/ui/Components/AvatarUpdater;

    invoke-virtual {v0, p1, p2, p3}, Lorg/telegram/ui/Components/AvatarUpdater;->onActivityResult(IILandroid/content/Intent;)V

    .line 1243
    :cond_9
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 1473
    invoke-super {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1474
    invoke-direct {p0}, Lorg/telegram/ui/ProfileActivity;->fixLayout()V

    .line 1475
    return-void
.end method

.method protected onCustomTransitionAnimation(ZLjava/lang/Runnable;)Landroid/animation/AnimatorSet;
    .registers 15
    .param p1, "isOpen"    # Z
    .param p2, "callback"    # Ljava/lang/Runnable;

    .prologue
    .line 1781
    iget-boolean v7, p0, Lorg/telegram/ui/ProfileActivity;->playProfileAnimation:Z

    if-eqz v7, :cond_2bf

    iget-boolean v7, p0, Lorg/telegram/ui/ProfileActivity;->allowProfileAnimation:Z

    if-eqz v7, :cond_2bf

    .line 1782
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1783
    .local v1, "animatorSet":Landroid/animation/AnimatorSet;
    const-wide/16 v8, 0xb4

    invoke-virtual {v1, v8, v9}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1784
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0xf

    if-le v7, v8, :cond_1f

    .line 1785
    iget-object v7, p0, Lorg/telegram/ui/ProfileActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v8, 0x2

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Lorg/telegram/ui/Components/RecyclerListView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 1787
    :cond_1f
    iget-object v7, p0, Lorg/telegram/ui/ProfileActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v7}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v4

    .line 1788
    .local v4, "menu":Lorg/telegram/ui/ActionBar/ActionBarMenu;
    const/16 v7, 0xa

    invoke-virtual {v4, v7}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->getItem(I)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v7

    if-nez v7, :cond_3c

    .line 1789
    iget-object v7, p0, Lorg/telegram/ui/ProfileActivity;->animatingItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-nez v7, :cond_3c

    .line 1790
    const/16 v7, 0xa

    const v8, 0x7f0200e7

    invoke-virtual {v4, v7, v8}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(II)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v7

    iput-object v7, p0, Lorg/telegram/ui/ProfileActivity;->animatingItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 1793
    :cond_3c
    if-eqz p1, :cond_1f1

    .line 1794
    iget-object v7, p0, Lorg/telegram/ui/ProfileActivity;->onlineTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v8, 0x1

    aget-object v7, v7, v8

    invoke-virtual {v7}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 1795
    .local v3, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    const/high16 v7, -0x3e580000    # -21.0f

    sget v8, Lorg/telegram/messenger/AndroidUtilities;->density:F

    mul-float/2addr v7, v8

    const/high16 v8, 0x41000000    # 8.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v7, v8

    float-to-int v7, v7

    iput v7, v3, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 1796
    iget-object v7, p0, Lorg/telegram/ui/ProfileActivity;->onlineTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v8, 0x1

    aget-object v7, v7, v8

    invoke-virtual {v7, v3}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1798
    sget-object v7, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->x:I

    const/high16 v8, 0x42fc0000    # 126.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    sub-int/2addr v7, v8

    int-to-float v7, v7

    const/high16 v8, 0x41a80000    # 21.0f

    sget v9, Lorg/telegram/messenger/AndroidUtilities;->density:F

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    float-to-double v8, v7

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v5, v8

    .line 1799
    .local v5, "width":I
    iget-object v7, p0, Lorg/telegram/ui/ProfileActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v8, 0x1

    aget-object v7, v7, v8

    invoke-virtual {v7}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getPaint()Landroid/graphics/Paint;

    move-result-object v7

    iget-object v8, p0, Lorg/telegram/ui/ProfileActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v9, 0x1

    aget-object v8, v8, v9

    invoke-virtual {v8}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v7

    const v8, 0x3f8f5c29

    mul-float/2addr v7, v8

    iget-object v8, p0, Lorg/telegram/ui/ProfileActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v9, 0x1

    aget-object v8, v8, v9

    invoke-virtual {v8}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getSideDrawablesSize()I

    move-result v8

    int-to-float v8, v8

    add-float v6, v7, v8

    .line 1800
    .local v6, "width2":F
    iget-object v7, p0, Lorg/telegram/ui/ProfileActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v8, 0x1

    aget-object v7, v7, v8

    invoke-virtual {v7}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .end local v3    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 1801
    .restart local v3    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    int-to-float v7, v5

    cmpg-float v7, v7, v6

    if-gez v7, :cond_18a

    .line 1802
    int-to-float v7, v5

    const v8, 0x3f8f5c29

    div-float/2addr v7, v8

    float-to-double v8, v7

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v7, v8

    iput v7, v3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1806
    :goto_c0
    iget-object v7, p0, Lorg/telegram/ui/ProfileActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v8, 0x1

    aget-object v7, v7, v8

    invoke-virtual {v7, v3}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1808
    const/high16 v7, 0x42b00000    # 88.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    iput v7, p0, Lorg/telegram/ui/ProfileActivity;->initialAnimationExtraHeight:I

    .line 1809
    iget-object v7, p0, Lorg/telegram/ui/ProfileActivity;->fragmentView:Landroid/view/View;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1810
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lorg/telegram/ui/ProfileActivity;->setAnimationProgress(F)V

    .line 1811
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1812
    .local v2, "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    const-string v7, "animationProgress"

    const/4 v8, 0x2

    new-array v8, v8, [F

    fill-array-data v8, :array_2c2

    invoke-static {p0, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1813
    iget-object v7, p0, Lorg/telegram/ui/ProfileActivity;->writeButton:Landroid/widget/ImageView;

    if-eqz v7, :cond_141

    .line 1814
    iget-object v7, p0, Lorg/telegram/ui/ProfileActivity;->writeButton:Landroid/widget/ImageView;

    const v8, 0x3e4ccccd

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 1815
    iget-object v7, p0, Lorg/telegram/ui/ProfileActivity;->writeButton:Landroid/widget/ImageView;

    const v8, 0x3e4ccccd

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 1816
    iget-object v7, p0, Lorg/telegram/ui/ProfileActivity;->writeButton:Landroid/widget/ImageView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 1817
    iget-object v7, p0, Lorg/telegram/ui/ProfileActivity;->writeButton:Landroid/widget/ImageView;

    const-string v8, "scaleX"

    const/4 v9, 0x1

    new-array v9, v9, [F

    const/4 v10, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    aput v11, v9, v10

    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1818
    iget-object v7, p0, Lorg/telegram/ui/ProfileActivity;->writeButton:Landroid/widget/ImageView;

    const-string v8, "scaleY"

    const/4 v9, 0x1

    new-array v9, v9, [F

    const/4 v10, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    aput v11, v9, v10

    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1819
    iget-object v7, p0, Lorg/telegram/ui/ProfileActivity;->writeButton:Landroid/widget/ImageView;

    const-string v8, "alpha"

    const/4 v9, 0x1

    new-array v9, v9, [F

    const/4 v10, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    aput v11, v9, v10

    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1821
    :cond_141
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_142
    const/4 v7, 0x2

    if-ge v0, v7, :cond_199

    .line 1822
    iget-object v7, p0, Lorg/telegram/ui/ProfileActivity;->onlineTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v8, v7, v0

    if-nez v0, :cond_18f

    const/high16 v7, 0x3f800000    # 1.0f

    :goto_14d
    invoke-virtual {v8, v7}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setAlpha(F)V

    .line 1823
    iget-object v7, p0, Lorg/telegram/ui/ProfileActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v8, v7, v0

    if-nez v0, :cond_191

    const/high16 v7, 0x3f800000    # 1.0f

    :goto_158
    invoke-virtual {v8, v7}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setAlpha(F)V

    .line 1824
    iget-object v7, p0, Lorg/telegram/ui/ProfileActivity;->onlineTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v8, v7, v0

    const-string v9, "alpha"

    const/4 v7, 0x1

    new-array v10, v7, [F

    const/4 v11, 0x0

    if-nez v0, :cond_193

    const/4 v7, 0x0

    :goto_168
    aput v7, v10, v11

    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1825
    iget-object v7, p0, Lorg/telegram/ui/ProfileActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v8, v7, v0

    const-string v9, "alpha"

    const/4 v7, 0x1

    new-array v10, v7, [F

    const/4 v11, 0x0

    if-nez v0, :cond_196

    const/4 v7, 0x0

    :goto_17e
    aput v7, v10, v11

    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1821
    add-int/lit8 v0, v0, 0x1

    goto :goto_142

    .line 1804
    .end local v0    # "a":I
    .end local v2    # "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    :cond_18a
    const/4 v7, -0x2

    iput v7, v3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    goto/16 :goto_c0

    .line 1822
    .restart local v0    # "a":I
    .restart local v2    # "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    :cond_18f
    const/4 v7, 0x0

    goto :goto_14d

    .line 1823
    :cond_191
    const/4 v7, 0x0

    goto :goto_158

    .line 1824
    :cond_193
    const/high16 v7, 0x3f800000    # 1.0f

    goto :goto_168

    .line 1825
    :cond_196
    const/high16 v7, 0x3f800000    # 1.0f

    goto :goto_17e

    .line 1827
    :cond_199
    iget-object v7, p0, Lorg/telegram/ui/ProfileActivity;->animatingItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz v7, :cond_1b6

    .line 1828
    iget-object v7, p0, Lorg/telegram/ui/ProfileActivity;->animatingItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual {v7, v8}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setAlpha(F)V

    .line 1829
    iget-object v7, p0, Lorg/telegram/ui/ProfileActivity;->animatingItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const-string v8, "alpha"

    const/4 v9, 0x1

    new-array v9, v9, [F

    const/4 v10, 0x0

    const/4 v11, 0x0

    aput v11, v9, v10

    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1831
    :cond_1b6
    iget-object v7, p0, Lorg/telegram/ui/ProfileActivity;->callItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz v7, :cond_1d3

    .line 1832
    iget-object v7, p0, Lorg/telegram/ui/ProfileActivity;->callItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setAlpha(F)V

    .line 1833
    iget-object v7, p0, Lorg/telegram/ui/ProfileActivity;->callItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const-string v8, "alpha"

    const/4 v9, 0x1

    new-array v9, v9, [F

    const/4 v10, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    aput v11, v9, v10

    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1835
    :cond_1d3
    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 1859
    .end local v3    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .end local v5    # "width":I
    .end local v6    # "width2":F
    :goto_1d6
    new-instance v7, Lorg/telegram/ui/ProfileActivity$23;

    invoke-direct {v7, p0, p2}, Lorg/telegram/ui/ProfileActivity$23;-><init>(Lorg/telegram/ui/ProfileActivity;Ljava/lang/Runnable;)V

    invoke-virtual {v1, v7}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1873
    new-instance v7, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v7}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v7}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1875
    new-instance v7, Lorg/telegram/ui/ProfileActivity$24;

    invoke-direct {v7, p0, v1}, Lorg/telegram/ui/ProfileActivity$24;-><init>(Lorg/telegram/ui/ProfileActivity;Landroid/animation/AnimatorSet;)V

    const-wide/16 v8, 0x32

    invoke-static {v7, v8, v9}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 1883
    .end local v0    # "a":I
    .end local v1    # "animatorSet":Landroid/animation/AnimatorSet;
    .end local v2    # "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    .end local v4    # "menu":Lorg/telegram/ui/ActionBar/ActionBarMenu;
    :goto_1f0
    return-object v1

    .line 1837
    .restart local v1    # "animatorSet":Landroid/animation/AnimatorSet;
    .restart local v4    # "menu":Lorg/telegram/ui/ActionBar/ActionBarMenu;
    :cond_1f1
    iget v7, p0, Lorg/telegram/ui/ProfileActivity;->extraHeight:I

    iput v7, p0, Lorg/telegram/ui/ProfileActivity;->initialAnimationExtraHeight:I

    .line 1838
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1839
    .restart local v2    # "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    const-string v7, "animationProgress"

    const/4 v8, 0x2

    new-array v8, v8, [F

    fill-array-data v8, :array_2ca

    invoke-static {p0, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1840
    iget-object v7, p0, Lorg/telegram/ui/ProfileActivity;->writeButton:Landroid/widget/ImageView;

    if-eqz v7, :cond_247

    .line 1841
    iget-object v7, p0, Lorg/telegram/ui/ProfileActivity;->writeButton:Landroid/widget/ImageView;

    const-string v8, "scaleX"

    const/4 v9, 0x1

    new-array v9, v9, [F

    const/4 v10, 0x0

    const v11, 0x3e4ccccd

    aput v11, v9, v10

    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1842
    iget-object v7, p0, Lorg/telegram/ui/ProfileActivity;->writeButton:Landroid/widget/ImageView;

    const-string v8, "scaleY"

    const/4 v9, 0x1

    new-array v9, v9, [F

    const/4 v10, 0x0

    const v11, 0x3e4ccccd

    aput v11, v9, v10

    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1843
    iget-object v7, p0, Lorg/telegram/ui/ProfileActivity;->writeButton:Landroid/widget/ImageView;

    const-string v8, "alpha"

    const/4 v9, 0x1

    new-array v9, v9, [F

    const/4 v10, 0x0

    const/4 v11, 0x0

    aput v11, v9, v10

    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1845
    :cond_247
    const/4 v0, 0x0

    .restart local v0    # "a":I
    :goto_248
    const/4 v7, 0x2

    if-ge v0, v7, :cond_280

    .line 1846
    iget-object v7, p0, Lorg/telegram/ui/ProfileActivity;->onlineTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v8, v7, v0

    const-string v9, "alpha"

    const/4 v7, 0x1

    new-array v10, v7, [F

    const/4 v11, 0x0

    if-nez v0, :cond_27c

    const/high16 v7, 0x3f800000    # 1.0f

    :goto_259
    aput v7, v10, v11

    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1847
    iget-object v7, p0, Lorg/telegram/ui/ProfileActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v8, v7, v0

    const-string v9, "alpha"

    const/4 v7, 0x1

    new-array v10, v7, [F

    const/4 v11, 0x0

    if-nez v0, :cond_27e

    const/high16 v7, 0x3f800000    # 1.0f

    :goto_270
    aput v7, v10, v11

    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1845
    add-int/lit8 v0, v0, 0x1

    goto :goto_248

    .line 1846
    :cond_27c
    const/4 v7, 0x0

    goto :goto_259

    .line 1847
    :cond_27e
    const/4 v7, 0x0

    goto :goto_270

    .line 1849
    :cond_280
    iget-object v7, p0, Lorg/telegram/ui/ProfileActivity;->animatingItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz v7, :cond_29d

    .line 1850
    iget-object v7, p0, Lorg/telegram/ui/ProfileActivity;->animatingItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setAlpha(F)V

    .line 1851
    iget-object v7, p0, Lorg/telegram/ui/ProfileActivity;->animatingItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const-string v8, "alpha"

    const/4 v9, 0x1

    new-array v9, v9, [F

    const/4 v10, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    aput v11, v9, v10

    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1853
    :cond_29d
    iget-object v7, p0, Lorg/telegram/ui/ProfileActivity;->callItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz v7, :cond_2ba

    .line 1854
    iget-object v7, p0, Lorg/telegram/ui/ProfileActivity;->callItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual {v7, v8}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setAlpha(F)V

    .line 1855
    iget-object v7, p0, Lorg/telegram/ui/ProfileActivity;->callItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const-string v8, "alpha"

    const/4 v9, 0x1

    new-array v9, v9, [F

    const/4 v10, 0x0

    const/4 v11, 0x0

    aput v11, v9, v10

    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1857
    :cond_2ba
    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    goto/16 :goto_1d6

    .line 1883
    .end local v0    # "a":I
    .end local v1    # "animatorSet":Landroid/animation/AnimatorSet;
    .end local v2    # "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    .end local v4    # "menu":Lorg/telegram/ui/ActionBar/ActionBarMenu;
    :cond_2bf
    const/4 v1, 0x0

    goto/16 :goto_1f0

    .line 1812
    :array_2c2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 1839
    :array_2ca
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method protected onDialogDismiss(Landroid/app/Dialog;)V
    .registers 3
    .param p1, "dialog"    # Landroid/app/Dialog;

    .prologue
    .line 2496
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz v0, :cond_9

    .line 2497
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RecyclerListView;->invalidateViews()V

    .line 2499
    :cond_9
    return-void
.end method

.method public onFragmentCreate()Z
    .registers 13

    .prologue
    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 241
    iget-object v5, p0, Lorg/telegram/ui/ProfileActivity;->arguments:Landroid/os/Bundle;

    const-string v6, "user_id"

    invoke-virtual {v5, v6, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lorg/telegram/ui/ProfileActivity;->user_id:I

    .line 242
    invoke-virtual {p0}, Lorg/telegram/ui/ProfileActivity;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "chat_id"

    invoke-virtual {v5, v6, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lorg/telegram/ui/ProfileActivity;->chat_id:I

    .line 243
    iget v5, p0, Lorg/telegram/ui/ProfileActivity;->user_id:I

    if-eqz v5, :cond_104

    .line 244
    iget-object v5, p0, Lorg/telegram/ui/ProfileActivity;->arguments:Landroid/os/Bundle;

    const-string v6, "dialog_id"

    invoke-virtual {v5, v6, v10, v11}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, p0, Lorg/telegram/ui/ProfileActivity;->dialog_id:J

    .line 245
    iget-wide v6, p0, Lorg/telegram/ui/ProfileActivity;->dialog_id:J

    cmp-long v5, v6, v10

    if-eqz v5, :cond_43

    .line 246
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    iget-wide v6, p0, Lorg/telegram/ui/ProfileActivity;->dialog_id:J

    const/16 v8, 0x20

    shr-long/2addr v6, v8

    long-to-int v6, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/telegram/messenger/MessagesController;->getEncryptedChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    move-result-object v5

    iput-object v5, p0, Lorg/telegram/ui/ProfileActivity;->currentEncryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    .line 248
    :cond_43
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    iget v6, p0, Lorg/telegram/ui/ProfileActivity;->user_id:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    .line 249
    .local v2, "user":Lorg/telegram/tgnet/TLRPC$User;
    if-nez v2, :cond_54

    .line 335
    .end local v2    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_53
    :goto_53
    return v3

    .line 252
    .restart local v2    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_54
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v5

    sget v6, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    invoke-virtual {v5, p0, v6}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 253
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v5

    sget v6, Lorg/telegram/messenger/NotificationCenter;->contactsDidLoaded:I

    invoke-virtual {v5, p0, v6}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 254
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v5

    sget v6, Lorg/telegram/messenger/NotificationCenter;->encryptedChatCreated:I

    invoke-virtual {v5, p0, v6}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 255
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v5

    sget v6, Lorg/telegram/messenger/NotificationCenter;->encryptedChatUpdated:I

    invoke-virtual {v5, p0, v6}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 256
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v5

    sget v6, Lorg/telegram/messenger/NotificationCenter;->blockedUsersDidLoaded:I

    invoke-virtual {v5, p0, v6}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 257
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v5

    sget v6, Lorg/telegram/messenger/NotificationCenter;->botInfoDidLoaded:I

    invoke-virtual {v5, p0, v6}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 258
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v5

    sget v6, Lorg/telegram/messenger/NotificationCenter;->userInfoDidLoaded:I

    invoke-virtual {v5, p0, v6}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 259
    iget-object v5, p0, Lorg/telegram/ui/ProfileActivity;->currentEncryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    if-eqz v5, :cond_a0

    .line 260
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v5

    sget v6, Lorg/telegram/messenger/NotificationCenter;->didReceivedNewMessages:I

    invoke-virtual {v5, p0, v6}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 262
    :cond_a0
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    iget-object v5, v5, Lorg/telegram/messenger/MessagesController;->blockedUsers:Ljava/util/ArrayList;

    iget v6, p0, Lorg/telegram/ui/ProfileActivity;->user_id:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    iput-boolean v5, p0, Lorg/telegram/ui/ProfileActivity;->userBlocked:Z

    .line 263
    iget-boolean v5, v2, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-eqz v5, :cond_bd

    .line 264
    iget v5, v2, Lorg/telegram/tgnet/TLRPC$User;->id:I

    iget v6, p0, Lorg/telegram/ui/ProfileActivity;->classGuid:I

    invoke-static {v5, v4, v6}, Lorg/telegram/messenger/query/BotQuery;->loadBotInfo(IZI)V

    .line 266
    :cond_bd
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    iget v7, p0, Lorg/telegram/ui/ProfileActivity;->user_id:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v6

    iget v7, p0, Lorg/telegram/ui/ProfileActivity;->classGuid:I

    invoke-virtual {v5, v6, v7, v4}, Lorg/telegram/messenger/MessagesController;->loadFullUser(Lorg/telegram/tgnet/TLRPC$User;IZ)V

    .line 267
    iput-object v9, p0, Lorg/telegram/ui/ProfileActivity;->participantsMap:Ljava/util/HashMap;

    .line 319
    .end local v2    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_d6
    :goto_d6
    iget-wide v6, p0, Lorg/telegram/ui/ProfileActivity;->dialog_id:J

    cmp-long v5, v6, v10

    if-eqz v5, :cond_18e

    .line 320
    iget-wide v6, p0, Lorg/telegram/ui/ProfileActivity;->dialog_id:J

    iget v5, p0, Lorg/telegram/ui/ProfileActivity;->classGuid:I

    invoke-static {v6, v7, v3, v5, v4}, Lorg/telegram/messenger/query/SharedMediaQuery;->getMediaCount(JIIZ)V

    .line 330
    :cond_e3
    :goto_e3
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v3

    sget v5, Lorg/telegram/messenger/NotificationCenter;->mediaCountDidLoaded:I

    invoke-virtual {v3, p0, v5}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 331
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v3

    sget v5, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    invoke-virtual {v3, p0, v5}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 332
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v3

    sget v5, Lorg/telegram/messenger/NotificationCenter;->closeChats:I

    invoke-virtual {v3, p0, v5}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 333
    invoke-direct {p0}, Lorg/telegram/ui/ProfileActivity;->updateRowsIds()V

    move v3, v4

    .line 335
    goto/16 :goto_53

    .line 268
    :cond_104
    iget v5, p0, Lorg/telegram/ui/ProfileActivity;->chat_id:I

    if-eqz v5, :cond_53

    .line 269
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    iget v6, p0, Lorg/telegram/ui/ProfileActivity;->chat_id:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v5

    iput-object v5, p0, Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    .line 270
    iget-object v5, p0, Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-nez v5, :cond_141

    .line 271
    new-instance v1, Ljava/util/concurrent/Semaphore;

    invoke-direct {v1, v3}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    .line 272
    .local v1, "semaphore":Ljava/util/concurrent/Semaphore;
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v5

    new-instance v6, Lorg/telegram/ui/ProfileActivity$1;

    invoke-direct {v6, p0, v1}, Lorg/telegram/ui/ProfileActivity$1;-><init>(Lorg/telegram/ui/ProfileActivity;Ljava/util/concurrent/Semaphore;)V

    invoke-virtual {v5, v6}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 280
    :try_start_131
    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_134
    .catch Ljava/lang/Exception; {:try_start_131 .. :try_end_134} :catch_186

    .line 284
    :goto_134
    iget-object v5, p0, Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v5, :cond_53

    .line 285
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    iget-object v6, p0, Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-virtual {v5, v6, v4}, Lorg/telegram/messenger/MessagesController;->putChat(Lorg/telegram/tgnet/TLRPC$Chat;Z)V

    .line 291
    .end local v1    # "semaphore":Ljava/util/concurrent/Semaphore;
    :cond_141
    iget-object v5, p0, Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v5, v5, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v5, :cond_18b

    .line 292
    invoke-direct {p0, v4}, Lorg/telegram/ui/ProfileActivity;->getChannelParticipants(Z)V

    .line 296
    :goto_14a
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v5

    sget v6, Lorg/telegram/messenger/NotificationCenter;->chatInfoDidLoaded:I

    invoke-virtual {v5, p0, v6}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 298
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lorg/telegram/ui/ProfileActivity;->sortedUsers:Ljava/util/ArrayList;

    .line 299
    invoke-direct {p0}, Lorg/telegram/ui/ProfileActivity;->updateOnlineCount()V

    .line 301
    new-instance v5, Lorg/telegram/ui/Components/AvatarUpdater;

    invoke-direct {v5}, Lorg/telegram/ui/Components/AvatarUpdater;-><init>()V

    iput-object v5, p0, Lorg/telegram/ui/ProfileActivity;->avatarUpdater:Lorg/telegram/ui/Components/AvatarUpdater;

    .line 302
    iget-object v5, p0, Lorg/telegram/ui/ProfileActivity;->avatarUpdater:Lorg/telegram/ui/Components/AvatarUpdater;

    new-instance v6, Lorg/telegram/ui/ProfileActivity$2;

    invoke-direct {v6, p0}, Lorg/telegram/ui/ProfileActivity$2;-><init>(Lorg/telegram/ui/ProfileActivity;)V

    iput-object v6, v5, Lorg/telegram/ui/Components/AvatarUpdater;->delegate:Lorg/telegram/ui/Components/AvatarUpdater$AvatarUpdaterDelegate;

    .line 310
    iget-object v5, p0, Lorg/telegram/ui/ProfileActivity;->avatarUpdater:Lorg/telegram/ui/Components/AvatarUpdater;

    iput-object p0, v5, Lorg/telegram/ui/Components/AvatarUpdater;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 312
    iget-object v5, p0, Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v5}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v5

    if-eqz v5, :cond_d6

    .line 313
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    iget v6, p0, Lorg/telegram/ui/ProfileActivity;->chat_id:I

    iget v7, p0, Lorg/telegram/ui/ProfileActivity;->classGuid:I

    invoke-virtual {v5, v6, v7, v4}, Lorg/telegram/messenger/MessagesController;->loadFullChat(IIZ)V

    goto/16 :goto_d6

    .line 281
    .restart local v1    # "semaphore":Ljava/util/concurrent/Semaphore;
    :catch_186
    move-exception v0

    .line 282
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_134

    .line 294
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "semaphore":Ljava/util/concurrent/Semaphore;
    :cond_18b
    iput-object v9, p0, Lorg/telegram/ui/ProfileActivity;->participantsMap:Ljava/util/HashMap;

    goto :goto_14a

    .line 321
    :cond_18e
    iget v5, p0, Lorg/telegram/ui/ProfileActivity;->user_id:I

    if-eqz v5, :cond_19c

    .line 322
    iget v5, p0, Lorg/telegram/ui/ProfileActivity;->user_id:I

    int-to-long v6, v5

    iget v5, p0, Lorg/telegram/ui/ProfileActivity;->classGuid:I

    invoke-static {v6, v7, v3, v5, v4}, Lorg/telegram/messenger/query/SharedMediaQuery;->getMediaCount(JIIZ)V

    goto/16 :goto_e3

    .line 323
    :cond_19c
    iget v5, p0, Lorg/telegram/ui/ProfileActivity;->chat_id:I

    if-lez v5, :cond_e3

    .line 324
    iget v5, p0, Lorg/telegram/ui/ProfileActivity;->chat_id:I

    neg-int v5, v5

    int-to-long v6, v5

    iget v5, p0, Lorg/telegram/ui/ProfileActivity;->classGuid:I

    invoke-static {v6, v7, v3, v5, v4}, Lorg/telegram/messenger/query/SharedMediaQuery;->getMediaCount(JIIZ)V

    .line 325
    iget-wide v6, p0, Lorg/telegram/ui/ProfileActivity;->mergeDialogId:J

    cmp-long v5, v6, v10

    if-eqz v5, :cond_e3

    .line 326
    iget-wide v6, p0, Lorg/telegram/ui/ProfileActivity;->mergeDialogId:J

    iget v5, p0, Lorg/telegram/ui/ProfileActivity;->classGuid:I

    invoke-static {v6, v7, v3, v5, v4}, Lorg/telegram/messenger/query/SharedMediaQuery;->getMediaCount(JIIZ)V

    goto/16 :goto_e3
.end method

.method public onFragmentDestroy()V
    .registers 3

    .prologue
    .line 340
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    .line 341
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->mediaCountDidLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 342
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 343
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->closeChats:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 344
    iget v0, p0, Lorg/telegram/ui/ProfileActivity;->user_id:I

    if-eqz v0, :cond_6f

    .line 345
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->contactsDidLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 346
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->encryptedChatCreated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 347
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->encryptedChatUpdated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 348
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->blockedUsersDidLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 349
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->botInfoDidLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 350
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->userInfoDidLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 351
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/ProfileActivity;->user_id:I

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->cancelLoadFullUser(I)V

    .line 352
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity;->currentEncryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    if-eqz v0, :cond_6e

    .line 353
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->didReceivedNewMessages:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 359
    :cond_6e
    :goto_6e
    return-void

    .line 355
    :cond_6f
    iget v0, p0, Lorg/telegram/ui/ProfileActivity;->chat_id:I

    if-eqz v0, :cond_6e

    .line 356
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->chatInfoDidLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 357
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity;->avatarUpdater:Lorg/telegram/ui/Components/AvatarUpdater;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AvatarUpdater;->clear()V

    goto :goto_6e
.end method

.method public onRequestPermissionsResultFragment(I[Ljava/lang/String;[I)V
    .registers 8
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .prologue
    .line 2531
    const/16 v1, 0x65

    if-ne p1, v1, :cond_14

    .line 2532
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget v2, p0, Lorg/telegram/ui/ProfileActivity;->user_id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    .line 2533
    .local v0, "user":Lorg/telegram/tgnet/TLRPC$User;
    if-nez v0, :cond_15

    .line 2542
    .end local v0    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_14
    :goto_14
    return-void

    .line 2536
    .restart local v0    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_15
    array-length v1, p3

    if-lez v1, :cond_2f

    const/4 v1, 0x0

    aget v1, p3, v1

    if-nez v1, :cond_2f

    .line 2537
    invoke-virtual {p0}, Lorg/telegram/ui/ProfileActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget v3, v0, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MessagesController;->getUserFull(I)Lorg/telegram/tgnet/TLRPC$TL_userFull;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/Components/voip/VoIPHelper;->startCall(Lorg/telegram/tgnet/TLRPC$User;Landroid/app/Activity;Lorg/telegram/tgnet/TLRPC$TL_userFull;)V

    goto :goto_14

    .line 2539
    :cond_2f
    invoke-virtual {p0}, Lorg/telegram/ui/ProfileActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/voip/VoIPHelper;->permissionDenied(Landroid/app/Activity;Ljava/lang/Runnable;)V

    goto :goto_14
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 1660
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onResume()V

    .line 1661
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity;->listAdapter:Lorg/telegram/ui/ProfileActivity$ListAdapter;

    if-eqz v0, :cond_c

    .line 1662
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity;->listAdapter:Lorg/telegram/ui/ProfileActivity$ListAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/ProfileActivity$ListAdapter;->notifyDataSetChanged()V

    .line 1664
    :cond_c
    invoke-direct {p0}, Lorg/telegram/ui/ProfileActivity;->updateProfileData()V

    .line 1665
    invoke-direct {p0}, Lorg/telegram/ui/ProfileActivity;->fixLayout()V

    .line 1666
    return-void
.end method

.method protected onTransitionAnimationEnd(ZZ)V
    .registers 5
    .param p1, "isOpen"    # Z
    .param p2, "backward"    # Z

    .prologue
    const/4 v1, 0x0

    .line 1686
    if-nez p2, :cond_14

    iget-boolean v0, p0, Lorg/telegram/ui/ProfileActivity;->playProfileAnimation:Z

    if-eqz v0, :cond_14

    iget-boolean v0, p0, Lorg/telegram/ui/ProfileActivity;->allowProfileAnimation:Z

    if-eqz v0, :cond_14

    .line 1687
    iput-boolean v1, p0, Lorg/telegram/ui/ProfileActivity;->openAnimationInProgress:Z

    .line 1688
    iget-boolean v0, p0, Lorg/telegram/ui/ProfileActivity;->recreateMenuAfterAnimation:Z

    if-eqz v0, :cond_14

    .line 1689
    invoke-direct {p0}, Lorg/telegram/ui/ProfileActivity;->createActionBarMenu()V

    .line 1692
    :cond_14
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/NotificationCenter;->setAnimationInProgress(Z)V

    .line 1693
    return-void
.end method

.method protected onTransitionAnimationStart(ZZ)V
    .registers 8
    .param p1, "isOpen"    # Z
    .param p2, "backward"    # Z

    .prologue
    const/4 v4, 0x1

    .line 1677
    if-nez p2, :cond_d

    iget-boolean v0, p0, Lorg/telegram/ui/ProfileActivity;->playProfileAnimation:Z

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Lorg/telegram/ui/ProfileActivity;->allowProfileAnimation:Z

    if-eqz v0, :cond_d

    .line 1678
    iput-boolean v4, p0, Lorg/telegram/ui/ProfileActivity;->openAnimationInProgress:Z

    .line 1680
    :cond_d
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [I

    const/4 v2, 0x0

    sget v3, Lorg/telegram/messenger/NotificationCenter;->dialogsNeedReload:I

    aput v3, v1, v2

    sget v2, Lorg/telegram/messenger/NotificationCenter;->closeChats:I

    aput v2, v1, v4

    const/4 v2, 0x2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->mediaCountDidLoaded:I

    aput v3, v1, v2

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/NotificationCenter;->setAllowedNotificationsDutingAnimation([I)V

    .line 1681
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/NotificationCenter;->setAnimationInProgress(Z)V

    .line 1682
    return-void
.end method

.method public restoreSelfArgs(Landroid/os/Bundle;)V
    .registers 6
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    .line 1230
    iget v0, p0, Lorg/telegram/ui/ProfileActivity;->chat_id:I

    if-eqz v0, :cond_1d

    .line 1231
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/ProfileActivity;->chat_id:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->loadChatInfo(ILjava/util/concurrent/Semaphore;Z)V

    .line 1232
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity;->avatarUpdater:Lorg/telegram/ui/Components/AvatarUpdater;

    if-eqz v0, :cond_1d

    .line 1233
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity;->avatarUpdater:Lorg/telegram/ui/Components/AvatarUpdater;

    const-string v1, "path"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/Components/AvatarUpdater;->currentPicturePath:Ljava/lang/String;

    .line 1236
    :cond_1d
    return-void
.end method

.method public saveSelfArgs(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    .line 1221
    iget v0, p0, Lorg/telegram/ui/ProfileActivity;->chat_id:I

    if-eqz v0, :cond_17

    .line 1222
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity;->avatarUpdater:Lorg/telegram/ui/Components/AvatarUpdater;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity;->avatarUpdater:Lorg/telegram/ui/Components/AvatarUpdater;

    iget-object v0, v0, Lorg/telegram/ui/Components/AvatarUpdater;->currentPicturePath:Ljava/lang/String;

    if-eqz v0, :cond_17

    .line 1223
    const-string v0, "path"

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity;->avatarUpdater:Lorg/telegram/ui/Components/AvatarUpdater;

    iget-object v1, v1, Lorg/telegram/ui/Components/AvatarUpdater;->currentPicturePath:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1226
    :cond_17
    return-void
.end method

.method public scaleToFill()Z
    .registers 2

    .prologue
    .line 1898
    const/4 v0, 0x0

    return v0
.end method

.method public sendButtonPressed(ILorg/telegram/messenger/VideoEditedInfo;)V
    .registers 3
    .param p1, "index"    # I
    .param p2, "videoEditedInfo"    # Lorg/telegram/messenger/VideoEditedInfo;

    .prologue
    .line 1973
    return-void
.end method

.method public setAnimationProgress(F)V
    .registers 24
    .param p1, "progress"    # F
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .prologue
    .line 1701
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/ProfileActivity;->animationProgress:F

    .line 1702
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setAlpha(F)V

    .line 1704
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v17, v0

    const/high16 v18, 0x42400000    # 48.0f

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    const/high16 v19, 0x42400000    # 48.0f

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    mul-float v19, v19, p1

    sub-float v18, v18, v19

    invoke-virtual/range {v17 .. v18}, Lorg/telegram/ui/Components/RecyclerListView;->setTranslationX(F)V

    .line 1705
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ProfileActivity;->user_id:I

    move/from16 v17, v0

    if-nez v17, :cond_58

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ProfileActivity;->chat_id:I

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/ChatObject;->isChannel(I)Z

    move-result v17

    if-eqz v17, :cond_1a2

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    move/from16 v17, v0

    if-nez v17, :cond_1a2

    :cond_58
    const/16 v17, 0x5

    :goto_5a
    invoke-static/range {v17 .. v17}, Lorg/telegram/ui/Components/AvatarDrawable;->getProfileBackColorForId(I)I

    move-result v7

    .line 1707
    .local v7, "color":I
    const-string v17, "actionBarDefault"

    invoke-static/range {v17 .. v17}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    .line 1708
    .local v4, "actionBarColor":I
    invoke-static {v4}, Landroid/graphics/Color;->red(I)I

    move-result v13

    .line 1709
    .local v13, "r":I
    invoke-static {v4}, Landroid/graphics/Color;->green(I)I

    move-result v9

    .line 1710
    .local v9, "g":I
    invoke-static {v4}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    .line 1713
    .local v5, "b":I
    invoke-static {v7}, Landroid/graphics/Color;->red(I)I

    move-result v17

    sub-int v17, v17, v13

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    mul-float v17, v17, p1

    move/from16 v0, v17

    float-to-int v14, v0

    .line 1714
    .local v14, "rD":I
    invoke-static {v7}, Landroid/graphics/Color;->green(I)I

    move-result v17

    sub-int v17, v17, v9

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    mul-float v17, v17, p1

    move/from16 v0, v17

    float-to-int v10, v0

    .line 1715
    .local v10, "gD":I
    invoke-static {v7}, Landroid/graphics/Color;->blue(I)I

    move-result v17

    sub-int v17, v17, v5

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    mul-float v17, v17, p1

    move/from16 v0, v17

    float-to-int v6, v0

    .line 1717
    .local v6, "bD":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->topView:Lorg/telegram/ui/ProfileActivity$TopView;

    move-object/from16 v17, v0

    add-int v18, v13, v14

    add-int v19, v9, v10

    add-int v20, v5, v6

    invoke-static/range {v18 .. v20}, Landroid/graphics/Color;->rgb(III)I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Lorg/telegram/ui/ProfileActivity$TopView;->setBackgroundColor(I)V

    .line 1719
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ProfileActivity;->user_id:I

    move/from16 v17, v0

    if-nez v17, :cond_d5

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ProfileActivity;->chat_id:I

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/ChatObject;->isChannel(I)Z

    move-result v17

    if-eqz v17, :cond_1aa

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    move/from16 v17, v0

    if-nez v17, :cond_1aa

    :cond_d5
    const/16 v17, 0x5

    :goto_d7
    invoke-static/range {v17 .. v17}, Lorg/telegram/ui/Components/AvatarDrawable;->getIconColorForId(I)I

    move-result v7

    .line 1720
    const-string v17, "actionBarDefaultIcon"

    invoke-static/range {v17 .. v17}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v12

    .line 1721
    .local v12, "iconColor":I
    invoke-static {v12}, Landroid/graphics/Color;->red(I)I

    move-result v13

    .line 1722
    invoke-static {v12}, Landroid/graphics/Color;->green(I)I

    move-result v9

    .line 1723
    invoke-static {v12}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    .line 1725
    invoke-static {v7}, Landroid/graphics/Color;->red(I)I

    move-result v17

    sub-int v17, v17, v13

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    mul-float v17, v17, p1

    move/from16 v0, v17

    float-to-int v14, v0

    .line 1726
    invoke-static {v7}, Landroid/graphics/Color;->green(I)I

    move-result v17

    sub-int v17, v17, v9

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    mul-float v17, v17, p1

    move/from16 v0, v17

    float-to-int v10, v0

    .line 1727
    invoke-static {v7}, Landroid/graphics/Color;->blue(I)I

    move-result v17

    sub-int v17, v17, v5

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    mul-float v17, v17, p1

    move/from16 v0, v17

    float-to-int v6, v0

    .line 1728
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    move-object/from16 v17, v0

    add-int v18, v13, v14

    add-int v19, v9, v10

    add-int v20, v5, v6

    invoke-static/range {v18 .. v20}, Landroid/graphics/Color;->rgb(III)I

    move-result v18

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsColor(IZ)V

    .line 1730
    const-string v17, "profile_title"

    invoke-static/range {v17 .. v17}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v7

    .line 1731
    const-string v17, "actionBarDefaultTitle"

    invoke-static/range {v17 .. v17}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v16

    .line 1732
    .local v16, "titleColor":I
    invoke-static/range {v16 .. v16}, Landroid/graphics/Color;->red(I)I

    move-result v13

    .line 1733
    invoke-static/range {v16 .. v16}, Landroid/graphics/Color;->green(I)I

    move-result v9

    .line 1734
    invoke-static/range {v16 .. v16}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    .line 1735
    invoke-static/range {v16 .. v16}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    .line 1737
    .local v2, "a":I
    invoke-static {v7}, Landroid/graphics/Color;->red(I)I

    move-result v17

    sub-int v17, v17, v13

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    mul-float v17, v17, p1

    move/from16 v0, v17

    float-to-int v14, v0

    .line 1738
    invoke-static {v7}, Landroid/graphics/Color;->green(I)I

    move-result v17

    sub-int v17, v17, v9

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    mul-float v17, v17, p1

    move/from16 v0, v17

    float-to-int v10, v0

    .line 1739
    invoke-static {v7}, Landroid/graphics/Color;->blue(I)I

    move-result v17

    sub-int v17, v17, v5

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    mul-float v17, v17, p1

    move/from16 v0, v17

    float-to-int v6, v0

    .line 1740
    invoke-static {v7}, Landroid/graphics/Color;->alpha(I)I

    move-result v17

    sub-int v17, v17, v2

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    mul-float v17, v17, p1

    move/from16 v0, v17

    float-to-int v3, v0

    .line 1741
    .local v3, "aD":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_18f
    const/16 v17, 0x2

    move/from16 v0, v17

    if-ge v11, v0, :cond_1ca

    .line 1742
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-object/from16 v17, v0

    aget-object v17, v17, v11

    if-nez v17, :cond_1b2

    .line 1741
    :goto_19f
    add-int/lit8 v11, v11, 0x1

    goto :goto_18f

    .line 1705
    .end local v2    # "a":I
    .end local v3    # "aD":I
    .end local v4    # "actionBarColor":I
    .end local v5    # "b":I
    .end local v6    # "bD":I
    .end local v7    # "color":I
    .end local v9    # "g":I
    .end local v10    # "gD":I
    .end local v11    # "i":I
    .end local v12    # "iconColor":I
    .end local v13    # "r":I
    .end local v14    # "rD":I
    .end local v16    # "titleColor":I
    :cond_1a2
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ProfileActivity;->chat_id:I

    move/from16 v17, v0

    goto/16 :goto_5a

    .line 1719
    .restart local v4    # "actionBarColor":I
    .restart local v5    # "b":I
    .restart local v6    # "bD":I
    .restart local v7    # "color":I
    .restart local v9    # "g":I
    .restart local v10    # "gD":I
    .restart local v13    # "r":I
    .restart local v14    # "rD":I
    :cond_1aa
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ProfileActivity;->chat_id:I

    move/from16 v17, v0

    goto/16 :goto_d7

    .line 1745
    .restart local v2    # "a":I
    .restart local v3    # "aD":I
    .restart local v11    # "i":I
    .restart local v12    # "iconColor":I
    .restart local v16    # "titleColor":I
    :cond_1b2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-object/from16 v17, v0

    aget-object v17, v17, v11

    add-int v18, v2, v3

    add-int v19, v13, v14

    add-int v20, v9, v10

    add-int v21, v5, v6

    invoke-static/range {v18 .. v21}, Landroid/graphics/Color;->argb(IIII)I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    goto :goto_19f

    .line 1748
    :cond_1ca
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ProfileActivity;->user_id:I

    move/from16 v17, v0

    if-nez v17, :cond_1ec

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ProfileActivity;->chat_id:I

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/ChatObject;->isChannel(I)Z

    move-result v17

    if-eqz v17, :cond_25c

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    move/from16 v17, v0

    if-nez v17, :cond_25c

    :cond_1ec
    const/16 v17, 0x5

    :goto_1ee
    invoke-static/range {v17 .. v17}, Lorg/telegram/ui/Components/AvatarDrawable;->getProfileTextColorForId(I)I

    move-result v7

    .line 1749
    const-string v17, "actionBarDefaultSubtitle"

    invoke-static/range {v17 .. v17}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v15

    .line 1750
    .local v15, "subtitleColor":I
    invoke-static {v15}, Landroid/graphics/Color;->red(I)I

    move-result v13

    .line 1751
    invoke-static {v15}, Landroid/graphics/Color;->green(I)I

    move-result v9

    .line 1752
    invoke-static {v15}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    .line 1753
    invoke-static {v15}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    .line 1755
    invoke-static {v7}, Landroid/graphics/Color;->red(I)I

    move-result v17

    sub-int v17, v17, v13

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    mul-float v17, v17, p1

    move/from16 v0, v17

    float-to-int v14, v0

    .line 1756
    invoke-static {v7}, Landroid/graphics/Color;->green(I)I

    move-result v17

    sub-int v17, v17, v9

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    mul-float v17, v17, p1

    move/from16 v0, v17

    float-to-int v10, v0

    .line 1757
    invoke-static {v7}, Landroid/graphics/Color;->blue(I)I

    move-result v17

    sub-int v17, v17, v5

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    mul-float v17, v17, p1

    move/from16 v0, v17

    float-to-int v6, v0

    .line 1758
    invoke-static {v7}, Landroid/graphics/Color;->alpha(I)I

    move-result v17

    sub-int v17, v17, v2

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    mul-float v17, v17, p1

    move/from16 v0, v17

    float-to-int v3, v0

    .line 1759
    const/4 v11, 0x0

    :goto_249
    const/16 v17, 0x2

    move/from16 v0, v17

    if-ge v11, v0, :cond_27b

    .line 1760
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->onlineTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-object/from16 v17, v0

    aget-object v17, v17, v11

    if-nez v17, :cond_263

    .line 1759
    :goto_259
    add-int/lit8 v11, v11, 0x1

    goto :goto_249

    .line 1748
    .end local v15    # "subtitleColor":I
    :cond_25c
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ProfileActivity;->chat_id:I

    move/from16 v17, v0

    goto :goto_1ee

    .line 1763
    .restart local v15    # "subtitleColor":I
    :cond_263
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->onlineTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-object/from16 v17, v0

    aget-object v17, v17, v11

    add-int v18, v2, v3

    add-int v19, v13, v14

    add-int v20, v9, v10

    add-int v21, v5, v6

    invoke-static/range {v18 .. v21}, Landroid/graphics/Color;->argb(IIII)I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    goto :goto_259

    .line 1765
    :cond_27b
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ProfileActivity;->initialAnimationExtraHeight:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    mul-float v17, v17, p1

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/ProfileActivity;->extraHeight:I

    .line 1766
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ProfileActivity;->user_id:I

    move/from16 v17, v0

    if-eqz v17, :cond_321

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ProfileActivity;->user_id:I

    move/from16 v17, v0

    :goto_2a1
    invoke-static/range {v17 .. v17}, Lorg/telegram/ui/Components/AvatarDrawable;->getProfileColorForId(I)I

    move-result v7

    .line 1767
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ProfileActivity;->user_id:I

    move/from16 v17, v0

    if-eqz v17, :cond_329

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ProfileActivity;->user_id:I

    move/from16 v17, v0

    :goto_2b3
    invoke-static/range {v17 .. v17}, Lorg/telegram/ui/Components/AvatarDrawable;->getColorForId(I)I

    move-result v8

    .line 1768
    .local v8, "color2":I
    if-eq v7, v8, :cond_31d

    .line 1769
    invoke-static {v7}, Landroid/graphics/Color;->red(I)I

    move-result v17

    invoke-static {v8}, Landroid/graphics/Color;->red(I)I

    move-result v18

    sub-int v17, v17, v18

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    mul-float v17, v17, p1

    move/from16 v0, v17

    float-to-int v14, v0

    .line 1770
    invoke-static {v7}, Landroid/graphics/Color;->green(I)I

    move-result v17

    invoke-static {v8}, Landroid/graphics/Color;->green(I)I

    move-result v18

    sub-int v17, v17, v18

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    mul-float v17, v17, p1

    move/from16 v0, v17

    float-to-int v10, v0

    .line 1771
    invoke-static {v7}, Landroid/graphics/Color;->blue(I)I

    move-result v17

    invoke-static {v8}, Landroid/graphics/Color;->blue(I)I

    move-result v18

    sub-int v17, v17, v18

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    mul-float v17, v17, p1

    move/from16 v0, v17

    float-to-int v6, v0

    .line 1772
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    move-object/from16 v17, v0

    invoke-static {v8}, Landroid/graphics/Color;->red(I)I

    move-result v18

    add-int v18, v18, v14

    invoke-static {v8}, Landroid/graphics/Color;->green(I)I

    move-result v19

    add-int v19, v19, v10

    invoke-static {v8}, Landroid/graphics/Color;->blue(I)I

    move-result v20

    add-int v20, v20, v6

    invoke-static/range {v18 .. v20}, Landroid/graphics/Color;->rgb(III)I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Lorg/telegram/ui/Components/AvatarDrawable;->setColor(I)V

    .line 1773
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lorg/telegram/ui/Components/BackupImageView;->invalidate()V

    .line 1776
    :cond_31d
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/ProfileActivity;->needLayout()V

    .line 1777
    return-void

    .line 1766
    .end local v8    # "color2":I
    :cond_321
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ProfileActivity;->chat_id:I

    move/from16 v17, v0

    goto/16 :goto_2a1

    .line 1767
    :cond_329
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ProfileActivity;->chat_id:I

    move/from16 v17, v0

    goto :goto_2b3
.end method

.method public setChatInfo(Lorg/telegram/tgnet/TLRPC$ChatFull;)V
    .registers 4
    .param p1, "chatInfo"    # Lorg/telegram/tgnet/TLRPC$ChatFull;

    .prologue
    .line 2049
    iput-object p1, p0, Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    .line 2050
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->migrated_from_chat_id:I

    if-eqz v0, :cond_14

    .line 2051
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->migrated_from_chat_id:I

    neg-int v0, v0

    int-to-long v0, v0

    iput-wide v0, p0, Lorg/telegram/ui/ProfileActivity;->mergeDialogId:J

    .line 2053
    :cond_14
    invoke-direct {p0}, Lorg/telegram/ui/ProfileActivity;->fetchUsersFromChannelInfo()V

    .line 2054
    return-void
.end method

.method public setPhotoChecked(I)V
    .registers 2
    .param p1, "index"    # I

    .prologue
    .line 1964
    return-void
.end method

.method public setPlayProfileAnimation(Z)V
    .registers 6
    .param p1, "value"    # Z

    .prologue
    .line 1669
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v2, "mainconfig"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1670
    .local v0, "preferences":Landroid/content/SharedPreferences;
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v1

    if-nez v1, :cond_1a

    const-string v1, "view_animations"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 1671
    iput-boolean p1, p0, Lorg/telegram/ui/ProfileActivity;->playProfileAnimation:Z

    .line 1673
    :cond_1a
    return-void
.end method

.method public updatePhotoAtIndex(I)V
    .registers 2
    .param p1, "index"    # I

    .prologue
    .line 1889
    return-void
.end method

.method public willHidePhotoViewer()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 1954
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Lorg/telegram/messenger/ImageReceiver;->setVisible(ZZ)V

    .line 1955
    return-void
.end method

.method public willSwitchFromPhoto(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$FileLocation;I)V
    .registers 4
    .param p1, "messageObject"    # Lorg/telegram/messenger/MessageObject;
    .param p2, "fileLocation"    # Lorg/telegram/tgnet/TLRPC$FileLocation;
    .param p3, "index"    # I

    .prologue
    .line 1950
    return-void
.end method
