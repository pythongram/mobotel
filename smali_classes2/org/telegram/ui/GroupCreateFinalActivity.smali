.class public Lorg/telegram/ui/GroupCreateFinalActivity;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "GroupCreateFinalActivity.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;
.implements Lorg/telegram/ui/Components/AvatarUpdater$AvatarUpdaterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/GroupCreateFinalActivity$GroupCreateAdapter;
    }
.end annotation


# static fields
.field private static final done_button:I = 0x1


# instance fields
.field private adapter:Lorg/telegram/ui/GroupCreateFinalActivity$GroupCreateAdapter;

.field private avatar:Lorg/telegram/tgnet/TLRPC$FileLocation;

.field private avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

.field private avatarImage:Lorg/telegram/ui/Components/BackupImageView;

.field private avatarUpdater:Lorg/telegram/ui/Components/AvatarUpdater;

.field private chatType:I

.field private createAfterUpload:Z

.field private doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

.field private doneItemAnimation:Landroid/animation/AnimatorSet;

.field private donePressed:Z

.field private editText:Landroid/widget/EditText;

.field private editTextContainer:Landroid/widget/FrameLayout;

.field private listView:Lorg/telegram/messenger/support/widget/RecyclerView;

.field private nameToSet:Ljava/lang/String;

.field private progressView:Lorg/telegram/ui/Components/ContextProgressView;

.field private reqId:I

.field private selectedContacts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private uploadedAvatar:Lorg/telegram/tgnet/TLRPC$InputFile;


# direct methods
.method public constructor <init>(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    .line 93
    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>(Landroid/os/Bundle;)V

    .line 84
    new-instance v0, Lorg/telegram/ui/Components/AvatarUpdater;

    invoke-direct {v0}, Lorg/telegram/ui/Components/AvatarUpdater;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->avatarUpdater:Lorg/telegram/ui/Components/AvatarUpdater;

    .line 86
    iput v1, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->chatType:I

    .line 94
    const-string v0, "chatType"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->chatType:I

    .line 95
    new-instance v0, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v0}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    .line 96
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/GroupCreateFinalActivity;)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/GroupCreateFinalActivity;

    .prologue
    .line 67
    iget-boolean v0, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->donePressed:Z

    return v0
.end method

.method static synthetic access$002(Lorg/telegram/ui/GroupCreateFinalActivity;Z)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/GroupCreateFinalActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 67
    iput-boolean p1, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->donePressed:Z

    return p1
.end method

.method static synthetic access$100(Lorg/telegram/ui/GroupCreateFinalActivity;)Landroid/widget/EditText;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/GroupCreateFinalActivity;

    .prologue
    .line 67
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->editText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/GroupCreateFinalActivity;)Lorg/telegram/ui/ActionBar/ActionBarLayout;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/GroupCreateFinalActivity;

    .prologue
    .line 67
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->parentLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    return-object v0
.end method

.method static synthetic access$1100(Lorg/telegram/ui/GroupCreateFinalActivity;)Lorg/telegram/tgnet/TLRPC$FileLocation;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/GroupCreateFinalActivity;

    .prologue
    .line 67
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->avatar:Lorg/telegram/tgnet/TLRPC$FileLocation;

    return-object v0
.end method

.method static synthetic access$1102(Lorg/telegram/ui/GroupCreateFinalActivity;Lorg/telegram/tgnet/TLRPC$FileLocation;)Lorg/telegram/tgnet/TLRPC$FileLocation;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/GroupCreateFinalActivity;
    .param p1, "x1"    # Lorg/telegram/tgnet/TLRPC$FileLocation;

    .prologue
    .line 67
    iput-object p1, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->avatar:Lorg/telegram/tgnet/TLRPC$FileLocation;

    return-object p1
.end method

.method static synthetic access$1202(Lorg/telegram/ui/GroupCreateFinalActivity;Lorg/telegram/tgnet/TLRPC$InputFile;)Lorg/telegram/tgnet/TLRPC$InputFile;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/GroupCreateFinalActivity;
    .param p1, "x1"    # Lorg/telegram/tgnet/TLRPC$InputFile;

    .prologue
    .line 67
    iput-object p1, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->uploadedAvatar:Lorg/telegram/tgnet/TLRPC$InputFile;

    return-object p1
.end method

.method static synthetic access$1300(Lorg/telegram/ui/GroupCreateFinalActivity;)Lorg/telegram/ui/Components/AvatarDrawable;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/GroupCreateFinalActivity;

    .prologue
    .line 67
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    return-object v0
.end method

.method static synthetic access$1400(Lorg/telegram/ui/GroupCreateFinalActivity;)Lorg/telegram/ui/Components/BackupImageView;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/GroupCreateFinalActivity;

    .prologue
    .line 67
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    return-object v0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/GroupCreateFinalActivity;)Landroid/animation/AnimatorSet;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/GroupCreateFinalActivity;

    .prologue
    .line 67
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->doneItemAnimation:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic access$1502(Lorg/telegram/ui/GroupCreateFinalActivity;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/GroupCreateFinalActivity;
    .param p1, "x1"    # Landroid/animation/AnimatorSet;

    .prologue
    .line 67
    iput-object p1, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->doneItemAnimation:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$1600(Lorg/telegram/ui/GroupCreateFinalActivity;)Lorg/telegram/ui/Components/ContextProgressView;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/GroupCreateFinalActivity;

    .prologue
    .line 67
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->progressView:Lorg/telegram/ui/Components/ContextProgressView;

    return-object v0
.end method

.method static synthetic access$1700(Lorg/telegram/ui/GroupCreateFinalActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/GroupCreateFinalActivity;

    .prologue
    .line 67
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    return-object v0
.end method

.method static synthetic access$200(Lorg/telegram/ui/GroupCreateFinalActivity;)Lorg/telegram/ui/Components/AvatarUpdater;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/GroupCreateFinalActivity;

    .prologue
    .line 67
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->avatarUpdater:Lorg/telegram/ui/Components/AvatarUpdater;

    return-object v0
.end method

.method static synthetic access$300(Lorg/telegram/ui/GroupCreateFinalActivity;)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/GroupCreateFinalActivity;

    .prologue
    .line 67
    iget-boolean v0, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->createAfterUpload:Z

    return v0
.end method

.method static synthetic access$302(Lorg/telegram/ui/GroupCreateFinalActivity;Z)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/GroupCreateFinalActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 67
    iput-boolean p1, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->createAfterUpload:Z

    return p1
.end method

.method static synthetic access$400(Lorg/telegram/ui/GroupCreateFinalActivity;Z)V
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/GroupCreateFinalActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lorg/telegram/ui/GroupCreateFinalActivity;->showEditDoneProgress(Z)V

    return-void
.end method

.method static synthetic access$502(Lorg/telegram/ui/GroupCreateFinalActivity;I)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/GroupCreateFinalActivity;
    .param p1, "x1"    # I

    .prologue
    .line 67
    iput p1, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->reqId:I

    return p1
.end method

.method static synthetic access$600(Lorg/telegram/ui/GroupCreateFinalActivity;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/GroupCreateFinalActivity;

    .prologue
    .line 67
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->selectedContacts:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$700(Lorg/telegram/ui/GroupCreateFinalActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/GroupCreateFinalActivity;

    .prologue
    .line 67
    iget v0, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->chatType:I

    return v0
.end method

.method static synthetic access$800(Lorg/telegram/ui/GroupCreateFinalActivity;)Lorg/telegram/messenger/support/widget/RecyclerView;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/GroupCreateFinalActivity;

    .prologue
    .line 67
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->listView:Lorg/telegram/messenger/support/widget/RecyclerView;

    return-object v0
.end method

.method static synthetic access$900(Lorg/telegram/ui/GroupCreateFinalActivity;)Landroid/widget/FrameLayout;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/GroupCreateFinalActivity;

    .prologue
    .line 67
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->editTextContainer:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method private showEditDoneProgress(Z)V
    .registers 12
    .param p1, "show"    # Z

    .prologue
    const/4 v9, 0x0

    const v5, 0x3dcccccd

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 415
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-nez v0, :cond_d

    .line 465
    :goto_c
    return-void

    .line 418
    :cond_d
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->doneItemAnimation:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_16

    .line 419
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->doneItemAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 421
    :cond_16
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->doneItemAnimation:Landroid/animation/AnimatorSet;

    .line 422
    if-eqz p1, :cond_ad

    .line 423
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->progressView:Lorg/telegram/ui/Components/ContextProgressView;

    invoke-virtual {v0, v6}, Lorg/telegram/ui/Components/ContextProgressView;->setVisibility(I)V

    .line 424
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v0, v6}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setEnabled(Z)V

    .line 425
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->doneItemAnimation:Landroid/animation/AnimatorSet;

    const/4 v1, 0x6

    new-array v1, v1, [Landroid/animation/Animator;

    iget-object v2, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 426
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getImageView()Landroid/widget/ImageView;

    move-result-object v2

    const-string v3, "scaleX"

    new-array v4, v7, [F

    aput v5, v4, v6

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v6

    iget-object v2, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 427
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getImageView()Landroid/widget/ImageView;

    move-result-object v2

    const-string v3, "scaleY"

    new-array v4, v7, [F

    aput v5, v4, v6

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v7

    const/4 v2, 0x2

    iget-object v3, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 428
    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getImageView()Landroid/widget/ImageView;

    move-result-object v3

    const-string v4, "alpha"

    new-array v5, v7, [F

    aput v9, v5, v6

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->progressView:Lorg/telegram/ui/Components/ContextProgressView;

    const-string v4, "scaleX"

    new-array v5, v7, [F

    aput v8, v5, v6

    .line 429
    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-object v3, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->progressView:Lorg/telegram/ui/Components/ContextProgressView;

    const-string v4, "scaleY"

    new-array v5, v7, [F

    aput v8, v5, v6

    .line 430
    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget-object v3, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->progressView:Lorg/telegram/ui/Components/ContextProgressView;

    const-string v4, "alpha"

    new-array v5, v7, [F

    aput v8, v5, v6

    .line 431
    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    .line 425
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 444
    :goto_95
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->doneItemAnimation:Landroid/animation/AnimatorSet;

    new-instance v1, Lorg/telegram/ui/GroupCreateFinalActivity$8;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/GroupCreateFinalActivity$8;-><init>(Lorg/telegram/ui/GroupCreateFinalActivity;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 463
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->doneItemAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 464
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->doneItemAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_c

    .line 433
    :cond_ad
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 434
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v0, v7}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setEnabled(Z)V

    .line 435
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->doneItemAnimation:Landroid/animation/AnimatorSet;

    const/4 v1, 0x6

    new-array v1, v1, [Landroid/animation/Animator;

    iget-object v2, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->progressView:Lorg/telegram/ui/Components/ContextProgressView;

    const-string v3, "scaleX"

    new-array v4, v7, [F

    aput v5, v4, v6

    .line 436
    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v6

    iget-object v2, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->progressView:Lorg/telegram/ui/Components/ContextProgressView;

    const-string v3, "scaleY"

    new-array v4, v7, [F

    aput v5, v4, v6

    .line 437
    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v7

    const/4 v2, 0x2

    iget-object v3, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->progressView:Lorg/telegram/ui/Components/ContextProgressView;

    const-string v4, "alpha"

    new-array v5, v7, [F

    aput v9, v5, v6

    .line 438
    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 439
    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getImageView()Landroid/widget/ImageView;

    move-result-object v3

    const-string v4, "scaleX"

    new-array v5, v7, [F

    aput v8, v5, v6

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-object v3, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 440
    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getImageView()Landroid/widget/ImageView;

    move-result-object v3

    const-string v4, "scaleY"

    new-array v5, v7, [F

    aput v8, v5, v6

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget-object v3, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 441
    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getImageView()Landroid/widget/ImageView;

    move-result-object v3

    const-string v4, "alpha"

    new-array v5, v7, [F

    aput v8, v5, v6

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    .line 435
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto/16 :goto_95
.end method


# virtual methods
.method public createView(Landroid/content/Context;)Landroid/view/View;
    .registers 15
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 165
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const v1, 0x7f0200dd

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 166
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    .line 167
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string v1, "NewGroup"

    const v2, 0x7f070344

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 169
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v1, Lorg/telegram/ui/GroupCreateFinalActivity$2;

    invoke-direct {v1, p0}, Lorg/telegram/ui/GroupCreateFinalActivity$2;-><init>(Lorg/telegram/ui/GroupCreateFinalActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 200
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v10

    .line 201
    .local v10, "menu":Lorg/telegram/ui/ActionBar/ActionBarMenu;
    const/4 v0, 0x1

    const v1, 0x7f020114

    const/high16 v2, 0x42600000    # 56.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-virtual {v10, v0, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItemWithWidth(III)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 202
    new-instance v0, Lorg/telegram/ui/Components/ContextProgressView;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lorg/telegram/ui/Components/ContextProgressView;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->progressView:Lorg/telegram/ui/Components/ContextProgressView;

    .line 203
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    iget-object v1, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->progressView:Lorg/telegram/ui/Components/ContextProgressView;

    const/4 v2, -0x1

    const/high16 v3, -0x40800000    # -1.0f

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 204
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->progressView:Lorg/telegram/ui/Components/ContextProgressView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ContextProgressView;->setVisibility(I)V

    .line 206
    new-instance v0, Lorg/telegram/ui/GroupCreateFinalActivity$3;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/GroupCreateFinalActivity$3;-><init>(Lorg/telegram/ui/GroupCreateFinalActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->fragmentView:Landroid/view/View;

    .line 216
    iget-object v8, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->fragmentView:Landroid/view/View;

    check-cast v8, Landroid/widget/LinearLayout;

    .line 217
    .local v8, "linearLayout":Landroid/widget/LinearLayout;
    const/4 v0, 0x1

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 219
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->editTextContainer:Landroid/widget/FrameLayout;

    .line 220
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->editTextContainer:Landroid/widget/FrameLayout;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 222
    new-instance v0, Lorg/telegram/ui/Components/BackupImageView;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    .line 223
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    const/high16 v1, 0x42000000    # 32.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/BackupImageView;->setRoundRadius(I)V

    .line 224
    iget-object v1, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    const/4 v2, 0x5

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget v0, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->chatType:I

    const/4 v5, 0x1

    if-ne v0, v5, :cond_1e2

    const/4 v0, 0x1

    :goto_96
    invoke-virtual {v1, v2, v3, v4, v0}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(ILjava/lang/String;Ljava/lang/String;Z)V

    .line 225
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v1, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/BackupImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 226
    iget-object v11, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->editTextContainer:Landroid/widget/FrameLayout;

    iget-object v12, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    const/16 v0, 0x40

    const/high16 v1, 0x42800000    # 64.0f

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_1e5

    const/4 v2, 0x5

    :goto_ad
    or-int/lit8 v2, v2, 0x30

    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v3, :cond_1e8

    const/4 v3, 0x0

    :goto_b4
    const/high16 v4, 0x41800000    # 16.0f

    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v5, :cond_1ec

    const/high16 v5, 0x41800000    # 16.0f

    :goto_bc
    const/high16 v6, 0x41800000    # 16.0f

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v11, v12, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 228
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AvatarDrawable;->setDrawPhoto(Z)V

    .line 229
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    new-instance v1, Lorg/telegram/ui/GroupCreateFinalActivity$4;

    invoke-direct {v1, p0}, Lorg/telegram/ui/GroupCreateFinalActivity$4;-><init>(Lorg/telegram/ui/GroupCreateFinalActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/BackupImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 263
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->editText:Landroid/widget/EditText;

    .line 264
    iget-object v1, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->editText:Landroid/widget/EditText;

    iget v0, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->chatType:I

    if-nez v0, :cond_1ef

    const-string v0, "EnterGroupNamePlaceholder"

    const v2, 0x7f07020a

    invoke-static {v0, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    :goto_eb
    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 265
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->nameToSet:Ljava/lang/String;

    if-eqz v0, :cond_fc

    .line 266
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->editText:Landroid/widget/EditText;

    iget-object v1, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->nameToSet:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 267
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->nameToSet:Ljava/lang/String;

    .line 269
    :cond_fc
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->editText:Landroid/widget/EditText;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setMaxLines(I)V

    .line 270
    iget-object v1, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->editText:Landroid/widget/EditText;

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_1fa

    const/4 v0, 0x5

    :goto_109
    or-int/lit8 v0, v0, 0x10

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setGravity(I)V

    .line 271
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->editText:Landroid/widget/EditText;

    const/4 v1, 0x1

    const/high16 v2, 0x41900000    # 18.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 272
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->editText:Landroid/widget/EditText;

    const-string v1, "windowBackgroundWhiteHintText"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 273
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->editText:Landroid/widget/EditText;

    const-string v1, "windowBackgroundWhiteBlackText"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextColor(I)V

    .line 274
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->editText:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lorg/telegram/ui/ActionBar/Theme;->createEditTextDrawable(Landroid/content/Context;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 275
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->editText:Landroid/widget/EditText;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 276
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->editText:Landroid/widget/EditText;

    const/16 v1, 0x4000

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 277
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->editText:Landroid/widget/EditText;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x41000000    # 8.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 278
    const/4 v0, 0x1

    new-array v7, v0, [Landroid/text/InputFilter;

    .line 279
    .local v7, "inputFilters":[Landroid/text/InputFilter;
    const/4 v0, 0x0

    new-instance v1, Landroid/text/InputFilter$LengthFilter;

    const/16 v2, 0x64

    invoke-direct {v1, v2}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v1, v7, v0

    .line 280
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->editText:Landroid/widget/EditText;

    invoke-virtual {v0, v7}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 281
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->editText:Landroid/widget/EditText;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->clearCursorDrawable(Landroid/widget/EditText;)V

    .line 282
    iget-object v11, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->editTextContainer:Landroid/widget/FrameLayout;

    iget-object v12, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->editText:Landroid/widget/EditText;

    const/4 v0, -0x1

    const/high16 v1, -0x40000000    # -2.0f

    const/16 v2, 0x10

    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v3, :cond_1fd

    const/high16 v3, 0x41800000    # 16.0f

    :goto_178
    const/4 v4, 0x0

    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v5, :cond_201

    const/high16 v5, 0x42c00000    # 96.0f

    :goto_17f
    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v11, v12, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 283
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->editText:Landroid/widget/EditText;

    new-instance v1, Lorg/telegram/ui/GroupCreateFinalActivity$5;

    invoke-direct {v1, p0}, Lorg/telegram/ui/GroupCreateFinalActivity$5;-><init>(Lorg/telegram/ui/GroupCreateFinalActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 301
    new-instance v9, Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {v9, p1, v0, v1}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 303
    .local v9, "linearLayoutManager":Lorg/telegram/messenger/support/widget/LinearLayoutManager;
    new-instance v0, Lorg/telegram/ui/Components/RecyclerListView;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->listView:Lorg/telegram/messenger/support/widget/RecyclerView;

    .line 304
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->listView:Lorg/telegram/messenger/support/widget/RecyclerView;

    new-instance v1, Lorg/telegram/ui/GroupCreateFinalActivity$GroupCreateAdapter;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/GroupCreateFinalActivity$GroupCreateAdapter;-><init>(Lorg/telegram/ui/GroupCreateFinalActivity;Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->adapter:Lorg/telegram/ui/GroupCreateFinalActivity$GroupCreateAdapter;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/support/widget/RecyclerView;->setAdapter(Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;)V

    .line 305
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->listView:Lorg/telegram/messenger/support/widget/RecyclerView;

    invoke-virtual {v0, v9}, Lorg/telegram/messenger/support/widget/RecyclerView;->setLayoutManager(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;)V

    .line 306
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->listView:Lorg/telegram/messenger/support/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/support/widget/RecyclerView;->setVerticalScrollBarEnabled(Z)V

    .line 307
    iget-object v1, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->listView:Lorg/telegram/messenger/support/widget/RecyclerView;

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_205

    const/4 v0, 0x1

    :goto_1bd
    invoke-virtual {v1, v0}, Lorg/telegram/messenger/support/widget/RecyclerView;->setVerticalScrollbarPosition(I)V

    .line 308
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->listView:Lorg/telegram/messenger/support/widget/RecyclerView;

    new-instance v1, Lorg/telegram/ui/Components/GroupCreateDividerItemDecoration;

    invoke-direct {v1}, Lorg/telegram/ui/Components/GroupCreateDividerItemDecoration;-><init>()V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/support/widget/RecyclerView;->addItemDecoration(Lorg/telegram/messenger/support/widget/RecyclerView$ItemDecoration;)V

    .line 309
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->listView:Lorg/telegram/messenger/support/widget/RecyclerView;

    const/4 v1, -0x1

    const/4 v2, -0x1

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 310
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->listView:Lorg/telegram/messenger/support/widget/RecyclerView;

    new-instance v1, Lorg/telegram/ui/GroupCreateFinalActivity$6;

    invoke-direct {v1, p0}, Lorg/telegram/ui/GroupCreateFinalActivity$6;-><init>(Lorg/telegram/ui/GroupCreateFinalActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/support/widget/RecyclerView;->setOnScrollListener(Lorg/telegram/messenger/support/widget/RecyclerView$OnScrollListener;)V

    .line 319
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->fragmentView:Landroid/view/View;

    return-object v0

    .line 224
    .end local v7    # "inputFilters":[Landroid/text/InputFilter;
    .end local v9    # "linearLayoutManager":Lorg/telegram/messenger/support/widget/LinearLayoutManager;
    :cond_1e2
    const/4 v0, 0x0

    goto/16 :goto_96

    .line 226
    :cond_1e5
    const/4 v2, 0x3

    goto/16 :goto_ad

    :cond_1e8
    const/high16 v3, 0x41800000    # 16.0f

    goto/16 :goto_b4

    :cond_1ec
    const/4 v5, 0x0

    goto/16 :goto_bc

    .line 264
    :cond_1ef
    const-string v0, "EnterListName"

    const v2, 0x7f07020b

    invoke-static {v0, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_eb

    .line 270
    :cond_1fa
    const/4 v0, 0x3

    goto/16 :goto_109

    .line 282
    .restart local v7    # "inputFilters":[Landroid/text/InputFilter;
    :cond_1fd
    const/high16 v3, 0x42c00000    # 96.0f

    goto/16 :goto_178

    :cond_201
    const/high16 v5, 0x41800000    # 16.0f

    goto/16 :goto_17f

    .line 307
    .restart local v9    # "linearLayoutManager":Lorg/telegram/messenger/support/widget/LinearLayoutManager;
    :cond_205
    const/4 v0, 0x2

    goto :goto_1bd
.end method

.method public varargs didReceivedNotification(I[Ljava/lang/Object;)V
    .registers 13
    .param p1, "id"    # I
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 380
    sget v6, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    if-ne p1, v6, :cond_3a

    .line 381
    iget-object v6, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->listView:Lorg/telegram/messenger/support/widget/RecyclerView;

    if-nez v6, :cond_b

    .line 412
    :cond_a
    :goto_a
    return-void

    .line 384
    :cond_b
    aget-object v6, p2, v8

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 385
    .local v5, "mask":I
    and-int/lit8 v6, v5, 0x2

    if-nez v6, :cond_1f

    and-int/lit8 v6, v5, 0x1

    if-nez v6, :cond_1f

    and-int/lit8 v6, v5, 0x4

    if-eqz v6, :cond_a

    .line 386
    :cond_1f
    iget-object v6, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->listView:Lorg/telegram/messenger/support/widget/RecyclerView;

    invoke-virtual {v6}, Lorg/telegram/messenger/support/widget/RecyclerView;->getChildCount()I

    move-result v4

    .line 387
    .local v4, "count":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_26
    if-ge v0, v4, :cond_a

    .line 388
    iget-object v6, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->listView:Lorg/telegram/messenger/support/widget/RecyclerView;

    invoke-virtual {v6, v0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 389
    .local v3, "child":Landroid/view/View;
    instance-of v6, v3, Lorg/telegram/ui/Cells/GroupCreateUserCell;

    if-eqz v6, :cond_37

    .line 390
    check-cast v3, Lorg/telegram/ui/Cells/GroupCreateUserCell;

    .end local v3    # "child":Landroid/view/View;
    invoke-virtual {v3, v5}, Lorg/telegram/ui/Cells/GroupCreateUserCell;->update(I)V

    .line 387
    :cond_37
    add-int/lit8 v0, v0, 0x1

    goto :goto_26

    .line 394
    .end local v0    # "a":I
    .end local v4    # "count":I
    .end local v5    # "mask":I
    :cond_3a
    sget v6, Lorg/telegram/messenger/NotificationCenter;->chatDidFailCreate:I

    if-ne p1, v6, :cond_4f

    .line 395
    iput v8, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->reqId:I

    .line 396
    iput-boolean v8, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->donePressed:Z

    .line 397
    invoke-direct {p0, v8}, Lorg/telegram/ui/GroupCreateFinalActivity;->showEditDoneProgress(Z)V

    .line 398
    iget-object v6, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->editText:Landroid/widget/EditText;

    if-eqz v6, :cond_a

    .line 399
    iget-object v6, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->editText:Landroid/widget/EditText;

    invoke-virtual {v6, v9}, Landroid/widget/EditText;->setEnabled(Z)V

    goto :goto_a

    .line 401
    :cond_4f
    sget v6, Lorg/telegram/messenger/NotificationCenter;->chatDidCreated:I

    if-ne p1, v6, :cond_a

    .line 402
    iput v8, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->reqId:I

    .line 403
    aget-object v6, p2, v8

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 404
    .local v2, "chat_id":I
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v6

    sget v7, Lorg/telegram/messenger/NotificationCenter;->closeChats:I

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v6, v7, v8}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 405
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 406
    .local v1, "args2":Landroid/os/Bundle;
    const-string v6, "chat_id"

    invoke-virtual {v1, v6, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 407
    new-instance v6, Lorg/telegram/ui/ChatActivity;

    invoke-direct {v6, v1}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {p0, v6, v9}, Lorg/telegram/ui/GroupCreateFinalActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;Z)Z

    .line 408
    iget-object v6, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->uploadedAvatar:Lorg/telegram/tgnet/TLRPC$InputFile;

    if-eqz v6, :cond_a

    .line 409
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    iget-object v7, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->uploadedAvatar:Lorg/telegram/tgnet/TLRPC$InputFile;

    invoke-virtual {v6, v2, v7}, Lorg/telegram/messenger/MessagesController;->changeChatAvatar(ILorg/telegram/tgnet/TLRPC$InputFile;)V

    goto :goto_a
.end method

.method public didUploadedPhoto(Lorg/telegram/tgnet/TLRPC$InputFile;Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$PhotoSize;)V
    .registers 5
    .param p1, "file"    # Lorg/telegram/tgnet/TLRPC$InputFile;
    .param p2, "small"    # Lorg/telegram/tgnet/TLRPC$PhotoSize;
    .param p3, "big"    # Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .prologue
    .line 324
    new-instance v0, Lorg/telegram/ui/GroupCreateFinalActivity$7;

    invoke-direct {v0, p0, p1, p2}, Lorg/telegram/ui/GroupCreateFinalActivity$7;-><init>(Lorg/telegram/ui/GroupCreateFinalActivity;Lorg/telegram/tgnet/TLRPC$InputFile;Lorg/telegram/tgnet/TLRPC$PhotoSize;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 335
    return-void
.end method

.method public getThemeDescriptions()[Lorg/telegram/ui/ActionBar/ThemeDescription;
    .registers 13

    .prologue
    .line 536
    new-instance v9, Lorg/telegram/ui/GroupCreateFinalActivity$9;

    invoke-direct {v9, p0}, Lorg/telegram/ui/GroupCreateFinalActivity$9;-><init>(Lorg/telegram/ui/GroupCreateFinalActivity;)V

    .line 551
    .local v9, "\u0441ellDelegate":Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;
    const/16 v0, 0x22

    new-array v10, v0, [Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v8, 0x0

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->fragmentView:Landroid/view/View;

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

    iget-object v1, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

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

    iget-object v1, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->listView:Lorg/telegram/messenger/support/widget/RecyclerView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LISTGLOWCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "actionBarDefault"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/4 v8, 0x3

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_ITEMSCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "actionBarDefaultIcon"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/4 v8, 0x4

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_TITLECOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "actionBarDefaultTitle"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/4 v8, 0x5

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SELECTORCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "actionBarDefaultSelector"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/4 v8, 0x6

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->listView:Lorg/telegram/messenger/support/widget/RecyclerView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "listSelectorSDK21"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/4 v8, 0x7

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->listView:Lorg/telegram/messenger/support/widget/RecyclerView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_FASTSCROLL:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "fastScrollActive"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x8

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->listView:Lorg/telegram/messenger/support/widget/RecyclerView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_FASTSCROLL:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "fastScrollInactive"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x9

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->listView:Lorg/telegram/messenger/support/widget/RecyclerView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_FASTSCROLL:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "fastScrollText"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0xa

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->listView:Lorg/telegram/messenger/support/widget/RecyclerView;

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

    const/16 v8, 0xb

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->editText:Landroid/widget/EditText;

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

    iget-object v1, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->editText:Landroid/widget/EditText;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_HINTTEXTCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "groupcreate_hintText"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0xd

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->editText:Landroid/widget/EditText;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CURSORCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "groupcreate_cursor"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0xe

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->editText:Landroid/widget/EditText;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "windowBackgroundWhiteInputField"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0xf

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->editText:Landroid/widget/EditText;

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

    const/16 v8, 0x10

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->listView:Lorg/telegram/messenger/support/widget/RecyclerView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CELLBACKGROUNDCOLOR:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/GroupCreateSectionCell;

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "graySection"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v11, 0x11

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->listView:Lorg/telegram/messenger/support/widget/RecyclerView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/GroupCreateSectionCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "drawable"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "groupcreate_sectionShadow"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v11

    const/16 v11, 0x12

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->listView:Lorg/telegram/messenger/support/widget/RecyclerView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/GroupCreateSectionCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "textView"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "groupcreate_sectionText"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v11

    const/16 v11, 0x13

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->listView:Lorg/telegram/messenger/support/widget/RecyclerView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/GroupCreateUserCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "textView"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "groupcreate_sectionText"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v11

    const/16 v11, 0x14

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->listView:Lorg/telegram/messenger/support/widget/RecyclerView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    or-int/2addr v2, v3

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/GroupCreateUserCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "statusTextView"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "groupcreate_onlineText"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v11

    const/16 v11, 0x15

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->listView:Lorg/telegram/messenger/support/widget/RecyclerView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    or-int/2addr v2, v3

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/GroupCreateUserCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "statusTextView"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "groupcreate_offlineText"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v11

    const/16 v8, 0x16

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->listView:Lorg/telegram/messenger/support/widget/RecyclerView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/GroupCreateUserCell;

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

    const-string v7, "avatar_text"

    move-object v6, v9

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

    const/16 v8, 0x1e

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->progressView:Lorg/telegram/ui/Components/ContextProgressView;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "contextProgressInner2"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x1f

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->progressView:Lorg/telegram/ui/Components/ContextProgressView;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "contextProgressOuter2"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x20

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->editText:Landroid/widget/EditText;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "windowBackgroundWhiteBlackText"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x21

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->editText:Landroid/widget/EditText;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_HINTTEXTCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "windowBackgroundWhiteHintText"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    return-object v10
.end method

.method public onActivityResultFragment(IILandroid/content/Intent;)V
    .registers 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 339
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->avatarUpdater:Lorg/telegram/ui/Components/AvatarUpdater;

    invoke-virtual {v0, p1, p2, p3}, Lorg/telegram/ui/Components/AvatarUpdater;->onActivityResult(IILandroid/content/Intent;)V

    .line 340
    return-void
.end method

.method public onFragmentCreate()Z
    .registers 11

    .prologue
    const/4 v7, 0x0

    .line 101
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v8

    sget v9, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    invoke-virtual {v8, p0, v9}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 102
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v8

    sget v9, Lorg/telegram/messenger/NotificationCenter;->chatDidCreated:I

    invoke-virtual {v8, p0, v9}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 103
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v8

    sget v9, Lorg/telegram/messenger/NotificationCenter;->chatDidFailCreate:I

    invoke-virtual {v8, p0, v9}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 104
    iget-object v8, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->avatarUpdater:Lorg/telegram/ui/Components/AvatarUpdater;

    iput-object p0, v8, Lorg/telegram/ui/Components/AvatarUpdater;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 105
    iget-object v8, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->avatarUpdater:Lorg/telegram/ui/Components/AvatarUpdater;

    iput-object p0, v8, Lorg/telegram/ui/Components/AvatarUpdater;->delegate:Lorg/telegram/ui/Components/AvatarUpdater$AvatarUpdaterDelegate;

    .line 106
    invoke-virtual {p0}, Lorg/telegram/ui/GroupCreateFinalActivity;->getArguments()Landroid/os/Bundle;

    move-result-object v8

    const-string v9, "result"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    iput-object v8, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->selectedContacts:Ljava/util/ArrayList;

    .line 107
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 108
    .local v6, "usersToLoad":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_36
    iget-object v8, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->selectedContacts:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v0, v8, :cond_56

    .line 109
    iget-object v8, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->selectedContacts:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 110
    .local v3, "uid":Ljava/lang/Integer;
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v8

    invoke-virtual {v8, v3}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v8

    if-nez v8, :cond_53

    .line 111
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    :cond_53
    add-int/lit8 v0, v0, 0x1

    goto :goto_36

    .line 114
    .end local v3    # "uid":Ljava/lang/Integer;
    :cond_56
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_a8

    .line 115
    new-instance v2, Ljava/util/concurrent/Semaphore;

    invoke-direct {v2, v7}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    .line 116
    .local v2, "semaphore":Ljava/util/concurrent/Semaphore;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 117
    .local v5, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$User;>;"
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v8

    invoke-virtual {v8}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v8

    new-instance v9, Lorg/telegram/ui/GroupCreateFinalActivity$1;

    invoke-direct {v9, p0, v5, v6, v2}, Lorg/telegram/ui/GroupCreateFinalActivity$1;-><init>(Lorg/telegram/ui/GroupCreateFinalActivity;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/concurrent/Semaphore;)V

    invoke-virtual {v8, v9}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 125
    :try_start_76
    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_79
    .catch Ljava/lang/Exception; {:try_start_76 .. :try_end_79} :catch_84

    .line 129
    :goto_79
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-eq v8, v9, :cond_89

    .line 140
    .end local v2    # "semaphore":Ljava/util/concurrent/Semaphore;
    .end local v5    # "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$User;>;"
    :cond_83
    :goto_83
    return v7

    .line 126
    .restart local v2    # "semaphore":Ljava/util/concurrent/Semaphore;
    .restart local v5    # "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$User;>;"
    :catch_84
    move-exception v1

    .line 127
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_79

    .line 132
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_89
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_83

    .line 133
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_93
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_a8

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$User;

    .line 134
    .local v4, "user":Lorg/telegram/tgnet/TLRPC$User;
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v4, v9}, Lorg/telegram/messenger/MessagesController;->putUser(Lorg/telegram/tgnet/TLRPC$User;Z)Z

    goto :goto_93

    .line 140
    .end local v2    # "semaphore":Ljava/util/concurrent/Semaphore;
    .end local v4    # "user":Lorg/telegram/tgnet/TLRPC$User;
    .end local v5    # "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$User;>;"
    :cond_a8
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    move-result v7

    goto :goto_83
.end method

.method public onFragmentDestroy()V
    .registers 4

    .prologue
    .line 145
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    .line 146
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 147
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->chatDidCreated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 148
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->chatDidFailCreate:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 149
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->avatarUpdater:Lorg/telegram/ui/Components/AvatarUpdater;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AvatarUpdater;->clear()V

    .line 150
    iget v0, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->reqId:I

    if-eqz v0, :cond_31

    .line 151
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->reqId:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    .line 153
    :cond_31
    return-void
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 157
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onResume()V

    .line 158
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->adapter:Lorg/telegram/ui/GroupCreateFinalActivity$GroupCreateAdapter;

    if-eqz v0, :cond_c

    .line 159
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->adapter:Lorg/telegram/ui/GroupCreateFinalActivity$GroupCreateAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/GroupCreateFinalActivity$GroupCreateAdapter;->notifyDataSetChanged()V

    .line 161
    :cond_c
    return-void
.end method

.method public onTransitionAnimationEnd(ZZ)V
    .registers 4
    .param p1, "isOpen"    # Z
    .param p2, "backward"    # Z

    .prologue
    .line 372
    if-eqz p1, :cond_c

    .line 373
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->editText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 374
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->editText:Landroid/widget/EditText;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)V

    .line 376
    :cond_c
    return-void
.end method

.method public restoreSelfArgs(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    .line 357
    iget-object v1, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->avatarUpdater:Lorg/telegram/ui/Components/AvatarUpdater;

    if-eqz v1, :cond_e

    .line 358
    iget-object v1, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->avatarUpdater:Lorg/telegram/ui/Components/AvatarUpdater;

    const-string v2, "path"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lorg/telegram/ui/Components/AvatarUpdater;->currentPicturePath:Ljava/lang/String;

    .line 360
    :cond_e
    const-string v1, "nameTextView"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 361
    .local v0, "text":Ljava/lang/String;
    if-eqz v0, :cond_1f

    .line 362
    iget-object v1, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->editText:Landroid/widget/EditText;

    if-eqz v1, :cond_20

    .line 363
    iget-object v1, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->editText:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 368
    :cond_1f
    :goto_1f
    return-void

    .line 365
    :cond_20
    iput-object v0, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->nameToSet:Ljava/lang/String;

    goto :goto_1f
.end method

.method public saveSelfArgs(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    .line 344
    iget-object v1, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->avatarUpdater:Lorg/telegram/ui/Components/AvatarUpdater;

    if-eqz v1, :cond_13

    iget-object v1, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->avatarUpdater:Lorg/telegram/ui/Components/AvatarUpdater;

    iget-object v1, v1, Lorg/telegram/ui/Components/AvatarUpdater;->currentPicturePath:Ljava/lang/String;

    if-eqz v1, :cond_13

    .line 345
    const-string v1, "path"

    iget-object v2, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->avatarUpdater:Lorg/telegram/ui/Components/AvatarUpdater;

    iget-object v2, v2, Lorg/telegram/ui/Components/AvatarUpdater;->currentPicturePath:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    :cond_13
    iget-object v1, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->editText:Landroid/widget/EditText;

    if-eqz v1, :cond_2e

    .line 348
    iget-object v1, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->editText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 349
    .local v0, "text":Ljava/lang/String;
    if-eqz v0, :cond_2e

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_2e

    .line 350
    const-string v1, "nameTextView"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    .end local v0    # "text":Ljava/lang/String;
    :cond_2e
    return-void
.end method
