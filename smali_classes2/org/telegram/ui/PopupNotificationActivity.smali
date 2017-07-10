.class public Lorg/telegram/ui/PopupNotificationActivity;
.super Landroid/app/Activity;
.source "PopupNotificationActivity.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/PopupNotificationActivity$FrameLayoutAnimationListener;,
        Lorg/telegram/ui/PopupNotificationActivity$FrameLayoutTouch;
    }
.end annotation


# instance fields
.field private actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

.field private animationInProgress:Z

.field private animationStartTime:J

.field private audioViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/ViewGroup;",
            ">;"
        }
    .end annotation
.end field

.field private avatarContainer:Landroid/widget/FrameLayout;

.field private avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

.field private centerView:Landroid/view/ViewGroup;

.field private chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

.field private classGuid:I

.field private countText:Landroid/widget/TextView;

.field private currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

.field private currentMessageNum:I

.field private currentMessageObject:Lorg/telegram/messenger/MessageObject;

.field private currentUser:Lorg/telegram/tgnet/TLRPC$User;

.field private finished:Z

.field private imageViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/ViewGroup;",
            ">;"
        }
    .end annotation
.end field

.field private isReply:Z

.field private lastPrintString:Ljava/lang/CharSequence;

.field private leftView:Landroid/view/ViewGroup;

.field private messageContainer:Landroid/view/ViewGroup;

.field private moveStartX:F

.field private nameTextView:Landroid/widget/TextView;

.field private onAnimationEndRunnable:Ljava/lang/Runnable;

.field private onlineTextView:Landroid/widget/TextView;

.field private playingGameDrawable:Lorg/telegram/ui/Components/PlayingGameDrawable;

.field private popupContainer:Landroid/widget/RelativeLayout;

.field private popupMessages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;"
        }
    .end annotation
.end field

.field private recordStatusDrawable:Lorg/telegram/ui/Components/RecordStatusDrawable;

.field private rightView:Landroid/view/ViewGroup;

.field private sendingFileDrawable:Lorg/telegram/ui/Components/SendingFileDrawable;

.field private startedMoving:Z

.field private textViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/ViewGroup;",
            ">;"
        }
    .end annotation
.end field

.field private typingDotsDrawable:Lorg/telegram/ui/Components/TypingDotsDrawable;

.field private velocityTracker:Landroid/view/VelocityTracker;

.field private wakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 77
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->textViews:Ljava/util/ArrayList;

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->imageViews:Ljava/util/ArrayList;

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->audioViews:Ljava/util/ArrayList;

    .line 94
    iput-object v3, p0, Lorg/telegram/ui/PopupNotificationActivity;->velocityTracker:Landroid/view/VelocityTracker;

    .line 103
    iput-boolean v2, p0, Lorg/telegram/ui/PopupNotificationActivity;->finished:Z

    .line 105
    iput-object v3, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    .line 106
    iput v2, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentMessageNum:I

    .line 107
    iput-object v3, p0, Lorg/telegram/ui/PopupNotificationActivity;->wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 108
    iput-boolean v2, p0, Lorg/telegram/ui/PopupNotificationActivity;->animationInProgress:Z

    .line 109
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->animationStartTime:J

    .line 110
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->moveStartX:F

    .line 111
    iput-boolean v2, p0, Lorg/telegram/ui/PopupNotificationActivity;->startedMoving:Z

    .line 112
    iput-object v3, p0, Lorg/telegram/ui/PopupNotificationActivity;->onAnimationEndRunnable:Ljava/lang/Runnable;

    .line 114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->popupMessages:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/PopupNotificationActivity;)Ljava/lang/Runnable;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/PopupNotificationActivity;

    .prologue
    .line 77
    iget-object v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->onAnimationEndRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$002(Lorg/telegram/ui/PopupNotificationActivity;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/PopupNotificationActivity;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 77
    iput-object p1, p0, Lorg/telegram/ui/PopupNotificationActivity;->onAnimationEndRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$100(Lorg/telegram/ui/PopupNotificationActivity;)Lorg/telegram/ui/Components/ChatActivityEnterView;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/PopupNotificationActivity;

    .prologue
    .line 77
    iget-object v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    return-object v0
.end method

.method static synthetic access$1002(Lorg/telegram/ui/PopupNotificationActivity;Z)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/PopupNotificationActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 77
    iput-boolean p1, p0, Lorg/telegram/ui/PopupNotificationActivity;->animationInProgress:Z

    return p1
.end method

.method static synthetic access$1100(Lorg/telegram/ui/PopupNotificationActivity;)V
    .registers 1
    .param p0, "x0"    # Lorg/telegram/ui/PopupNotificationActivity;

    .prologue
    .line 77
    invoke-direct {p0}, Lorg/telegram/ui/PopupNotificationActivity;->switchToPreviousMessage()V

    return-void
.end method

.method static synthetic access$1200(Lorg/telegram/ui/PopupNotificationActivity;I)V
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/PopupNotificationActivity;
    .param p1, "x1"    # I

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lorg/telegram/ui/PopupNotificationActivity;->applyViewsLayoutParams(I)V

    return-void
.end method

.method static synthetic access$1300(Lorg/telegram/ui/PopupNotificationActivity;)Landroid/widget/FrameLayout;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/PopupNotificationActivity;

    .prologue
    .line 77
    iget-object v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->avatarContainer:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$1400(Lorg/telegram/ui/PopupNotificationActivity;)Landroid/view/ViewGroup;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/PopupNotificationActivity;

    .prologue
    .line 77
    iget-object v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->messageContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/PopupNotificationActivity;)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/PopupNotificationActivity;

    .prologue
    .line 77
    iget-boolean v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->startedMoving:Z

    return v0
.end method

.method static synthetic access$200(Lorg/telegram/ui/PopupNotificationActivity;)Landroid/widget/RelativeLayout;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/PopupNotificationActivity;

    .prologue
    .line 77
    iget-object v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->popupContainer:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$300(Lorg/telegram/ui/PopupNotificationActivity;)Lorg/telegram/messenger/MessageObject;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/PopupNotificationActivity;

    .prologue
    .line 77
    iget-object v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    return-object v0
.end method

.method static synthetic access$302(Lorg/telegram/ui/PopupNotificationActivity;Lorg/telegram/messenger/MessageObject;)Lorg/telegram/messenger/MessageObject;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/PopupNotificationActivity;
    .param p1, "x1"    # Lorg/telegram/messenger/MessageObject;

    .prologue
    .line 77
    iput-object p1, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    return-object p1
.end method

.method static synthetic access$400(Lorg/telegram/ui/PopupNotificationActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/PopupNotificationActivity;

    .prologue
    .line 77
    iget v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentMessageNum:I

    return v0
.end method

.method static synthetic access$500(Lorg/telegram/ui/PopupNotificationActivity;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/PopupNotificationActivity;

    .prologue
    .line 77
    iget-object v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->popupMessages:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$600(Lorg/telegram/ui/PopupNotificationActivity;)V
    .registers 1
    .param p0, "x0"    # Lorg/telegram/ui/PopupNotificationActivity;

    .prologue
    .line 77
    invoke-direct {p0}, Lorg/telegram/ui/PopupNotificationActivity;->getNewMessage()V

    return-void
.end method

.method static synthetic access$700(Lorg/telegram/ui/PopupNotificationActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/PopupNotificationActivity;

    .prologue
    .line 77
    iget v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->classGuid:I

    return v0
.end method

.method static synthetic access$800(Lorg/telegram/ui/PopupNotificationActivity;)V
    .registers 1
    .param p0, "x0"    # Lorg/telegram/ui/PopupNotificationActivity;

    .prologue
    .line 77
    invoke-direct {p0}, Lorg/telegram/ui/PopupNotificationActivity;->openCurrentMessage()V

    return-void
.end method

.method static synthetic access$900(Lorg/telegram/ui/PopupNotificationActivity;)V
    .registers 1
    .param p0, "x0"    # Lorg/telegram/ui/PopupNotificationActivity;

    .prologue
    .line 77
    invoke-direct {p0}, Lorg/telegram/ui/PopupNotificationActivity;->switchToNextMessage()V

    return-void
.end method

.method private applyViewsLayoutParams(I)V
    .registers 8
    .param p1, "xOffset"    # I

    .prologue
    const/16 v5, 0x33

    const/4 v4, -0x1

    .line 653
    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    const/high16 v3, 0x41c00000    # 24.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int v1, v2, v3

    .line 654
    .local v1, "widht":I
    iget-object v2, p0, Lorg/telegram/ui/PopupNotificationActivity;->leftView:Landroid/view/ViewGroup;

    if-eqz v2, :cond_2a

    .line 655
    iget-object v2, p0, Lorg/telegram/ui/PopupNotificationActivity;->leftView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 656
    .local v0, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iput v5, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 657
    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 658
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 659
    neg-int v2, v1

    add-int/2addr v2, p1

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 660
    iget-object v2, p0, Lorg/telegram/ui/PopupNotificationActivity;->leftView:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 662
    .end local v0    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_2a
    iget-object v2, p0, Lorg/telegram/ui/PopupNotificationActivity;->centerView:Landroid/view/ViewGroup;

    if-eqz v2, :cond_43

    .line 663
    iget-object v2, p0, Lorg/telegram/ui/PopupNotificationActivity;->centerView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 664
    .restart local v0    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iput v5, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 665
    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 666
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 667
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 668
    iget-object v2, p0, Lorg/telegram/ui/PopupNotificationActivity;->centerView:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 670
    .end local v0    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_43
    iget-object v2, p0, Lorg/telegram/ui/PopupNotificationActivity;->rightView:Landroid/view/ViewGroup;

    if-eqz v2, :cond_5e

    .line 671
    iget-object v2, p0, Lorg/telegram/ui/PopupNotificationActivity;->rightView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 672
    .restart local v0    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iput v5, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 673
    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 674
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 675
    add-int v2, v1, p1

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 676
    iget-object v2, p0, Lorg/telegram/ui/PopupNotificationActivity;->rightView:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 678
    .end local v0    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_5e
    iget-object v2, p0, Lorg/telegram/ui/PopupNotificationActivity;->messageContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->invalidate()V

    .line 679
    return-void
.end method

.method private checkAndUpdateAvatar()V
    .registers 7

    .prologue
    .line 1129
    const/4 v2, 0x0

    .line 1130
    .local v2, "newPhoto":Lorg/telegram/tgnet/TLRPC$FileLocation;
    const/4 v0, 0x0

    .line 1131
    .local v0, "avatarDrawable":Lorg/telegram/ui/Components/AvatarDrawable;
    iget-object v4, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v4, :cond_3a

    .line 1132
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v1

    .line 1133
    .local v1, "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    if-nez v1, :cond_19

    .line 1155
    .end local v1    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_18
    :goto_18
    return-void

    .line 1136
    .restart local v1    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_19
    iput-object v1, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    .line 1137
    iget-object v4, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    if-eqz v4, :cond_27

    .line 1138
    iget-object v4, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    iget-object v2, v4, Lorg/telegram/tgnet/TLRPC$ChatPhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 1140
    :cond_27
    new-instance v0, Lorg/telegram/ui/Components/AvatarDrawable;

    .end local v0    # "avatarDrawable":Lorg/telegram/ui/Components/AvatarDrawable;
    iget-object v4, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-direct {v0, v4}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>(Lorg/telegram/tgnet/TLRPC$Chat;)V

    .line 1152
    .end local v1    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    .restart local v0    # "avatarDrawable":Lorg/telegram/ui/Components/AvatarDrawable;
    :cond_2e
    :goto_2e
    iget-object v4, p0, Lorg/telegram/ui/PopupNotificationActivity;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    if-eqz v4, :cond_18

    .line 1153
    iget-object v4, p0, Lorg/telegram/ui/PopupNotificationActivity;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    const-string v5, "50_50"

    invoke-virtual {v4, v2, v5, v0}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    goto :goto_18

    .line 1141
    :cond_3a
    iget-object v4, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v4, :cond_2e

    .line 1142
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v3

    .line 1143
    .local v3, "user":Lorg/telegram/tgnet/TLRPC$User;
    if-eqz v3, :cond_18

    .line 1146
    iput-object v3, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    .line 1147
    iget-object v4, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    if-eqz v4, :cond_5e

    .line 1148
    iget-object v4, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    iget-object v2, v4, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 1150
    :cond_5e
    new-instance v0, Lorg/telegram/ui/Components/AvatarDrawable;

    .end local v0    # "avatarDrawable":Lorg/telegram/ui/Components/AvatarDrawable;
    iget-object v4, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    invoke-direct {v0, v4}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>(Lorg/telegram/tgnet/TLRPC$User;)V

    .restart local v0    # "avatarDrawable":Lorg/telegram/ui/Components/AvatarDrawable;
    goto :goto_2e
.end method

.method private fixLayout()V
    .registers 3

    .prologue
    .line 938
    iget-object v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->avatarContainer:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_12

    .line 939
    iget-object v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->avatarContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/PopupNotificationActivity$11;

    invoke-direct {v1, p0}, Lorg/telegram/ui/PopupNotificationActivity$11;-><init>(Lorg/telegram/ui/PopupNotificationActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 951
    :cond_12
    iget-object v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->messageContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_24

    .line 952
    iget-object v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->messageContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/PopupNotificationActivity$12;

    invoke-direct {v1, p0}, Lorg/telegram/ui/PopupNotificationActivity$12;-><init>(Lorg/telegram/ui/PopupNotificationActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 969
    :cond_24
    return-void
.end method

.method private getNewMessage()V
    .registers 9

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1000
    iget-object v2, p0, Lorg/telegram/ui/PopupNotificationActivity;->popupMessages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 1001
    invoke-virtual {p0}, Lorg/telegram/ui/PopupNotificationActivity;->onFinish()V

    .line 1002
    invoke-virtual {p0}, Lorg/telegram/ui/PopupNotificationActivity;->finish()V

    .line 1028
    :goto_10
    return-void

    .line 1006
    :cond_11
    const/4 v1, 0x0

    .line 1007
    .local v1, "found":Z
    iget v2, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentMessageNum:I

    if-nez v2, :cond_22

    iget-object v2, p0, Lorg/telegram/ui/PopupNotificationActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->hasText()Z

    move-result v2

    if-nez v2, :cond_22

    iget-boolean v2, p0, Lorg/telegram/ui/PopupNotificationActivity;->startedMoving:Z

    if-eqz v2, :cond_46

    :cond_22
    iget-object v2, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v2, :cond_46

    .line 1008
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_27
    iget-object v2, p0, Lorg/telegram/ui/PopupNotificationActivity;->popupMessages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_46

    .line 1009
    iget-object v2, p0, Lorg/telegram/ui/PopupNotificationActivity;->popupMessages:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v3

    if-ne v2, v3, :cond_7c

    .line 1010
    iput v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentMessageNum:I

    .line 1011
    const/4 v1, 0x1

    .line 1016
    .end local v0    # "a":I
    :cond_46
    if-nez v1, :cond_7f

    .line 1017
    iput v6, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentMessageNum:I

    .line 1018
    iget-object v2, p0, Lorg/telegram/ui/PopupNotificationActivity;->popupMessages:Ljava/util/ArrayList;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessageObject;

    iput-object v2, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    .line 1019
    invoke-direct {p0, v6}, Lorg/telegram/ui/PopupNotificationActivity;->updateInterfaceForCurrentMessage(I)V

    .line 1027
    :cond_57
    :goto_57
    iget-object v2, p0, Lorg/telegram/ui/PopupNotificationActivity;->countText:Landroid/widget/TextView;

    const-string v3, "%d/%d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget v5, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentMessageNum:I

    add-int/lit8 v5, v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    iget-object v5, p0, Lorg/telegram/ui/PopupNotificationActivity;->popupMessages:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_10

    .line 1008
    .restart local v0    # "a":I
    :cond_7c
    add-int/lit8 v0, v0, 0x1

    goto :goto_27

    .line 1020
    .end local v0    # "a":I
    :cond_7f
    iget-boolean v2, p0, Lorg/telegram/ui/PopupNotificationActivity;->startedMoving:Z

    if-eqz v2, :cond_57

    .line 1021
    iget v2, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentMessageNum:I

    iget-object v3, p0, Lorg/telegram/ui/PopupNotificationActivity;->popupMessages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne v2, v3, :cond_94

    .line 1022
    const/4 v2, 0x3

    invoke-direct {p0, v2}, Lorg/telegram/ui/PopupNotificationActivity;->prepareLayouts(I)V

    goto :goto_57

    .line 1023
    :cond_94
    iget v2, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentMessageNum:I

    if-ne v2, v7, :cond_57

    .line 1024
    const/4 v2, 0x4

    invoke-direct {p0, v2}, Lorg/telegram/ui/PopupNotificationActivity;->prepareLayouts(I)V

    goto :goto_57
.end method

.method private getViewForMessage(IZ)Landroid/view/ViewGroup;
    .registers 39
    .param p1, "num"    # I
    .param p2, "applyOffset"    # Z

    .prologue
    .line 682
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PopupNotificationActivity;->popupMessages:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1c

    if-ltz p1, :cond_19

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PopupNotificationActivity;->popupMessages:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, p1

    if-lt v0, v4, :cond_1c

    .line 683
    :cond_19
    const/16 v32, 0x0

    .line 862
    :cond_1b
    :goto_1b
    return-object v32

    .line 685
    :cond_1c
    const/4 v4, -0x1

    move/from16 v0, p1

    if-ne v0, v4, :cond_154

    .line 686
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PopupNotificationActivity;->popupMessages:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 p1, v4, -0x1

    .line 691
    :cond_2b
    :goto_2b
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PopupNotificationActivity;->popupMessages:Ljava/util/ArrayList;

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lorg/telegram/messenger/MessageObject;

    .line 692
    .local v23, "messageObject":Lorg/telegram/messenger/MessageObject;
    move-object/from16 v0, v23

    iget v4, v0, Lorg/telegram/messenger/MessageObject;->type:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_45

    move-object/from16 v0, v23

    iget v4, v0, Lorg/telegram/messenger/MessageObject;->type:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_2bd

    .line 693
    :cond_45
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PopupNotificationActivity;->imageViews:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_164

    .line 694
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PopupNotificationActivity;->imageViews:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Landroid/view/ViewGroup;

    .line 695
    .local v32, "view":Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PopupNotificationActivity;->imageViews:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 725
    :goto_62
    const/16 v4, 0x138

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/TextView;

    .line 726
    .local v26, "messageText":Landroid/widget/TextView;
    const/16 v4, 0x137

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v18

    check-cast v18, Lorg/telegram/ui/Components/BackupImageView;

    .line 727
    .local v18, "imageView":Lorg/telegram/ui/Components/BackupImageView;
    const/4 v4, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Components/BackupImageView;->setAspectFit(Z)V

    .line 729
    move-object/from16 v0, v23

    iget v4, v0, Lorg/telegram/messenger/MessageObject;->type:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_240

    .line 730
    move-object/from16 v0, v23

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getPhotoSize()I

    move-result v5

    invoke-static {v4, v5}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v14

    .line 731
    .local v14, "currentPhotoObject":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    move-object/from16 v0, v23

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    const/16 v5, 0x64

    invoke-static {v4, v5}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v31

    .line 732
    .local v31, "thumb":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    const/16 v28, 0x0

    .line 733
    .local v28, "photoSet":Z
    if-eqz v14, :cond_dc

    .line 734
    const/16 v27, 0x1

    .line 735
    .local v27, "photoExist":Z
    move-object/from16 v0, v23

    iget v4, v0, Lorg/telegram/messenger/MessageObject;->type:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_be

    .line 736
    move-object/from16 v0, v23

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v4}, Lorg/telegram/messenger/FileLoader;->getPathToMessage(Lorg/telegram/tgnet/TLRPC$Message;)Ljava/io/File;

    move-result-object v12

    .line 737
    .local v12, "cacheFile":Ljava/io/File;
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_be

    .line 738
    const/16 v27, 0x0

    .line 741
    .end local v12    # "cacheFile":Ljava/io/File;
    :cond_be
    if-nez v27, :cond_cb

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/MediaController;->canDownloadMedia(I)Z

    move-result v4

    if-eqz v4, :cond_21e

    .line 742
    :cond_cb
    iget-object v4, v14, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    const-string v5, "100_100"

    move-object/from16 v0, v31

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget v7, v14, Lorg/telegram/tgnet/TLRPC$PhotoSize;->size:I

    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v5, v6, v7}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$FileLocation;I)V

    .line 743
    const/16 v28, 0x1

    .line 751
    .end local v27    # "photoExist":Z
    :cond_dc
    :goto_dc
    if-nez v28, :cond_231

    .line 752
    const/16 v4, 0x8

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Components/BackupImageView;->setVisibility(I)V

    .line 753
    const/4 v4, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 754
    const/4 v4, 0x2

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    iget v5, v5, Lorg/telegram/messenger/MessagesController;->fontSize:I

    int-to-float v5, v5

    move-object/from16 v0, v26

    invoke-virtual {v0, v4, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 755
    move-object/from16 v0, v23

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 840
    .end local v14    # "currentPhotoObject":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    .end local v18    # "imageView":Lorg/telegram/ui/Components/BackupImageView;
    .end local v26    # "messageText":Landroid/widget/TextView;
    .end local v28    # "photoSet":Z
    .end local v31    # "thumb":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    :cond_101
    :goto_101
    invoke-virtual/range {v32 .. v32}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-nez v4, :cond_110

    .line 841
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PopupNotificationActivity;->messageContainer:Landroid/view/ViewGroup;

    move-object/from16 v0, v32

    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 843
    :cond_110
    const/4 v4, 0x0

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 845
    if-eqz p2, :cond_1b

    .line 846
    sget-object v4, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    const/high16 v5, 0x41c00000    # 24.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    sub-int v33, v4, v5

    .line 847
    .local v33, "widht":I
    invoke-virtual/range {v32 .. v32}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v19

    check-cast v19, Landroid/widget/FrameLayout$LayoutParams;

    .line 848
    .local v19, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v4, 0x33

    move-object/from16 v0, v19

    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 849
    const/4 v4, -0x1

    move-object/from16 v0, v19

    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 850
    move/from16 v0, v33

    move-object/from16 v1, v19

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 851
    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/ui/PopupNotificationActivity;->currentMessageNum:I

    move/from16 v0, p1

    if-ne v0, v4, :cond_4a8

    .line 852
    const/4 v4, 0x0

    move-object/from16 v0, v19

    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 858
    :cond_148
    :goto_148
    move-object/from16 v0, v32

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 859
    invoke-virtual/range {v32 .. v32}, Landroid/view/ViewGroup;->invalidate()V

    goto/16 :goto_1b

    .line 687
    .end local v19    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .end local v23    # "messageObject":Lorg/telegram/messenger/MessageObject;
    .end local v32    # "view":Landroid/view/ViewGroup;
    .end local v33    # "widht":I
    :cond_154
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PopupNotificationActivity;->popupMessages:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, p1

    if-ne v0, v4, :cond_2b

    .line 688
    const/16 p1, 0x0

    goto/16 :goto_2b

    .line 697
    .restart local v23    # "messageObject":Lorg/telegram/messenger/MessageObject;
    :cond_164
    new-instance v32, Lorg/telegram/ui/PopupNotificationActivity$FrameLayoutAnimationListener;

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    move-object/from16 v2, p0

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/PopupNotificationActivity$FrameLayoutAnimationListener;-><init>(Lorg/telegram/ui/PopupNotificationActivity;Landroid/content/Context;)V

    .line 699
    .restart local v32    # "view":Landroid/view/ViewGroup;
    new-instance v16, Landroid/widget/FrameLayout;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 700
    .local v16, "frameLayout":Landroid/widget/FrameLayout;
    const/high16 v4, 0x41200000    # 10.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    const/high16 v5, 0x41200000    # 10.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    const/high16 v6, 0x41200000    # 10.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    const/high16 v7, 0x41200000    # 10.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 701
    const/4 v4, 0x0

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 702
    const/4 v4, -0x1

    const/high16 v5, -0x40800000    # -1.0f

    invoke-static {v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    move-object/from16 v0, v32

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 704
    new-instance v11, Lorg/telegram/ui/Components/BackupImageView;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    .line 705
    .local v11, "backupImageView":Lorg/telegram/ui/Components/BackupImageView;
    const/16 v4, 0x137

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v11, v4}, Lorg/telegram/ui/Components/BackupImageView;->setTag(Ljava/lang/Object;)V

    .line 706
    const/4 v4, -0x1

    const/high16 v5, -0x40800000    # -1.0f

    invoke-static {v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v11, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 708
    new-instance v30, Landroid/widget/TextView;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 709
    .local v30, "textView":Landroid/widget/TextView;
    const-string v4, "windowBackgroundWhiteBlackText"

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 710
    const/4 v4, 0x1

    const/high16 v5, 0x41800000    # 16.0f

    move-object/from16 v0, v30

    invoke-virtual {v0, v4, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 711
    const/16 v4, 0x11

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 712
    const/16 v4, 0x138

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 713
    const/4 v4, -0x1

    const/4 v5, -0x2

    const/16 v6, 0x11

    invoke-static {v4, v5, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    move-object/from16 v0, v16

    move-object/from16 v1, v30

    invoke-virtual {v0, v1, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 715
    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 717
    new-instance v4, Lorg/telegram/ui/PopupNotificationActivity$8;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lorg/telegram/ui/PopupNotificationActivity$8;-><init>(Lorg/telegram/ui/PopupNotificationActivity;)V

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_62

    .line 745
    .end local v11    # "backupImageView":Lorg/telegram/ui/Components/BackupImageView;
    .end local v16    # "frameLayout":Landroid/widget/FrameLayout;
    .end local v30    # "textView":Landroid/widget/TextView;
    .restart local v14    # "currentPhotoObject":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    .restart local v18    # "imageView":Lorg/telegram/ui/Components/BackupImageView;
    .restart local v26    # "messageText":Landroid/widget/TextView;
    .restart local v27    # "photoExist":Z
    .restart local v28    # "photoSet":Z
    .restart local v31    # "thumb":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    :cond_21e
    if-eqz v31, :cond_dc

    .line 746
    move-object/from16 v0, v31

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    const/4 v6, 0x0

    const/4 v4, 0x0

    check-cast v4, Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, v18

    invoke-virtual {v0, v5, v6, v4}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 747
    const/16 v28, 0x1

    goto/16 :goto_dc

    .line 757
    .end local v27    # "photoExist":Z
    :cond_231
    const/4 v4, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Components/BackupImageView;->setVisibility(I)V

    .line 758
    const/16 v4, 0x8

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_101

    .line 760
    .end local v14    # "currentPhotoObject":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    .end local v28    # "photoSet":Z
    .end local v31    # "thumb":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    :cond_240
    move-object/from16 v0, v23

    iget v4, v0, Lorg/telegram/messenger/MessageObject;->type:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_101

    .line 761
    const/16 v4, 0x8

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 762
    move-object/from16 v0, v23

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 763
    const/4 v4, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Components/BackupImageView;->setVisibility(I)V

    .line 764
    move-object/from16 v0, v23

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    iget-wide v0, v4, Lorg/telegram/tgnet/TLRPC$GeoPoint;->lat:D

    move-wide/from16 v20, v0

    .line 765
    .local v20, "lat":D
    move-object/from16 v0, v23

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    iget-wide v0, v4, Lorg/telegram/tgnet/TLRPC$GeoPoint;->_long:D

    move-wide/from16 v24, v0

    .line 766
    .local v24, "lon":D
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "https://maps.googleapis.com/maps/api/staticmap?center=%f,%f&zoom=13&size=100x100&maptype=roadmap&scale=%d&markers=color:red|size:big|%f,%f&sensor=false"

    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static/range {v20 .. v21}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static/range {v24 .. v25}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const/4 v8, 0x2

    sget v9, Lorg/telegram/messenger/AndroidUtilities;->density:F

    float-to-double v0, v9

    move-wide/from16 v34, v0

    invoke-static/range {v34 .. v35}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v34

    move-wide/from16 v0, v34

    double-to-int v9, v0

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x3

    invoke-static/range {v20 .. v21}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x4

    invoke-static/range {v24 .. v25}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    .line 767
    .local v15, "currentUrl":Ljava/lang/String;
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v15, v4, v5}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_101

    .line 769
    .end local v15    # "currentUrl":Ljava/lang/String;
    .end local v18    # "imageView":Lorg/telegram/ui/Components/BackupImageView;
    .end local v20    # "lat":D
    .end local v24    # "lon":D
    .end local v26    # "messageText":Landroid/widget/TextView;
    .end local v32    # "view":Landroid/view/ViewGroup;
    :cond_2bd
    move-object/from16 v0, v23

    iget v4, v0, Lorg/telegram/messenger/MessageObject;->type:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_399

    .line 771
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PopupNotificationActivity;->audioViews:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_304

    .line 772
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PopupNotificationActivity;->audioViews:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Landroid/view/ViewGroup;

    .line 773
    .restart local v32    # "view":Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PopupNotificationActivity;->audioViews:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 774
    const/16 v4, 0x12c

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v13

    check-cast v13, Lorg/telegram/ui/Components/PopupAudioView;

    .line 799
    .local v13, "cell":Lorg/telegram/ui/Components/PopupAudioView;
    :goto_2ef
    move-object/from16 v0, v23

    invoke-virtual {v13, v0}, Lorg/telegram/ui/Components/PopupAudioView;->setMessageObject(Lorg/telegram/messenger/MessageObject;)V

    .line 800
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/MediaController;->canDownloadMedia(I)Z

    move-result v4

    if-eqz v4, :cond_101

    .line 801
    invoke-virtual {v13}, Lorg/telegram/ui/Components/PopupAudioView;->downloadAudioIfNeed()V

    goto/16 :goto_101

    .line 776
    .end local v13    # "cell":Lorg/telegram/ui/Components/PopupAudioView;
    .end local v32    # "view":Landroid/view/ViewGroup;
    :cond_304
    new-instance v32, Lorg/telegram/ui/PopupNotificationActivity$FrameLayoutAnimationListener;

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    move-object/from16 v2, p0

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/PopupNotificationActivity$FrameLayoutAnimationListener;-><init>(Lorg/telegram/ui/PopupNotificationActivity;Landroid/content/Context;)V

    .line 778
    .restart local v32    # "view":Landroid/view/ViewGroup;
    new-instance v16, Landroid/widget/FrameLayout;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 779
    .restart local v16    # "frameLayout":Landroid/widget/FrameLayout;
    const/high16 v4, 0x41200000    # 10.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    const/high16 v5, 0x41200000    # 10.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    const/high16 v6, 0x41200000    # 10.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    const/high16 v7, 0x41200000    # 10.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 780
    const/4 v4, 0x0

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 781
    const/4 v4, -0x1

    const/high16 v5, -0x40800000    # -1.0f

    invoke-static {v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    move-object/from16 v0, v32

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 783
    new-instance v17, Landroid/widget/FrameLayout;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 784
    .local v17, "frameLayout1":Landroid/widget/FrameLayout;
    const/4 v4, -0x1

    const/high16 v5, -0x40000000    # -2.0f

    const/16 v6, 0x11

    const/high16 v7, 0x41a00000    # 20.0f

    const/4 v8, 0x0

    const/high16 v9, 0x41a00000    # 20.0f

    const/4 v10, 0x0

    invoke-static/range {v4 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 785
    new-instance v13, Lorg/telegram/ui/Components/PopupAudioView;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lorg/telegram/ui/Components/PopupAudioView;-><init>(Landroid/content/Context;)V

    .line 786
    .restart local v13    # "cell":Lorg/telegram/ui/Components/PopupAudioView;
    const/16 v4, 0x12c

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v13, v4}, Lorg/telegram/ui/Components/PopupAudioView;->setTag(Ljava/lang/Object;)V

    .line 787
    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 789
    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 791
    new-instance v4, Lorg/telegram/ui/PopupNotificationActivity$9;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lorg/telegram/ui/PopupNotificationActivity$9;-><init>(Lorg/telegram/ui/PopupNotificationActivity;)V

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_2ef

    .line 804
    .end local v13    # "cell":Lorg/telegram/ui/Components/PopupAudioView;
    .end local v16    # "frameLayout":Landroid/widget/FrameLayout;
    .end local v17    # "frameLayout1":Landroid/widget/FrameLayout;
    .end local v32    # "view":Landroid/view/ViewGroup;
    :cond_399
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PopupNotificationActivity;->textViews:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_3dc

    .line 805
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PopupNotificationActivity;->textViews:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Landroid/view/ViewGroup;

    .line 806
    .restart local v32    # "view":Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PopupNotificationActivity;->textViews:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 836
    :goto_3b6
    const/16 v4, 0x12d

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/TextView;

    .line 837
    .restart local v26    # "messageText":Landroid/widget/TextView;
    const/4 v4, 0x2

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    iget v5, v5, Lorg/telegram/messenger/MessagesController;->fontSize:I

    int-to-float v5, v5

    move-object/from16 v0, v26

    invoke-virtual {v0, v4, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 838
    move-object/from16 v0, v23

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_101

    .line 808
    .end local v26    # "messageText":Landroid/widget/TextView;
    .end local v32    # "view":Landroid/view/ViewGroup;
    :cond_3dc
    new-instance v32, Lorg/telegram/ui/PopupNotificationActivity$FrameLayoutAnimationListener;

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    move-object/from16 v2, p0

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/PopupNotificationActivity$FrameLayoutAnimationListener;-><init>(Lorg/telegram/ui/PopupNotificationActivity;Landroid/content/Context;)V

    .line 810
    .restart local v32    # "view":Landroid/view/ViewGroup;
    new-instance v29, Landroid/widget/ScrollView;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 811
    .local v29, "scrollView":Landroid/widget/ScrollView;
    const/4 v4, 0x1

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    .line 812
    const/4 v4, -0x1

    const/high16 v5, -0x40800000    # -1.0f

    invoke-static {v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    move-object/from16 v0, v32

    move-object/from16 v1, v29

    invoke-virtual {v0, v1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 814
    new-instance v22, Landroid/widget/LinearLayout;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 815
    .local v22, "linearLayout":Landroid/widget/LinearLayout;
    const/4 v4, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 816
    const/4 v4, 0x0

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 817
    const/4 v4, -0x1

    const/4 v5, -0x2

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createScroll(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    move-object/from16 v0, v29

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v4}, Landroid/widget/ScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 818
    const/high16 v4, 0x41200000    # 10.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    const/high16 v5, 0x41200000    # 10.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    const/high16 v6, 0x41200000    # 10.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    const/high16 v7, 0x41200000    # 10.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 819
    new-instance v4, Lorg/telegram/ui/PopupNotificationActivity$10;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lorg/telegram/ui/PopupNotificationActivity$10;-><init>(Lorg/telegram/ui/PopupNotificationActivity;)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 826
    new-instance v30, Landroid/widget/TextView;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 827
    .restart local v30    # "textView":Landroid/widget/TextView;
    const/4 v4, 0x1

    const/high16 v5, 0x41800000    # 16.0f

    move-object/from16 v0, v30

    invoke-virtual {v0, v4, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 828
    const/16 v4, 0x12d

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 829
    const-string v4, "windowBackgroundWhiteBlackText"

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 830
    const-string v4, "windowBackgroundWhiteBlackText"

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setLinkTextColor(I)V

    .line 831
    const/16 v4, 0x11

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 832
    const/4 v4, -0x1

    const/4 v5, -0x2

    const/16 v6, 0x11

    invoke-static {v4, v5, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(III)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    move-object/from16 v0, v22

    move-object/from16 v1, v30

    invoke-virtual {v0, v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 834
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_3b6

    .line 853
    .end local v22    # "linearLayout":Landroid/widget/LinearLayout;
    .end local v29    # "scrollView":Landroid/widget/ScrollView;
    .end local v30    # "textView":Landroid/widget/TextView;
    .restart local v19    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .restart local v33    # "widht":I
    :cond_4a8
    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/ui/PopupNotificationActivity;->currentMessageNum:I

    add-int/lit8 v4, v4, -0x1

    move/from16 v0, p1

    if-ne v0, v4, :cond_4bb

    .line 854
    move/from16 v0, v33

    neg-int v4, v0

    move-object/from16 v0, v19

    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto/16 :goto_148

    .line 855
    :cond_4bb
    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/ui/PopupNotificationActivity;->currentMessageNum:I

    add-int/lit8 v4, v4, 0x1

    move/from16 v0, p1

    if-ne v0, v4, :cond_148

    .line 856
    move/from16 v0, v33

    move-object/from16 v1, v19

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto/16 :goto_148
.end method

.method private handleIntent(Landroid/content/Intent;)V
    .registers 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    .line 972
    if-eqz p1, :cond_40

    const-string v1, "force"

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_40

    const/4 v1, 0x1

    :goto_c
    iput-boolean v1, p0, Lorg/telegram/ui/PopupNotificationActivity;->isReply:Z

    .line 973
    iget-boolean v1, p0, Lorg/telegram/ui/PopupNotificationActivity;->isReply:Z

    if-eqz v1, :cond_42

    .line 974
    invoke-static {}, Lorg/telegram/messenger/NotificationsController;->getInstance()Lorg/telegram/messenger/NotificationsController;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/NotificationsController;->popupReplyMessages:Ljava/util/ArrayList;

    iput-object v1, p0, Lorg/telegram/ui/PopupNotificationActivity;->popupMessages:Ljava/util/ArrayList;

    .line 978
    :goto_1a
    const-string v1, "keyguard"

    invoke-virtual {p0, v1}, Lorg/telegram/ui/PopupNotificationActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 979
    .local v0, "km":Landroid/app/KeyguardManager;
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v1

    if-nez v1, :cond_2c

    sget-boolean v1, Lorg/telegram/messenger/ApplicationLoader;->isScreenOn:Z

    if-nez v1, :cond_4b

    .line 980
    :cond_2c
    invoke-virtual {p0}, Lorg/telegram/ui/PopupNotificationActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const v3, 0x280802

    invoke-virtual {v1, v3}, Landroid/view/Window;->addFlags(I)V

    .line 993
    :goto_36
    iget-object v1, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    if-nez v1, :cond_3c

    .line 994
    iput v2, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentMessageNum:I

    .line 996
    :cond_3c
    invoke-direct {p0}, Lorg/telegram/ui/PopupNotificationActivity;->getNewMessage()V

    .line 997
    return-void

    .end local v0    # "km":Landroid/app/KeyguardManager;
    :cond_40
    move v1, v2

    .line 972
    goto :goto_c

    .line 976
    :cond_42
    invoke-static {}, Lorg/telegram/messenger/NotificationsController;->getInstance()Lorg/telegram/messenger/NotificationsController;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/NotificationsController;->popupMessages:Ljava/util/ArrayList;

    iput-object v1, p0, Lorg/telegram/ui/PopupNotificationActivity;->popupMessages:Ljava/util/ArrayList;

    goto :goto_1a

    .line 986
    .restart local v0    # "km":Landroid/app/KeyguardManager;
    :cond_4b
    invoke-virtual {p0}, Lorg/telegram/ui/PopupNotificationActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const v3, 0x280800

    invoke-virtual {v1, v3}, Landroid/view/Window;->addFlags(I)V

    .line 990
    invoke-virtual {p0}, Lorg/telegram/ui/PopupNotificationActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_36
.end method

.method private openCurrentMessage()V
    .registers 9

    .prologue
    .line 1031
    iget-object v4, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    if-nez v4, :cond_5

    .line 1051
    :goto_4
    return-void

    .line 1034
    :cond_5
    new-instance v2, Landroid/content/Intent;

    sget-object v4, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-class v5, Lorg/telegram/ui/LaunchActivity;

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1035
    .local v2, "intent":Landroid/content/Intent;
    iget-object v4, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v0

    .line 1036
    .local v0, "dialog_id":J
    long-to-int v4, v0

    if-eqz v4, :cond_57

    .line 1037
    long-to-int v3, v0

    .line 1038
    .local v3, "lower_id":I
    if-gez v3, :cond_51

    .line 1039
    const-string v4, "chatId"

    neg-int v5, v3

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1046
    .end local v3    # "lower_id":I
    :goto_20
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "com.tmessages.openchat"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    const v5, 0x7fffffff

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1047
    const v4, 0x8000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1048
    invoke-virtual {p0, v2}, Lorg/telegram/ui/PopupNotificationActivity;->startActivity(Landroid/content/Intent;)V

    .line 1049
    invoke-virtual {p0}, Lorg/telegram/ui/PopupNotificationActivity;->onFinish()V

    .line 1050
    invoke-virtual {p0}, Lorg/telegram/ui/PopupNotificationActivity;->finish()V

    goto :goto_4

    .line 1041
    .restart local v3    # "lower_id":I
    :cond_51
    const-string v4, "userId"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_20

    .line 1044
    .end local v3    # "lower_id":I
    :cond_57
    const-string v4, "encId"

    const/16 v5, 0x20

    shr-long v6, v0, v5

    long-to-int v5, v6

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_20
.end method

.method private prepareLayouts(I)V
    .registers 12
    .param p1, "move"    # I

    .prologue
    const/16 v9, 0x33

    const/4 v8, -0x1

    const/high16 v7, 0x41c00000    # 24.0f

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 881
    if-nez p1, :cond_49

    .line 882
    iget-object v4, p0, Lorg/telegram/ui/PopupNotificationActivity;->centerView:Landroid/view/ViewGroup;

    invoke-direct {p0, v4}, Lorg/telegram/ui/PopupNotificationActivity;->reuseView(Landroid/view/ViewGroup;)V

    .line 883
    iget-object v4, p0, Lorg/telegram/ui/PopupNotificationActivity;->leftView:Landroid/view/ViewGroup;

    invoke-direct {p0, v4}, Lorg/telegram/ui/PopupNotificationActivity;->reuseView(Landroid/view/ViewGroup;)V

    .line 884
    iget-object v4, p0, Lorg/telegram/ui/PopupNotificationActivity;->rightView:Landroid/view/ViewGroup;

    invoke-direct {p0, v4}, Lorg/telegram/ui/PopupNotificationActivity;->reuseView(Landroid/view/ViewGroup;)V

    .line 885
    iget v4, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentMessageNum:I

    add-int/lit8 v0, v4, -0x1

    .local v0, "a":I
    :goto_1c
    iget v4, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentMessageNum:I

    add-int/lit8 v4, v4, 0x2

    if-ge v0, v4, :cond_62

    .line 886
    iget v4, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentMessageNum:I

    add-int/lit8 v4, v4, -0x1

    if-ne v0, v4, :cond_31

    .line 887
    invoke-direct {p0, v0, v5}, Lorg/telegram/ui/PopupNotificationActivity;->getViewForMessage(IZ)Landroid/view/ViewGroup;

    move-result-object v4

    iput-object v4, p0, Lorg/telegram/ui/PopupNotificationActivity;->leftView:Landroid/view/ViewGroup;

    .line 885
    :cond_2e
    :goto_2e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    .line 888
    :cond_31
    iget v4, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentMessageNum:I

    if-ne v0, v4, :cond_3c

    .line 889
    invoke-direct {p0, v0, v5}, Lorg/telegram/ui/PopupNotificationActivity;->getViewForMessage(IZ)Landroid/view/ViewGroup;

    move-result-object v4

    iput-object v4, p0, Lorg/telegram/ui/PopupNotificationActivity;->centerView:Landroid/view/ViewGroup;

    goto :goto_2e

    .line 890
    :cond_3c
    iget v4, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentMessageNum:I

    add-int/lit8 v4, v4, 0x1

    if-ne v0, v4, :cond_2e

    .line 891
    invoke-direct {p0, v0, v5}, Lorg/telegram/ui/PopupNotificationActivity;->getViewForMessage(IZ)Landroid/view/ViewGroup;

    move-result-object v4

    iput-object v4, p0, Lorg/telegram/ui/PopupNotificationActivity;->rightView:Landroid/view/ViewGroup;

    goto :goto_2e

    .line 894
    .end local v0    # "a":I
    :cond_49
    if-ne p1, v5, :cond_63

    .line 895
    iget-object v4, p0, Lorg/telegram/ui/PopupNotificationActivity;->rightView:Landroid/view/ViewGroup;

    invoke-direct {p0, v4}, Lorg/telegram/ui/PopupNotificationActivity;->reuseView(Landroid/view/ViewGroup;)V

    .line 896
    iget-object v4, p0, Lorg/telegram/ui/PopupNotificationActivity;->centerView:Landroid/view/ViewGroup;

    iput-object v4, p0, Lorg/telegram/ui/PopupNotificationActivity;->rightView:Landroid/view/ViewGroup;

    .line 897
    iget-object v4, p0, Lorg/telegram/ui/PopupNotificationActivity;->leftView:Landroid/view/ViewGroup;

    iput-object v4, p0, Lorg/telegram/ui/PopupNotificationActivity;->centerView:Landroid/view/ViewGroup;

    .line 898
    iget v4, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentMessageNum:I

    add-int/lit8 v4, v4, -0x1

    invoke-direct {p0, v4, v5}, Lorg/telegram/ui/PopupNotificationActivity;->getViewForMessage(IZ)Landroid/view/ViewGroup;

    move-result-object v4

    iput-object v4, p0, Lorg/telegram/ui/PopupNotificationActivity;->leftView:Landroid/view/ViewGroup;

    .line 935
    :cond_62
    :goto_62
    return-void

    .line 899
    :cond_63
    const/4 v4, 0x2

    if-ne p1, v4, :cond_7e

    .line 900
    iget-object v4, p0, Lorg/telegram/ui/PopupNotificationActivity;->leftView:Landroid/view/ViewGroup;

    invoke-direct {p0, v4}, Lorg/telegram/ui/PopupNotificationActivity;->reuseView(Landroid/view/ViewGroup;)V

    .line 901
    iget-object v4, p0, Lorg/telegram/ui/PopupNotificationActivity;->centerView:Landroid/view/ViewGroup;

    iput-object v4, p0, Lorg/telegram/ui/PopupNotificationActivity;->leftView:Landroid/view/ViewGroup;

    .line 902
    iget-object v4, p0, Lorg/telegram/ui/PopupNotificationActivity;->rightView:Landroid/view/ViewGroup;

    iput-object v4, p0, Lorg/telegram/ui/PopupNotificationActivity;->centerView:Landroid/view/ViewGroup;

    .line 903
    iget v4, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentMessageNum:I

    add-int/lit8 v4, v4, 0x1

    invoke-direct {p0, v4, v5}, Lorg/telegram/ui/PopupNotificationActivity;->getViewForMessage(IZ)Landroid/view/ViewGroup;

    move-result-object v4

    iput-object v4, p0, Lorg/telegram/ui/PopupNotificationActivity;->rightView:Landroid/view/ViewGroup;

    goto :goto_62

    .line 904
    :cond_7e
    const/4 v4, 0x3

    if-ne p1, v4, :cond_c5

    .line 905
    iget-object v4, p0, Lorg/telegram/ui/PopupNotificationActivity;->rightView:Landroid/view/ViewGroup;

    if-eqz v4, :cond_62

    .line 906
    iget-object v4, p0, Lorg/telegram/ui/PopupNotificationActivity;->rightView:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    iget v2, v4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 907
    .local v2, "offset":I
    iget-object v4, p0, Lorg/telegram/ui/PopupNotificationActivity;->rightView:Landroid/view/ViewGroup;

    invoke-direct {p0, v4}, Lorg/telegram/ui/PopupNotificationActivity;->reuseView(Landroid/view/ViewGroup;)V

    .line 908
    iget v4, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentMessageNum:I

    add-int/lit8 v4, v4, 0x1

    invoke-direct {p0, v4, v6}, Lorg/telegram/ui/PopupNotificationActivity;->getViewForMessage(IZ)Landroid/view/ViewGroup;

    move-result-object v4

    iput-object v4, p0, Lorg/telegram/ui/PopupNotificationActivity;->rightView:Landroid/view/ViewGroup;

    if-eqz v4, :cond_62

    .line 909
    sget-object v4, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    sub-int v3, v4, v5

    .line 910
    .local v3, "widht":I
    iget-object v4, p0, Lorg/telegram/ui/PopupNotificationActivity;->rightView:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 911
    .local v1, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iput v9, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 912
    iput v8, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 913
    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 914
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 915
    iget-object v4, p0, Lorg/telegram/ui/PopupNotificationActivity;->rightView:Landroid/view/ViewGroup;

    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 916
    iget-object v4, p0, Lorg/telegram/ui/PopupNotificationActivity;->rightView:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->invalidate()V

    goto :goto_62

    .line 919
    .end local v1    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .end local v2    # "offset":I
    .end local v3    # "widht":I
    :cond_c5
    const/4 v4, 0x4

    if-ne p1, v4, :cond_62

    .line 920
    iget-object v4, p0, Lorg/telegram/ui/PopupNotificationActivity;->leftView:Landroid/view/ViewGroup;

    if-eqz v4, :cond_62

    .line 921
    iget-object v4, p0, Lorg/telegram/ui/PopupNotificationActivity;->leftView:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    iget v2, v4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 922
    .restart local v2    # "offset":I
    iget-object v4, p0, Lorg/telegram/ui/PopupNotificationActivity;->leftView:Landroid/view/ViewGroup;

    invoke-direct {p0, v4}, Lorg/telegram/ui/PopupNotificationActivity;->reuseView(Landroid/view/ViewGroup;)V

    .line 923
    invoke-direct {p0, v6, v6}, Lorg/telegram/ui/PopupNotificationActivity;->getViewForMessage(IZ)Landroid/view/ViewGroup;

    move-result-object v4

    iput-object v4, p0, Lorg/telegram/ui/PopupNotificationActivity;->leftView:Landroid/view/ViewGroup;

    if-eqz v4, :cond_62

    .line 924
    sget-object v4, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    sub-int v3, v4, v5

    .line 925
    .restart local v3    # "widht":I
    iget-object v4, p0, Lorg/telegram/ui/PopupNotificationActivity;->leftView:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 926
    .restart local v1    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iput v9, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 927
    iput v8, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 928
    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 929
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 930
    iget-object v4, p0, Lorg/telegram/ui/PopupNotificationActivity;->leftView:Landroid/view/ViewGroup;

    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 931
    iget-object v4, p0, Lorg/telegram/ui/PopupNotificationActivity;->leftView:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->invalidate()V

    goto/16 :goto_62
.end method

.method private reuseView(Landroid/view/ViewGroup;)V
    .registers 4
    .param p1, "view"    # Landroid/view/ViewGroup;

    .prologue
    .line 866
    if-nez p1, :cond_3

    .line 878
    :cond_2
    :goto_2
    return-void

    .line 869
    :cond_3
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 870
    .local v0, "tag":I
    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 871
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1b

    .line 872
    iget-object v1, p0, Lorg/telegram/ui/PopupNotificationActivity;->textViews:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 873
    :cond_1b
    const/4 v1, 0x2

    if-ne v0, v1, :cond_24

    .line 874
    iget-object v1, p0, Lorg/telegram/ui/PopupNotificationActivity;->imageViews:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 875
    :cond_24
    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 876
    iget-object v1, p0, Lorg/telegram/ui/PopupNotificationActivity;->audioViews:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method private setTypingAnimation(Z)V
    .registers 9
    .param p1, "start"    # Z

    .prologue
    const/4 v3, 0x0

    .line 1158
    iget-object v2, p0, Lorg/telegram/ui/PopupNotificationActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    if-nez v2, :cond_6

    .line 1204
    :cond_5
    :goto_5
    return-void

    .line 1161
    :cond_6
    if-eqz p1, :cond_e8

    .line 1163
    :try_start_8
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController;->printingStringsTypes:Ljava/util/HashMap;

    iget-object v3, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 1164
    .local v1, "type":Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_53

    .line 1165
    iget-object v2, p0, Lorg/telegram/ui/PopupNotificationActivity;->onlineTextView:Landroid/widget/TextView;

    iget-object v3, p0, Lorg/telegram/ui/PopupNotificationActivity;->typingDotsDrawable:Lorg/telegram/ui/Components/TypingDotsDrawable;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1166
    iget-object v2, p0, Lorg/telegram/ui/PopupNotificationActivity;->onlineTextView:Landroid/widget/TextView;

    const/high16 v3, 0x40800000    # 4.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 1167
    iget-object v2, p0, Lorg/telegram/ui/PopupNotificationActivity;->typingDotsDrawable:Lorg/telegram/ui/Components/TypingDotsDrawable;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/TypingDotsDrawable;->start()V

    .line 1168
    iget-object v2, p0, Lorg/telegram/ui/PopupNotificationActivity;->recordStatusDrawable:Lorg/telegram/ui/Components/RecordStatusDrawable;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/RecordStatusDrawable;->stop()V

    .line 1169
    iget-object v2, p0, Lorg/telegram/ui/PopupNotificationActivity;->sendingFileDrawable:Lorg/telegram/ui/Components/SendingFileDrawable;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/SendingFileDrawable;->stop()V

    .line 1170
    iget-object v2, p0, Lorg/telegram/ui/PopupNotificationActivity;->playingGameDrawable:Lorg/telegram/ui/Components/PlayingGameDrawable;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/PlayingGameDrawable;->stop()V
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_4d} :catch_4e

    goto :goto_5

    .line 1193
    .end local v1    # "type":Ljava/lang/Integer;
    :catch_4e
    move-exception v0

    .line 1194
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_5

    .line 1171
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "type":Ljava/lang/Integer;
    :cond_53
    :try_start_53
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_84

    .line 1172
    iget-object v2, p0, Lorg/telegram/ui/PopupNotificationActivity;->onlineTextView:Landroid/widget/TextView;

    iget-object v3, p0, Lorg/telegram/ui/PopupNotificationActivity;->recordStatusDrawable:Lorg/telegram/ui/Components/RecordStatusDrawable;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1173
    iget-object v2, p0, Lorg/telegram/ui/PopupNotificationActivity;->onlineTextView:Landroid/widget/TextView;

    const/high16 v3, 0x40800000    # 4.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 1174
    iget-object v2, p0, Lorg/telegram/ui/PopupNotificationActivity;->recordStatusDrawable:Lorg/telegram/ui/Components/RecordStatusDrawable;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/RecordStatusDrawable;->start()V

    .line 1175
    iget-object v2, p0, Lorg/telegram/ui/PopupNotificationActivity;->typingDotsDrawable:Lorg/telegram/ui/Components/TypingDotsDrawable;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/TypingDotsDrawable;->stop()V

    .line 1176
    iget-object v2, p0, Lorg/telegram/ui/PopupNotificationActivity;->sendingFileDrawable:Lorg/telegram/ui/Components/SendingFileDrawable;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/SendingFileDrawable;->stop()V

    .line 1177
    iget-object v2, p0, Lorg/telegram/ui/PopupNotificationActivity;->playingGameDrawable:Lorg/telegram/ui/Components/PlayingGameDrawable;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/PlayingGameDrawable;->stop()V

    goto :goto_5

    .line 1178
    :cond_84
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_b6

    .line 1179
    iget-object v2, p0, Lorg/telegram/ui/PopupNotificationActivity;->onlineTextView:Landroid/widget/TextView;

    iget-object v3, p0, Lorg/telegram/ui/PopupNotificationActivity;->sendingFileDrawable:Lorg/telegram/ui/Components/SendingFileDrawable;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1180
    iget-object v2, p0, Lorg/telegram/ui/PopupNotificationActivity;->onlineTextView:Landroid/widget/TextView;

    const/high16 v3, 0x40800000    # 4.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 1181
    iget-object v2, p0, Lorg/telegram/ui/PopupNotificationActivity;->sendingFileDrawable:Lorg/telegram/ui/Components/SendingFileDrawable;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/SendingFileDrawable;->start()V

    .line 1182
    iget-object v2, p0, Lorg/telegram/ui/PopupNotificationActivity;->typingDotsDrawable:Lorg/telegram/ui/Components/TypingDotsDrawable;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/TypingDotsDrawable;->stop()V

    .line 1183
    iget-object v2, p0, Lorg/telegram/ui/PopupNotificationActivity;->recordStatusDrawable:Lorg/telegram/ui/Components/RecordStatusDrawable;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/RecordStatusDrawable;->stop()V

    .line 1184
    iget-object v2, p0, Lorg/telegram/ui/PopupNotificationActivity;->playingGameDrawable:Lorg/telegram/ui/Components/PlayingGameDrawable;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/PlayingGameDrawable;->stop()V

    goto/16 :goto_5

    .line 1185
    :cond_b6
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_5

    .line 1186
    iget-object v2, p0, Lorg/telegram/ui/PopupNotificationActivity;->onlineTextView:Landroid/widget/TextView;

    iget-object v3, p0, Lorg/telegram/ui/PopupNotificationActivity;->playingGameDrawable:Lorg/telegram/ui/Components/PlayingGameDrawable;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1187
    iget-object v2, p0, Lorg/telegram/ui/PopupNotificationActivity;->onlineTextView:Landroid/widget/TextView;

    const/high16 v3, 0x40800000    # 4.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 1188
    iget-object v2, p0, Lorg/telegram/ui/PopupNotificationActivity;->playingGameDrawable:Lorg/telegram/ui/Components/PlayingGameDrawable;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/PlayingGameDrawable;->start()V

    .line 1189
    iget-object v2, p0, Lorg/telegram/ui/PopupNotificationActivity;->typingDotsDrawable:Lorg/telegram/ui/Components/TypingDotsDrawable;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/TypingDotsDrawable;->stop()V

    .line 1190
    iget-object v2, p0, Lorg/telegram/ui/PopupNotificationActivity;->recordStatusDrawable:Lorg/telegram/ui/Components/RecordStatusDrawable;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/RecordStatusDrawable;->stop()V

    .line 1191
    iget-object v2, p0, Lorg/telegram/ui/PopupNotificationActivity;->sendingFileDrawable:Lorg/telegram/ui/Components/SendingFileDrawable;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/SendingFileDrawable;->stop()V
    :try_end_e6
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_e6} :catch_4e

    goto/16 :goto_5

    .line 1197
    .end local v1    # "type":Ljava/lang/Integer;
    :cond_e8
    iget-object v2, p0, Lorg/telegram/ui/PopupNotificationActivity;->onlineTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v3, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1198
    iget-object v2, p0, Lorg/telegram/ui/PopupNotificationActivity;->onlineTextView:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 1199
    iget-object v2, p0, Lorg/telegram/ui/PopupNotificationActivity;->typingDotsDrawable:Lorg/telegram/ui/Components/TypingDotsDrawable;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/TypingDotsDrawable;->stop()V

    .line 1200
    iget-object v2, p0, Lorg/telegram/ui/PopupNotificationActivity;->recordStatusDrawable:Lorg/telegram/ui/Components/RecordStatusDrawable;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/RecordStatusDrawable;->stop()V

    .line 1201
    iget-object v2, p0, Lorg/telegram/ui/PopupNotificationActivity;->recordStatusDrawable:Lorg/telegram/ui/Components/RecordStatusDrawable;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/RecordStatusDrawable;->stop()V

    .line 1202
    iget-object v2, p0, Lorg/telegram/ui/PopupNotificationActivity;->sendingFileDrawable:Lorg/telegram/ui/Components/SendingFileDrawable;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/SendingFileDrawable;->stop()V

    goto/16 :goto_5
.end method

.method private switchToNextMessage()V
    .registers 7

    .prologue
    const/4 v2, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 505
    iget-object v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->popupMessages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v5, :cond_4f

    .line 506
    iget v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentMessageNum:I

    iget-object v1, p0, Lorg/telegram/ui/PopupNotificationActivity;->popupMessages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_50

    .line 507
    iget v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentMessageNum:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentMessageNum:I

    .line 511
    :goto_1d
    iget-object v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->popupMessages:Ljava/util/ArrayList;

    iget v1, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentMessageNum:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MessageObject;

    iput-object v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    .line 512
    invoke-direct {p0, v2}, Lorg/telegram/ui/PopupNotificationActivity;->updateInterfaceForCurrentMessage(I)V

    .line 513
    iget-object v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->countText:Landroid/widget/TextView;

    const-string v1, "%d/%d"

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentMessageNum:I

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    iget-object v3, p0, Lorg/telegram/ui/PopupNotificationActivity;->popupMessages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 515
    :cond_4f
    return-void

    .line 509
    :cond_50
    iput v4, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentMessageNum:I

    goto :goto_1d
.end method

.method private switchToPreviousMessage()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    .line 518
    iget-object v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->popupMessages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v5, :cond_47

    .line 519
    iget v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentMessageNum:I

    if-lez v0, :cond_48

    .line 520
    iget v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentMessageNum:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentMessageNum:I

    .line 524
    :goto_13
    iget-object v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->popupMessages:Ljava/util/ArrayList;

    iget v1, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentMessageNum:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MessageObject;

    iput-object v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    .line 525
    invoke-direct {p0, v5}, Lorg/telegram/ui/PopupNotificationActivity;->updateInterfaceForCurrentMessage(I)V

    .line 526
    iget-object v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->countText:Landroid/widget/TextView;

    const-string v1, "%d/%d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentMessageNum:I

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    iget-object v3, p0, Lorg/telegram/ui/PopupNotificationActivity;->popupMessages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 528
    :cond_47
    return-void

    .line 522
    :cond_48
    iget-object v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->popupMessages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentMessageNum:I

    goto :goto_13
.end method

.method private updateInterfaceForCurrentMessage(I)V
    .registers 11
    .param p1, "move"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x0

    .line 1054
    iget-object v4, p0, Lorg/telegram/ui/PopupNotificationActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    if-nez v4, :cond_7

    .line 1094
    :goto_6
    return-void

    .line 1057
    :cond_7
    iput-object v5, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    .line 1058
    iput-object v5, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    .line 1059
    iget-object v4, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v0

    .line 1060
    .local v0, "dialog_id":J
    iget-object v4, p0, Lorg/telegram/ui/PopupNotificationActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v4, v0, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setDialogId(J)V

    .line 1061
    long-to-int v4, v0

    if-eqz v4, :cond_81

    .line 1062
    long-to-int v3, v0

    .line 1063
    .local v3, "lower_id":I
    if-lez v3, :cond_5d

    .line 1064
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v4

    iput-object v4, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    .line 1074
    .end local v3    # "lower_id":I
    :goto_2a
    iget-object v4, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v4, :cond_a3

    iget-object v4, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v4, :cond_a3

    .line 1075
    iget-object v4, p0, Lorg/telegram/ui/PopupNotificationActivity;->nameTextView:Landroid/widget/TextView;

    iget-object v5, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1076
    iget-object v4, p0, Lorg/telegram/ui/PopupNotificationActivity;->onlineTextView:Landroid/widget/TextView;

    iget-object v5, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v5}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1077
    iget-object v4, p0, Lorg/telegram/ui/PopupNotificationActivity;->nameTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v8, v8, v8, v8}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 1078
    iget-object v4, p0, Lorg/telegram/ui/PopupNotificationActivity;->nameTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 1090
    :cond_50
    :goto_50
    invoke-direct {p0, p1}, Lorg/telegram/ui/PopupNotificationActivity;->prepareLayouts(I)V

    .line 1091
    invoke-direct {p0}, Lorg/telegram/ui/PopupNotificationActivity;->updateSubtitle()V

    .line 1092
    invoke-direct {p0}, Lorg/telegram/ui/PopupNotificationActivity;->checkAndUpdateAvatar()V

    .line 1093
    invoke-direct {p0, v8}, Lorg/telegram/ui/PopupNotificationActivity;->applyViewsLayoutParams(I)V

    goto :goto_6

    .line 1066
    .restart local v3    # "lower_id":I
    :cond_5d
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    neg-int v5, v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v4

    iput-object v4, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    .line 1067
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v5, v5, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v4

    iput-object v4, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    goto :goto_2a

    .line 1070
    .end local v3    # "lower_id":I
    :cond_81
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    const/16 v5, 0x20

    shr-long v6, v0, v5

    long-to-int v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/MessagesController;->getEncryptedChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    move-result-object v2

    .line 1071
    .local v2, "encryptedChat":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget v5, v2, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->user_id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v4

    iput-object v4, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    goto :goto_2a

    .line 1079
    .end local v2    # "encryptedChat":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    :cond_a3
    iget-object v4, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v4, :cond_50

    .line 1080
    iget-object v4, p0, Lorg/telegram/ui/PopupNotificationActivity;->nameTextView:Landroid/widget/TextView;

    iget-object v5, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v5}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1081
    long-to-int v4, v0

    if-nez v4, :cond_c9

    .line 1082
    iget-object v4, p0, Lorg/telegram/ui/PopupNotificationActivity;->nameTextView:Landroid/widget/TextView;

    const v5, 0x7f020135

    invoke-virtual {v4, v5, v8, v8, v8}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 1083
    iget-object v4, p0, Lorg/telegram/ui/PopupNotificationActivity;->nameTextView:Landroid/widget/TextView;

    const/high16 v5, 0x40800000    # 4.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    goto :goto_50

    .line 1085
    :cond_c9
    iget-object v4, p0, Lorg/telegram/ui/PopupNotificationActivity;->nameTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v8, v8, v8, v8}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 1086
    iget-object v4, p0, Lorg/telegram/ui/PopupNotificationActivity;->nameTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    goto/16 :goto_50
.end method

.method private updateSubtitle()V
    .registers 7

    .prologue
    .line 1097
    iget-object v2, p0, Lorg/telegram/ui/PopupNotificationActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    if-nez v2, :cond_5

    .line 1126
    :cond_4
    :goto_4
    return-void

    .line 1100
    :cond_5
    iget-object v2, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-nez v2, :cond_4

    iget-object v2, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v2, :cond_4

    .line 1103
    iget-object v2, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$User;->id:I

    div-int/lit16 v2, v2, 0x3e8

    const/16 v3, 0x309

    if-eq v2, v3, :cond_cd

    iget-object v2, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$User;->id:I

    div-int/lit16 v2, v2, 0x3e8

    const/16 v3, 0x14d

    if-eq v2, v3, :cond_cd

    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/ContactsController;->contactsDict:Landroid/util/SparseArray;

    iget-object v3, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_cd

    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/ContactsController;->contactsDict:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-nez v2, :cond_47

    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/ContactsController;->isLoadingContacts()Z

    move-result v2

    if-nez v2, :cond_cd

    .line 1104
    :cond_47
    iget-object v2, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    if-eqz v2, :cond_c1

    iget-object v2, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_c1

    .line 1105
    iget-object v2, p0, Lorg/telegram/ui/PopupNotificationActivity;->nameTextView:Landroid/widget/TextView;

    invoke-static {}, Lorg/telegram/PhoneFormat/PhoneFormat;->getInstance()Lorg/telegram/PhoneFormat/PhoneFormat;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "+"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/PhoneFormat/PhoneFormat;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1112
    :goto_7b
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController;->printingStrings:Ljava/util/HashMap;

    iget-object v3, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 1113
    .local v0, "printString":Ljava/lang/CharSequence;
    if-eqz v0, :cond_99

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_d9

    .line 1114
    :cond_99
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/telegram/ui/PopupNotificationActivity;->lastPrintString:Ljava/lang/CharSequence;

    .line 1115
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lorg/telegram/ui/PopupNotificationActivity;->setTypingAnimation(Z)V

    .line 1116
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v1

    .line 1117
    .local v1, "user":Lorg/telegram/tgnet/TLRPC$User;
    if-eqz v1, :cond_b4

    .line 1118
    iput-object v1, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    .line 1120
    :cond_b4
    iget-object v2, p0, Lorg/telegram/ui/PopupNotificationActivity;->onlineTextView:Landroid/widget/TextView;

    iget-object v3, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->formatUserStatus(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 1107
    .end local v0    # "printString":Ljava/lang/CharSequence;
    .end local v1    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_c1
    iget-object v2, p0, Lorg/telegram/ui/PopupNotificationActivity;->nameTextView:Landroid/widget/TextView;

    iget-object v3, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v3}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7b

    .line 1110
    :cond_cd
    iget-object v2, p0, Lorg/telegram/ui/PopupNotificationActivity;->nameTextView:Landroid/widget/TextView;

    iget-object v3, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v3}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7b

    .line 1122
    .restart local v0    # "printString":Ljava/lang/CharSequence;
    :cond_d9
    iput-object v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->lastPrintString:Ljava/lang/CharSequence;

    .line 1123
    iget-object v2, p0, Lorg/telegram/ui/PopupNotificationActivity;->onlineTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1124
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lorg/telegram/ui/PopupNotificationActivity;->setTypingAnimation(Z)V

    goto/16 :goto_4
.end method


# virtual methods
.method public checkTransitionAnimation()Z
    .registers 7

    .prologue
    .line 531
    iget-boolean v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->animationInProgress:Z

    if-eqz v0, :cond_20

    iget-wide v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->animationStartTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x190

    sub-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gez v0, :cond_20

    .line 532
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->animationInProgress:Z

    .line 533
    iget-object v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->onAnimationEndRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_20

    .line 534
    iget-object v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->onAnimationEndRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 535
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->onAnimationEndRunnable:Ljava/lang/Runnable;

    .line 538
    :cond_20
    iget-boolean v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->animationInProgress:Z

    return v0
.end method

.method public varargs didReceivedNotification(I[Ljava/lang/Object;)V
    .registers 15
    .param p1, "id"    # I
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    const/16 v11, 0x12c

    const/4 v10, 0x3

    const/4 v9, 0x0

    .line 1240
    sget v8, Lorg/telegram/messenger/NotificationCenter;->appDidLogout:I

    if-ne p1, v8, :cond_f

    .line 1241
    invoke-virtual {p0}, Lorg/telegram/ui/PopupNotificationActivity;->onFinish()V

    .line 1242
    invoke-virtual {p0}, Lorg/telegram/ui/PopupNotificationActivity;->finish()V

    .line 1308
    :cond_e
    :goto_e
    return-void

    .line 1243
    :cond_f
    sget v8, Lorg/telegram/messenger/NotificationCenter;->pushMessagesUpdated:I

    if-ne p1, v8, :cond_17

    .line 1244
    invoke-direct {p0}, Lorg/telegram/ui/PopupNotificationActivity;->getNewMessage()V

    goto :goto_e

    .line 1245
    :cond_17
    sget v8, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    if-ne p1, v8, :cond_7d

    .line 1246
    iget-object v8, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v8, :cond_e

    .line 1249
    aget-object v8, p2, v9

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 1250
    .local v6, "updateMask":I
    and-int/lit8 v8, v6, 0x1

    if-nez v8, :cond_37

    and-int/lit8 v8, v6, 0x4

    if-nez v8, :cond_37

    and-int/lit8 v8, v6, 0x10

    if-nez v8, :cond_37

    and-int/lit8 v8, v6, 0x20

    if-eqz v8, :cond_3a

    .line 1251
    :cond_37
    invoke-direct {p0}, Lorg/telegram/ui/PopupNotificationActivity;->updateSubtitle()V

    .line 1253
    :cond_3a
    and-int/lit8 v8, v6, 0x2

    if-nez v8, :cond_42

    and-int/lit8 v8, v6, 0x8

    if-eqz v8, :cond_45

    .line 1254
    :cond_42
    invoke-direct {p0}, Lorg/telegram/ui/PopupNotificationActivity;->checkAndUpdateAvatar()V

    .line 1256
    :cond_45
    and-int/lit8 v8, v6, 0x40

    if-eqz v8, :cond_e

    .line 1257
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v8

    iget-object v8, v8, Lorg/telegram/messenger/MessagesController;->printingStrings:Ljava/util/HashMap;

    iget-object v9, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v9}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    .line 1258
    .local v4, "printString":Ljava/lang/CharSequence;
    iget-object v8, p0, Lorg/telegram/ui/PopupNotificationActivity;->lastPrintString:Ljava/lang/CharSequence;

    if-eqz v8, :cond_65

    if-eqz v4, :cond_79

    :cond_65
    iget-object v8, p0, Lorg/telegram/ui/PopupNotificationActivity;->lastPrintString:Ljava/lang/CharSequence;

    if-nez v8, :cond_6b

    if-nez v4, :cond_79

    :cond_6b
    iget-object v8, p0, Lorg/telegram/ui/PopupNotificationActivity;->lastPrintString:Ljava/lang/CharSequence;

    if-eqz v8, :cond_e

    if-eqz v4, :cond_e

    iget-object v8, p0, Lorg/telegram/ui/PopupNotificationActivity;->lastPrintString:Ljava/lang/CharSequence;

    invoke-virtual {v8, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_e

    .line 1259
    :cond_79
    invoke-direct {p0}, Lorg/telegram/ui/PopupNotificationActivity;->updateSubtitle()V

    goto :goto_e

    .line 1262
    .end local v4    # "printString":Ljava/lang/CharSequence;
    .end local v6    # "updateMask":I
    :cond_7d
    sget v8, Lorg/telegram/messenger/NotificationCenter;->audioDidReset:I

    if-ne p1, v8, :cond_ca

    .line 1263
    aget-object v3, p2, v9

    check-cast v3, Ljava/lang/Integer;

    .line 1264
    .local v3, "mid":Ljava/lang/Integer;
    iget-object v8, p0, Lorg/telegram/ui/PopupNotificationActivity;->messageContainer:Landroid/view/ViewGroup;

    if-eqz v8, :cond_e

    .line 1265
    iget-object v8, p0, Lorg/telegram/ui/PopupNotificationActivity;->messageContainer:Landroid/view/ViewGroup;

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 1266
    .local v2, "count":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_90
    if-ge v0, v2, :cond_e

    .line 1267
    iget-object v8, p0, Lorg/telegram/ui/PopupNotificationActivity;->messageContainer:Landroid/view/ViewGroup;

    invoke-virtual {v8, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 1268
    .local v7, "view":Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ne v8, v10, :cond_c7

    .line 1269
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/PopupAudioView;

    .line 1270
    .local v1, "cell":Lorg/telegram/ui/Components/PopupAudioView;
    invoke-virtual {v1}, Lorg/telegram/ui/Components/PopupAudioView;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v8

    if-eqz v8, :cond_c7

    invoke-virtual {v1}, Lorg/telegram/ui/Components/PopupAudioView;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v8

    invoke-virtual {v8}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v8

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-ne v8, v9, :cond_c7

    .line 1271
    invoke-virtual {v1}, Lorg/telegram/ui/Components/PopupAudioView;->updateButtonState()V

    goto/16 :goto_e

    .line 1266
    .end local v1    # "cell":Lorg/telegram/ui/Components/PopupAudioView;
    :cond_c7
    add-int/lit8 v0, v0, 0x1

    goto :goto_90

    .line 1277
    .end local v0    # "a":I
    .end local v2    # "count":I
    .end local v3    # "mid":Ljava/lang/Integer;
    .end local v7    # "view":Landroid/view/View;
    :cond_ca
    sget v8, Lorg/telegram/messenger/NotificationCenter;->audioProgressDidChanged:I

    if-ne p1, v8, :cond_117

    .line 1278
    aget-object v3, p2, v9

    check-cast v3, Ljava/lang/Integer;

    .line 1279
    .restart local v3    # "mid":Ljava/lang/Integer;
    iget-object v8, p0, Lorg/telegram/ui/PopupNotificationActivity;->messageContainer:Landroid/view/ViewGroup;

    if-eqz v8, :cond_e

    .line 1280
    iget-object v8, p0, Lorg/telegram/ui/PopupNotificationActivity;->messageContainer:Landroid/view/ViewGroup;

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 1281
    .restart local v2    # "count":I
    const/4 v0, 0x0

    .restart local v0    # "a":I
    :goto_dd
    if-ge v0, v2, :cond_e

    .line 1282
    iget-object v8, p0, Lorg/telegram/ui/PopupNotificationActivity;->messageContainer:Landroid/view/ViewGroup;

    invoke-virtual {v8, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 1283
    .restart local v7    # "view":Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ne v8, v10, :cond_114

    .line 1284
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/PopupAudioView;

    .line 1285
    .restart local v1    # "cell":Lorg/telegram/ui/Components/PopupAudioView;
    invoke-virtual {v1}, Lorg/telegram/ui/Components/PopupAudioView;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v8

    if-eqz v8, :cond_114

    invoke-virtual {v1}, Lorg/telegram/ui/Components/PopupAudioView;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v8

    invoke-virtual {v8}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v8

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-ne v8, v9, :cond_114

    .line 1286
    invoke-virtual {v1}, Lorg/telegram/ui/Components/PopupAudioView;->updateProgress()V

    goto/16 :goto_e

    .line 1281
    .end local v1    # "cell":Lorg/telegram/ui/Components/PopupAudioView;
    :cond_114
    add-int/lit8 v0, v0, 0x1

    goto :goto_dd

    .line 1292
    .end local v0    # "a":I
    .end local v2    # "count":I
    .end local v3    # "mid":Ljava/lang/Integer;
    .end local v7    # "view":Landroid/view/View;
    :cond_117
    sget v8, Lorg/telegram/messenger/NotificationCenter;->emojiDidLoaded:I

    if-ne p1, v8, :cond_14f

    .line 1293
    iget-object v8, p0, Lorg/telegram/ui/PopupNotificationActivity;->messageContainer:Landroid/view/ViewGroup;

    if-eqz v8, :cond_e

    .line 1294
    iget-object v8, p0, Lorg/telegram/ui/PopupNotificationActivity;->messageContainer:Landroid/view/ViewGroup;

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 1295
    .restart local v2    # "count":I
    const/4 v0, 0x0

    .restart local v0    # "a":I
    :goto_126
    if-ge v0, v2, :cond_e

    .line 1296
    iget-object v8, p0, Lorg/telegram/ui/PopupNotificationActivity;->messageContainer:Landroid/view/ViewGroup;

    invoke-virtual {v8, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 1297
    .restart local v7    # "view":Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_14c

    .line 1298
    const/16 v8, 0x12d

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 1299
    .local v5, "textView":Landroid/widget/TextView;
    if-eqz v5, :cond_14c

    .line 1300
    invoke-virtual {v5}, Landroid/widget/TextView;->invalidate()V

    .line 1295
    .end local v5    # "textView":Landroid/widget/TextView;
    :cond_14c
    add-int/lit8 v0, v0, 0x1

    goto :goto_126

    .line 1305
    .end local v0    # "a":I
    .end local v2    # "count":I
    .end local v7    # "view":Landroid/view/View;
    :cond_14f
    sget v8, Lorg/telegram/messenger/NotificationCenter;->contactsDidLoaded:I

    if-ne p1, v8, :cond_e

    .line 1306
    invoke-direct {p0}, Lorg/telegram/ui/PopupNotificationActivity;->updateSubtitle()V

    goto/16 :goto_e
.end method

.method public onBackPressed()V
    .registers 3

    .prologue
    .line 1208
    iget-object v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isPopupShowing()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1209
    iget-object v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->hidePopup(Z)V

    .line 1213
    :goto_e
    return-void

    .line 1212
    :cond_f
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_e
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 465
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 466
    invoke-static {p0, p1}, Lorg/telegram/messenger/AndroidUtilities;->checkDisplaySize(Landroid/content/Context;Landroid/content/res/Configuration;)V

    .line 467
    invoke-direct {p0}, Lorg/telegram/ui/PopupNotificationActivity;->fixLayout()V

    .line 468
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 20
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 171
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 172
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lorg/telegram/ui/ActionBar/Theme;->createChatResources(Landroid/content/Context;Z)V

    .line 174
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/PopupNotificationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "status_bar_height"

    const-string v4, "dimen"

    const-string v5, "android"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v15

    .line 175
    .local v15, "resourceId":I
    if-lez v15, :cond_23

    .line 176
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/PopupNotificationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sput v2, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    .line 179
    :cond_23
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/tgnet/ConnectionsManager;->generateClassGuid()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/PopupNotificationActivity;->classGuid:I

    .line 180
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->appDidLogout:I

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v3}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 181
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->pushMessagesUpdated:I

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v3}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 182
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v3}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 183
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->audioProgressDidChanged:I

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v3}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 184
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->audioDidReset:I

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v3}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 185
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->contactsDidLoaded:I

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v3}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 186
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->emojiDidLoaded:I

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v3}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 188
    new-instance v2, Lorg/telegram/ui/Components/TypingDotsDrawable;

    invoke-direct {v2}, Lorg/telegram/ui/Components/TypingDotsDrawable;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/PopupNotificationActivity;->typingDotsDrawable:Lorg/telegram/ui/Components/TypingDotsDrawable;

    .line 189
    new-instance v2, Lorg/telegram/ui/Components/RecordStatusDrawable;

    invoke-direct {v2}, Lorg/telegram/ui/Components/RecordStatusDrawable;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/PopupNotificationActivity;->recordStatusDrawable:Lorg/telegram/ui/Components/RecordStatusDrawable;

    .line 190
    new-instance v2, Lorg/telegram/ui/Components/SendingFileDrawable;

    invoke-direct {v2}, Lorg/telegram/ui/Components/SendingFileDrawable;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/PopupNotificationActivity;->sendingFileDrawable:Lorg/telegram/ui/Components/SendingFileDrawable;

    .line 191
    new-instance v2, Lorg/telegram/ui/Components/PlayingGameDrawable;

    invoke-direct {v2}, Lorg/telegram/ui/Components/PlayingGameDrawable;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/PopupNotificationActivity;->playingGameDrawable:Lorg/telegram/ui/Components/PlayingGameDrawable;

    .line 193
    new-instance v9, Lorg/telegram/ui/PopupNotificationActivity$1;

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-direct {v9, v0, v1}, Lorg/telegram/ui/PopupNotificationActivity$1;-><init>(Lorg/telegram/ui/PopupNotificationActivity;Landroid/content/Context;)V

    .line 289
    .local v9, "contentView":Lorg/telegram/ui/Components/SizeNotifierFrameLayout;
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lorg/telegram/ui/PopupNotificationActivity;->setContentView(Landroid/view/View;)V

    .line 290
    const/high16 v2, -0x67000000

    invoke-virtual {v9, v2}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->setBackgroundColor(I)V

    .line 292
    new-instance v14, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 293
    .local v14, "relativeLayout":Landroid/widget/RelativeLayout;
    const/4 v2, -0x1

    const/high16 v3, -0x40800000    # -1.0f

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v9, v14, v2}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 295
    new-instance v2, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/PopupNotificationActivity;->popupContainer:Landroid/widget/RelativeLayout;

    .line 296
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PopupNotificationActivity;->popupContainer:Landroid/widget/RelativeLayout;

    const-string v3, "windowBackgroundWhite"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 297
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PopupNotificationActivity;->popupContainer:Landroid/widget/RelativeLayout;

    move-object/from16 v17, v0

    const/4 v2, -0x1

    const/16 v3, 0xf0

    const/16 v4, 0xc

    const/4 v5, 0x0

    const/16 v6, 0xc

    const/4 v7, 0x0

    const/16 v8, 0xd

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createRelative(IIIIIII)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v14, v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 299
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PopupNotificationActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz v2, :cond_103

    .line 300
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PopupNotificationActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->onDestroy()V

    .line 302
    :cond_103
    new-instance v2, Lorg/telegram/ui/Components/ChatActivityEnterView;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v9, v3, v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;-><init>(Landroid/app/Activity;Lorg/telegram/ui/Components/SizeNotifierFrameLayout;Lorg/telegram/ui/ChatActivity;Z)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/PopupNotificationActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    .line 303
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PopupNotificationActivity;->popupContainer:Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PopupNotificationActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    const/4 v4, -0x1

    const/4 v5, -0x2

    const/16 v6, 0xc

    invoke-static {v4, v5, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createRelative(III)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 304
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PopupNotificationActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    new-instance v3, Lorg/telegram/ui/PopupNotificationActivity$2;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/PopupNotificationActivity$2;-><init>(Lorg/telegram/ui/PopupNotificationActivity;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setDelegate(Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;)V

    .line 366
    new-instance v2, Lorg/telegram/ui/PopupNotificationActivity$FrameLayoutTouch;

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-direct {v2, v0, v1}, Lorg/telegram/ui/PopupNotificationActivity$FrameLayoutTouch;-><init>(Lorg/telegram/ui/PopupNotificationActivity;Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/PopupNotificationActivity;->messageContainer:Landroid/view/ViewGroup;

    .line 367
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PopupNotificationActivity;->popupContainer:Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PopupNotificationActivity;->messageContainer:Landroid/view/ViewGroup;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;I)V

    .line 369
    new-instance v2, Lorg/telegram/ui/ActionBar/ActionBar;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lorg/telegram/ui/ActionBar/ActionBar;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/PopupNotificationActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 370
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PopupNotificationActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setOccupyStatusBar(Z)V

    .line 371
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PopupNotificationActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const v3, 0x7f020110

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 372
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PopupNotificationActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string v3, "actionBarDefault"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackgroundColor(I)V

    .line 373
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PopupNotificationActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string v3, "actionBarDefaultSelector"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsBackgroundColor(IZ)V

    .line 374
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PopupNotificationActivity;->popupContainer:Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PopupNotificationActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 375
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PopupNotificationActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    .line 376
    .local v10, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    const/4 v2, -0x1

    iput v2, v10, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 377
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PopupNotificationActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v2, v10}, Lorg/telegram/ui/ActionBar/ActionBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 379
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PopupNotificationActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v12

    .line 380
    .local v12, "menu":Lorg/telegram/ui/ActionBar/ActionBarMenu;
    const/4 v2, 0x2

    const/4 v3, 0x0

    const/high16 v4, 0x42600000    # 56.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-virtual {v12, v2, v3, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItemWithWidth(III)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v16

    .line 381
    .local v16, "view":Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    new-instance v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/PopupNotificationActivity;->countText:Landroid/widget/TextView;

    .line 382
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PopupNotificationActivity;->countText:Landroid/widget/TextView;

    const-string v3, "actionBarDefaultSubtitle"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 383
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PopupNotificationActivity;->countText:Landroid/widget/TextView;

    const/4 v3, 0x1

    const/high16 v4, 0x41600000    # 14.0f

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 384
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PopupNotificationActivity;->countText:Landroid/widget/TextView;

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 385
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PopupNotificationActivity;->countText:Landroid/widget/TextView;

    const/16 v3, 0x38

    const/high16 v4, -0x40800000    # -1.0f

    invoke-static {v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 387
    new-instance v2, Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/PopupNotificationActivity;->avatarContainer:Landroid/widget/FrameLayout;

    .line 388
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PopupNotificationActivity;->avatarContainer:Landroid/widget/FrameLayout;

    const/high16 v3, 0x40800000    # 4.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    const/4 v4, 0x0

    const/high16 v5, 0x40800000    # 4.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 389
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PopupNotificationActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PopupNotificationActivity;->avatarContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->addView(Landroid/view/View;)V

    .line 390
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PopupNotificationActivity;->avatarContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroid/widget/FrameLayout$LayoutParams;

    .line 391
    .local v11, "layoutParams2":Landroid/widget/FrameLayout$LayoutParams;
    const/4 v2, -0x1

    iput v2, v11, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 392
    const/4 v2, -0x2

    iput v2, v11, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 393
    const/high16 v2, 0x42400000    # 48.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    iput v2, v11, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 394
    const/high16 v2, 0x42700000    # 60.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    iput v2, v11, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 395
    const/16 v2, 0x33

    iput v2, v11, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 396
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PopupNotificationActivity;->avatarContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v11}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 398
    new-instance v2, Lorg/telegram/ui/Components/BackupImageView;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/PopupNotificationActivity;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    .line 399
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PopupNotificationActivity;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    const/high16 v3, 0x41a80000    # 21.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/BackupImageView;->setRoundRadius(I)V

    .line 400
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PopupNotificationActivity;->avatarContainer:Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PopupNotificationActivity;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 401
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PopupNotificationActivity;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/BackupImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    .end local v11    # "layoutParams2":Landroid/widget/FrameLayout$LayoutParams;
    check-cast v11, Landroid/widget/FrameLayout$LayoutParams;

    .line 402
    .restart local v11    # "layoutParams2":Landroid/widget/FrameLayout$LayoutParams;
    const/high16 v2, 0x42280000    # 42.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    iput v2, v11, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 403
    const/high16 v2, 0x42280000    # 42.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    iput v2, v11, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 404
    const/high16 v2, 0x40400000    # 3.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    iput v2, v11, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 405
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PopupNotificationActivity;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v2, v11}, Lorg/telegram/ui/Components/BackupImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 407
    new-instance v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/PopupNotificationActivity;->nameTextView:Landroid/widget/TextView;

    .line 408
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PopupNotificationActivity;->nameTextView:Landroid/widget/TextView;

    const-string v3, "actionBarDefaultTitle"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 409
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PopupNotificationActivity;->nameTextView:Landroid/widget/TextView;

    const/4 v3, 0x1

    const/high16 v4, 0x41900000    # 18.0f

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 410
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PopupNotificationActivity;->nameTextView:Landroid/widget/TextView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setLines(I)V

    .line 411
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PopupNotificationActivity;->nameTextView:Landroid/widget/TextView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 412
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PopupNotificationActivity;->nameTextView:Landroid/widget/TextView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 413
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PopupNotificationActivity;->nameTextView:Landroid/widget/TextView;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 414
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PopupNotificationActivity;->nameTextView:Landroid/widget/TextView;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 415
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PopupNotificationActivity;->nameTextView:Landroid/widget/TextView;

    const-string v3, "fonts/rmedium.ttf"

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 416
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PopupNotificationActivity;->avatarContainer:Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PopupNotificationActivity;->nameTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 417
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PopupNotificationActivity;->nameTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    .end local v11    # "layoutParams2":Landroid/widget/FrameLayout$LayoutParams;
    check-cast v11, Landroid/widget/FrameLayout$LayoutParams;

    .line 418
    .restart local v11    # "layoutParams2":Landroid/widget/FrameLayout$LayoutParams;
    const/4 v2, -0x2

    iput v2, v11, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 419
    const/4 v2, -0x2

    iput v2, v11, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 420
    const/high16 v2, 0x42580000    # 54.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    iput v2, v11, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 421
    const/high16 v2, 0x41b00000    # 22.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    iput v2, v11, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 422
    const/16 v2, 0x50

    iput v2, v11, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 423
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PopupNotificationActivity;->nameTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 425
    new-instance v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/PopupNotificationActivity;->onlineTextView:Landroid/widget/TextView;

    .line 426
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PopupNotificationActivity;->onlineTextView:Landroid/widget/TextView;

    const-string v3, "actionBarDefaultSubtitle"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 427
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PopupNotificationActivity;->onlineTextView:Landroid/widget/TextView;

    const/4 v3, 0x1

    const/high16 v4, 0x41600000    # 14.0f

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 428
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PopupNotificationActivity;->onlineTextView:Landroid/widget/TextView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setLines(I)V

    .line 429
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PopupNotificationActivity;->onlineTextView:Landroid/widget/TextView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 430
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PopupNotificationActivity;->onlineTextView:Landroid/widget/TextView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 431
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PopupNotificationActivity;->onlineTextView:Landroid/widget/TextView;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 432
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PopupNotificationActivity;->onlineTextView:Landroid/widget/TextView;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 433
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PopupNotificationActivity;->avatarContainer:Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PopupNotificationActivity;->onlineTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 434
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PopupNotificationActivity;->onlineTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    .end local v11    # "layoutParams2":Landroid/widget/FrameLayout$LayoutParams;
    check-cast v11, Landroid/widget/FrameLayout$LayoutParams;

    .line 435
    .restart local v11    # "layoutParams2":Landroid/widget/FrameLayout$LayoutParams;
    const/4 v2, -0x2

    iput v2, v11, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 436
    const/4 v2, -0x2

    iput v2, v11, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 437
    const/high16 v2, 0x42580000    # 54.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    iput v2, v11, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 438
    const/high16 v2, 0x40800000    # 4.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    iput v2, v11, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 439
    const/16 v2, 0x50

    iput v2, v11, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 440
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PopupNotificationActivity;->onlineTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 442
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PopupNotificationActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v3, Lorg/telegram/ui/PopupNotificationActivity$3;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/PopupNotificationActivity$3;-><init>(Lorg/telegram/ui/PopupNotificationActivity;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 456
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v3, "power"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/os/PowerManager;

    .line 457
    .local v13, "pm":Landroid/os/PowerManager;
    const v2, 0x10000006

    const-string v3, "screen"

    invoke-virtual {v13, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/PopupNotificationActivity;->wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 458
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PopupNotificationActivity;->wakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 460
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/PopupNotificationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lorg/telegram/ui/PopupNotificationActivity;->handleIntent(Landroid/content/Intent;)V

    .line 461
    return-void
.end method

.method protected onDestroy()V
    .registers 3

    .prologue
    .line 1312
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 1313
    invoke-virtual {p0}, Lorg/telegram/ui/PopupNotificationActivity;->onFinish()V

    .line 1314
    iget-object v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1315
    iget-object v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1317
    :cond_13
    iget-object v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    if-eqz v0, :cond_1d

    .line 1318
    iget-object v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/BackupImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1320
    :cond_1d
    return-void
.end method

.method protected onFinish()V
    .registers 3

    .prologue
    .line 1323
    iget-boolean v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->finished:Z

    if-eqz v0, :cond_5

    .line 1343
    :cond_4
    :goto_4
    return-void

    .line 1326
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->finished:Z

    .line 1327
    iget-boolean v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->isReply:Z

    if-eqz v0, :cond_11

    .line 1328
    iget-object v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->popupMessages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1330
    :cond_11
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->appDidLogout:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 1331
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->pushMessagesUpdated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 1332
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 1333
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->audioProgressDidChanged:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 1334
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->audioDidReset:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 1335
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->contactsDidLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 1336
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->emojiDidLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 1337
    iget-object v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz v0, :cond_59

    .line 1338
    iget-object v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->onDestroy()V

    .line 1340
    :cond_59
    iget-object v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1341
    iget-object v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_4
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 472
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 473
    invoke-direct {p0, p1}, Lorg/telegram/ui/PopupNotificationActivity;->handleIntent(Landroid/content/Intent;)V

    .line 474
    return-void
.end method

.method protected onPause()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1229
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 1230
    invoke-virtual {p0, v2, v2}, Lorg/telegram/ui/PopupNotificationActivity;->overridePendingTransition(II)V

    .line 1231
    iget-object v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz v0, :cond_15

    .line 1232
    iget-object v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->hidePopup(Z)V

    .line 1233
    iget-object v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setFieldFocused(Z)V

    .line 1235
    :cond_15
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/tgnet/ConnectionsManager;->setAppPaused(ZZ)V

    .line 1236
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .registers 7
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .prologue
    .line 478
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 479
    const/4 v1, 0x3

    if-ne p1, v1, :cond_b

    .line 480
    const/4 v1, 0x0

    aget v1, p3, v1

    if-nez v1, :cond_c

    .line 502
    :cond_b
    :goto_b
    return-void

    .line 483
    :cond_c
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-direct {v0, p0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 484
    .local v0, "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    const-string v1, "AppName"

    const v2, 0x7f070092

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 485
    const-string v1, "PermissionNoAudio"

    const v2, 0x7f07043a

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 486
    const-string v1, "PermissionOpenSettings"

    const v2, 0x7f07043f

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/PopupNotificationActivity$4;

    invoke-direct {v2, p0}, Lorg/telegram/ui/PopupNotificationActivity$4;-><init>(Lorg/telegram/ui/PopupNotificationActivity;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 499
    const-string v1, "OK"

    const v2, 0x7f0703d4

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 500
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->show()Lorg/telegram/ui/ActionBar/AlertDialog;

    goto :goto_b
.end method

.method protected onResume()V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 1217
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 1218
    iget-object v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz v0, :cond_e

    .line 1219
    iget-object v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setFieldFocused(Z)V

    .line 1221
    :cond_e
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Lorg/telegram/tgnet/ConnectionsManager;->setAppPaused(ZZ)V

    .line 1222
    invoke-direct {p0}, Lorg/telegram/ui/PopupNotificationActivity;->fixLayout()V

    .line 1223
    invoke-direct {p0}, Lorg/telegram/ui/PopupNotificationActivity;->checkAndUpdateAvatar()V

    .line 1224
    iget-object v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->wakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v2, 0x1b58

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 1225
    return-void
.end method

.method public onTouchEventMy(Landroid/view/MotionEvent;)Z
    .registers 15
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;

    .prologue
    .line 542
    invoke-virtual {p0}, Lorg/telegram/ui/PopupNotificationActivity;->checkTransitionAnimation()Z

    move-result v9

    if-eqz v9, :cond_8

    .line 543
    const/4 v9, 0x0

    .line 648
    :goto_7
    return v9

    .line 545
    :cond_8
    if-eqz p1, :cond_19

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    if-nez v9, :cond_19

    .line 546
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    iput v9, p0, Lorg/telegram/ui/PopupNotificationActivity;->moveStartX:F

    .line 648
    :cond_16
    :goto_16
    iget-boolean v9, p0, Lorg/telegram/ui/PopupNotificationActivity;->startedMoving:Z

    goto :goto_7

    .line 547
    :cond_19
    if-eqz p1, :cond_7b

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_7b

    .line 548
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    .line 549
    .local v8, "x":F
    iget v9, p0, Lorg/telegram/ui/PopupNotificationActivity;->moveStartX:F

    sub-float v9, v8, v9

    float-to-int v1, v9

    .line 550
    .local v1, "diff":I
    iget v9, p0, Lorg/telegram/ui/PopupNotificationActivity;->moveStartX:F

    const/high16 v10, -0x40800000    # -1.0f

    cmpl-float v9, v9, v10

    if-eqz v9, :cond_56

    iget-boolean v9, p0, Lorg/telegram/ui/PopupNotificationActivity;->startedMoving:Z

    if-nez v9, :cond_56

    .line 551
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v9

    const/high16 v10, 0x41200000    # 10.0f

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    if-le v9, v10, :cond_56

    .line 552
    const/4 v9, 0x1

    iput-boolean v9, p0, Lorg/telegram/ui/PopupNotificationActivity;->startedMoving:Z

    .line 553
    iput v8, p0, Lorg/telegram/ui/PopupNotificationActivity;->moveStartX:F

    .line 554
    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->lockOrientation(Landroid/app/Activity;)V

    .line 555
    const/4 v1, 0x0

    .line 556
    iget-object v9, p0, Lorg/telegram/ui/PopupNotificationActivity;->velocityTracker:Landroid/view/VelocityTracker;

    if-nez v9, :cond_75

    .line 557
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v9

    iput-object v9, p0, Lorg/telegram/ui/PopupNotificationActivity;->velocityTracker:Landroid/view/VelocityTracker;

    .line 563
    :cond_56
    :goto_56
    iget-boolean v9, p0, Lorg/telegram/ui/PopupNotificationActivity;->startedMoving:Z

    if-eqz v9, :cond_16

    .line 564
    iget-object v9, p0, Lorg/telegram/ui/PopupNotificationActivity;->leftView:Landroid/view/ViewGroup;

    if-nez v9, :cond_61

    if-lez v1, :cond_61

    .line 565
    const/4 v1, 0x0

    .line 567
    :cond_61
    iget-object v9, p0, Lorg/telegram/ui/PopupNotificationActivity;->rightView:Landroid/view/ViewGroup;

    if-nez v9, :cond_68

    if-gez v1, :cond_68

    .line 568
    const/4 v1, 0x0

    .line 570
    :cond_68
    iget-object v9, p0, Lorg/telegram/ui/PopupNotificationActivity;->velocityTracker:Landroid/view/VelocityTracker;

    if-eqz v9, :cond_71

    .line 571
    iget-object v9, p0, Lorg/telegram/ui/PopupNotificationActivity;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v9, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 573
    :cond_71
    invoke-direct {p0, v1}, Lorg/telegram/ui/PopupNotificationActivity;->applyViewsLayoutParams(I)V

    goto :goto_16

    .line 559
    :cond_75
    iget-object v9, p0, Lorg/telegram/ui/PopupNotificationActivity;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v9}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_56

    .line 575
    .end local v1    # "diff":I
    .end local v8    # "x":F
    :cond_7b
    if-eqz p1, :cond_8b

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    const/4 v10, 0x1

    if-eq v9, v10, :cond_8b

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    const/4 v10, 0x3

    if-ne v9, v10, :cond_16

    .line 576
    :cond_8b
    if-eqz p1, :cond_171

    iget-boolean v9, p0, Lorg/telegram/ui/PopupNotificationActivity;->startedMoving:Z

    if-eqz v9, :cond_171

    .line 577
    iget-object v9, p0, Lorg/telegram/ui/PopupNotificationActivity;->centerView:Landroid/view/ViewGroup;

    invoke-virtual {v9}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 578
    .local v3, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    iget v10, p0, Lorg/telegram/ui/PopupNotificationActivity;->moveStartX:F

    sub-float/2addr v9, v10

    float-to-int v1, v9

    .line 579
    .restart local v1    # "diff":I
    sget-object v9, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->x:I

    const/high16 v10, 0x41c00000    # 24.0f

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    sub-int v7, v9, v10

    .line 580
    .local v7, "width":I
    const/4 v4, 0x0

    .line 581
    .local v4, "moveDiff":I
    const/4 v2, 0x0

    .line 582
    .local v2, "forceMove":I
    const/4 v5, 0x0

    .line 583
    .local v5, "otherView":Landroid/view/View;
    iget-object v9, p0, Lorg/telegram/ui/PopupNotificationActivity;->velocityTracker:Landroid/view/VelocityTracker;

    if-eqz v9, :cond_c9

    .line 584
    iget-object v9, p0, Lorg/telegram/ui/PopupNotificationActivity;->velocityTracker:Landroid/view/VelocityTracker;

    const/16 v10, 0x3e8

    invoke-virtual {v9, v10}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 585
    iget-object v9, p0, Lorg/telegram/ui/PopupNotificationActivity;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v9}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v9

    const v10, 0x455ac000    # 3500.0f

    cmpl-float v9, v9, v10

    if-ltz v9, :cond_130

    .line 586
    const/4 v2, 0x1

    .line 591
    :cond_c9
    :goto_c9
    const/4 v9, 0x1

    if-eq v2, v9, :cond_d0

    div-int/lit8 v9, v7, 0x3

    if-le v1, v9, :cond_13f

    :cond_d0
    iget-object v9, p0, Lorg/telegram/ui/PopupNotificationActivity;->leftView:Landroid/view/ViewGroup;

    if-eqz v9, :cond_13f

    .line 592
    iget v9, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    sub-int v4, v7, v9

    .line 593
    iget-object v5, p0, Lorg/telegram/ui/PopupNotificationActivity;->leftView:Landroid/view/ViewGroup;

    .line 594
    new-instance v9, Lorg/telegram/ui/PopupNotificationActivity$5;

    invoke-direct {v9, p0}, Lorg/telegram/ui/PopupNotificationActivity$5;-><init>(Lorg/telegram/ui/PopupNotificationActivity;)V

    iput-object v9, p0, Lorg/telegram/ui/PopupNotificationActivity;->onAnimationEndRunnable:Ljava/lang/Runnable;

    .line 625
    :cond_e1
    :goto_e1
    if-eqz v4, :cond_11b

    .line 626
    int-to-float v9, v4

    int-to-float v10, v7

    div-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    const/high16 v10, 0x43480000    # 200.0f

    mul-float/2addr v9, v10

    float-to-int v6, v9

    .line 627
    .local v6, "time":I
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v9, 0x0

    int-to-float v10, v4

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct {v0, v9, v10, v11, v12}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 628
    .local v0, "animation":Landroid/view/animation/TranslateAnimation;
    int-to-long v10, v6

    invoke-virtual {v0, v10, v11}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 629
    iget-object v9, p0, Lorg/telegram/ui/PopupNotificationActivity;->centerView:Landroid/view/ViewGroup;

    invoke-virtual {v9, v0}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 630
    if-eqz v5, :cond_112

    .line 631
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .end local v0    # "animation":Landroid/view/animation/TranslateAnimation;
    const/4 v9, 0x0

    int-to-float v10, v4

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct {v0, v9, v10, v11, v12}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 632
    .restart local v0    # "animation":Landroid/view/animation/TranslateAnimation;
    int-to-long v10, v6

    invoke-virtual {v0, v10, v11}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 633
    invoke-virtual {v5, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 635
    :cond_112
    const/4 v9, 0x1

    iput-boolean v9, p0, Lorg/telegram/ui/PopupNotificationActivity;->animationInProgress:Z

    .line 636
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iput-wide v10, p0, Lorg/telegram/ui/PopupNotificationActivity;->animationStartTime:J

    .line 641
    .end local v0    # "animation":Landroid/view/animation/TranslateAnimation;
    .end local v1    # "diff":I
    .end local v2    # "forceMove":I
    .end local v3    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .end local v4    # "moveDiff":I
    .end local v5    # "otherView":Landroid/view/View;
    .end local v6    # "time":I
    .end local v7    # "width":I
    :cond_11b
    :goto_11b
    iget-object v9, p0, Lorg/telegram/ui/PopupNotificationActivity;->velocityTracker:Landroid/view/VelocityTracker;

    if-eqz v9, :cond_127

    .line 642
    iget-object v9, p0, Lorg/telegram/ui/PopupNotificationActivity;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v9}, Landroid/view/VelocityTracker;->recycle()V

    .line 643
    const/4 v9, 0x0

    iput-object v9, p0, Lorg/telegram/ui/PopupNotificationActivity;->velocityTracker:Landroid/view/VelocityTracker;

    .line 645
    :cond_127
    const/4 v9, 0x0

    iput-boolean v9, p0, Lorg/telegram/ui/PopupNotificationActivity;->startedMoving:Z

    .line 646
    const/high16 v9, -0x40800000    # -1.0f

    iput v9, p0, Lorg/telegram/ui/PopupNotificationActivity;->moveStartX:F

    goto/16 :goto_16

    .line 587
    .restart local v1    # "diff":I
    .restart local v2    # "forceMove":I
    .restart local v3    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .restart local v4    # "moveDiff":I
    .restart local v5    # "otherView":Landroid/view/View;
    .restart local v7    # "width":I
    :cond_130
    iget-object v9, p0, Lorg/telegram/ui/PopupNotificationActivity;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v9}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v9

    const v10, -0x3aa54000    # -3500.0f

    cmpg-float v9, v9, v10

    if-gtz v9, :cond_c9

    .line 588
    const/4 v2, 0x2

    goto :goto_c9

    .line 602
    :cond_13f
    const/4 v9, 0x2

    if-eq v2, v9, :cond_147

    neg-int v9, v7

    div-int/lit8 v9, v9, 0x3

    if-ge v1, v9, :cond_15a

    :cond_147
    iget-object v9, p0, Lorg/telegram/ui/PopupNotificationActivity;->rightView:Landroid/view/ViewGroup;

    if-eqz v9, :cond_15a

    .line 603
    neg-int v9, v7

    iget v10, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    sub-int v4, v9, v10

    .line 604
    iget-object v5, p0, Lorg/telegram/ui/PopupNotificationActivity;->rightView:Landroid/view/ViewGroup;

    .line 605
    new-instance v9, Lorg/telegram/ui/PopupNotificationActivity$6;

    invoke-direct {v9, p0}, Lorg/telegram/ui/PopupNotificationActivity$6;-><init>(Lorg/telegram/ui/PopupNotificationActivity;)V

    iput-object v9, p0, Lorg/telegram/ui/PopupNotificationActivity;->onAnimationEndRunnable:Ljava/lang/Runnable;

    goto :goto_e1

    .line 613
    :cond_15a
    iget v9, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    if-eqz v9, :cond_e1

    .line 614
    iget v9, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    neg-int v4, v9

    .line 615
    if-lez v1, :cond_16e

    iget-object v5, p0, Lorg/telegram/ui/PopupNotificationActivity;->leftView:Landroid/view/ViewGroup;

    .line 616
    :goto_165
    new-instance v9, Lorg/telegram/ui/PopupNotificationActivity$7;

    invoke-direct {v9, p0}, Lorg/telegram/ui/PopupNotificationActivity$7;-><init>(Lorg/telegram/ui/PopupNotificationActivity;)V

    iput-object v9, p0, Lorg/telegram/ui/PopupNotificationActivity;->onAnimationEndRunnable:Ljava/lang/Runnable;

    goto/16 :goto_e1

    .line 615
    :cond_16e
    iget-object v5, p0, Lorg/telegram/ui/PopupNotificationActivity;->rightView:Landroid/view/ViewGroup;

    goto :goto_165

    .line 639
    .end local v1    # "diff":I
    .end local v2    # "forceMove":I
    .end local v3    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .end local v4    # "moveDiff":I
    .end local v5    # "otherView":Landroid/view/View;
    .end local v7    # "width":I
    :cond_171
    const/4 v9, 0x0

    invoke-direct {p0, v9}, Lorg/telegram/ui/PopupNotificationActivity;->applyViewsLayoutParams(I)V

    goto :goto_11b
.end method
