.class public Lorg/telegram/ui/LaunchActivity;
.super Landroid/app/Activity;
.source "LaunchActivity.java"

# interfaces
.implements Lorg/telegram/ui/ActionBar/ActionBarLayout$ActionBarLayoutDelegate;
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;
.implements Lorg/telegram/ui/DialogsActivity$DialogsActivityDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/LaunchActivity$VcardData;
    }
.end annotation


# static fields
.field private static layerFragmentsStack:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/ui/ActionBar/BaseFragment;",
            ">;"
        }
    .end annotation
.end field

.field public static mIsUprade:Z

.field private static mainFragmentsStack:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/ui/ActionBar/BaseFragment;",
            ">;"
        }
    .end annotation
.end field

.field private static rightFragmentsStack:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/ui/ActionBar/BaseFragment;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

.field private backgroundTablet:Landroid/view/View;

.field private contactsToSend:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$User;",
            ">;"
        }
    .end annotation
.end field

.field private currentConnectionState:I

.field private documentsMimeType:Ljava/lang/String;

.field private documentsOriginalPathsArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private documentsPathsArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private documentsUrisArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private drawerLayoutAdapter:Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;

.field protected drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

.field private finished:Z

.field private layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

.field private lockRunnable:Ljava/lang/Runnable;

.field private onGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private passcodeSaveIntent:Landroid/content/Intent;

.field private passcodeSaveIntentIsNew:Z

.field private passcodeSaveIntentIsRestore:Z

.field private passcodeView:Lorg/telegram/ui/Components/PasscodeView;

.field private photoPathsArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

.field private sendingText:Ljava/lang/String;

.field private shadowTablet:Landroid/widget/FrameLayout;

.field private shadowTabletSide:Landroid/widget/FrameLayout;

.field private sideMenu:Lorg/telegram/ui/Components/RecyclerListView;

.field private tabletFullSize:Z

.field private videoPath:Ljava/lang/String;

.field private visibleDialog:Lorg/telegram/ui/ActionBar/AlertDialog;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 108
    const/4 v0, 0x0

    sput-boolean v0, Lorg/telegram/ui/LaunchActivity;->mIsUprade:Z

    .line 120
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lorg/telegram/ui/LaunchActivity;->mainFragmentsStack:Ljava/util/ArrayList;

    .line 121
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lorg/telegram/ui/LaunchActivity;->layerFragmentsStack:Ljava/util/ArrayList;

    .line 122
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lorg/telegram/ui/LaunchActivity;->rightFragmentsStack:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 105
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lorg/telegram/ui/LaunchActivity;Z)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/LaunchActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 105
    iput-boolean p1, p0, Lorg/telegram/ui/LaunchActivity;->tabletFullSize:Z

    return p1
.end method

.method static synthetic access$100(Lorg/telegram/ui/LaunchActivity;)Lorg/telegram/ui/ActionBar/ActionBarLayout;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/LaunchActivity;

    .prologue
    .line 105
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    return-object v0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/LaunchActivity;)Landroid/content/Intent;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/LaunchActivity;

    .prologue
    .line 105
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->passcodeSaveIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$1002(Lorg/telegram/ui/LaunchActivity;Landroid/content/Intent;)Landroid/content/Intent;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/LaunchActivity;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 105
    iput-object p1, p0, Lorg/telegram/ui/LaunchActivity;->passcodeSaveIntent:Landroid/content/Intent;

    return-object p1
.end method

.method static synthetic access$1100(Lorg/telegram/ui/LaunchActivity;)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/LaunchActivity;

    .prologue
    .line 105
    iget-boolean v0, p0, Lorg/telegram/ui/LaunchActivity;->passcodeSaveIntentIsNew:Z

    return v0
.end method

.method static synthetic access$1200(Lorg/telegram/ui/LaunchActivity;)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/LaunchActivity;

    .prologue
    .line 105
    iget-boolean v0, p0, Lorg/telegram/ui/LaunchActivity;->passcodeSaveIntentIsRestore:Z

    return v0
.end method

.method static synthetic access$1400(Lorg/telegram/ui/LaunchActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Integer;Ljava/lang/String;I)V
    .registers 11
    .param p0, "x0"    # Lorg/telegram/ui/LaunchActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # Ljava/lang/String;
    .param p6, "x6"    # Ljava/lang/String;
    .param p7, "x7"    # Z
    .param p8, "x8"    # Ljava/lang/Integer;
    .param p9, "x9"    # Ljava/lang/String;
    .param p10, "x10"    # I

    .prologue
    .line 105
    invoke-direct/range {p0 .. p10}, Lorg/telegram/ui/LaunchActivity;->runLinkRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Integer;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$1502(Lorg/telegram/ui/LaunchActivity;Lorg/telegram/ui/ActionBar/AlertDialog;)Lorg/telegram/ui/ActionBar/AlertDialog;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/LaunchActivity;
    .param p1, "x1"    # Lorg/telegram/ui/ActionBar/AlertDialog;

    .prologue
    .line 105
    iput-object p1, p0, Lorg/telegram/ui/LaunchActivity;->visibleDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    return-object p1
.end method

.method static synthetic access$1600(Lorg/telegram/ui/LaunchActivity;)Ljava/lang/Runnable;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/LaunchActivity;

    .prologue
    .line 105
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->lockRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1602(Lorg/telegram/ui/LaunchActivity;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/LaunchActivity;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 105
    iput-object p1, p0, Lorg/telegram/ui/LaunchActivity;->lockRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$1700(Lorg/telegram/ui/LaunchActivity;)V
    .registers 1
    .param p0, "x0"    # Lorg/telegram/ui/LaunchActivity;

    .prologue
    .line 105
    invoke-direct {p0}, Lorg/telegram/ui/LaunchActivity;->showPasscodeActivity()V

    return-void
.end method

.method static synthetic access$200(Lorg/telegram/ui/LaunchActivity;)Landroid/widget/FrameLayout;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/LaunchActivity;

    .prologue
    .line 105
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->shadowTabletSide:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$300(Lorg/telegram/ui/LaunchActivity;)Lorg/telegram/ui/ActionBar/ActionBarLayout;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/LaunchActivity;

    .prologue
    .line 105
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    return-object v0
.end method

.method static synthetic access$400(Lorg/telegram/ui/LaunchActivity;)Landroid/view/View;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/LaunchActivity;

    .prologue
    .line 105
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->backgroundTablet:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$500(Lorg/telegram/ui/LaunchActivity;)Landroid/widget/FrameLayout;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/LaunchActivity;

    .prologue
    .line 105
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->shadowTablet:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$600(Lorg/telegram/ui/LaunchActivity;)Lorg/telegram/ui/ActionBar/ActionBarLayout;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/LaunchActivity;

    .prologue
    .line 105
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    return-object v0
.end method

.method static synthetic access$700(Lorg/telegram/ui/LaunchActivity;)Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/LaunchActivity;

    .prologue
    .line 105
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->drawerLayoutAdapter:Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;

    return-object v0
.end method

.method static synthetic access$800(Lorg/telegram/ui/LaunchActivity;Landroid/content/Intent;ZZZ)Z
    .registers 6
    .param p0, "x0"    # Lorg/telegram/ui/LaunchActivity;
    .param p1, "x1"    # Landroid/content/Intent;
    .param p2, "x2"    # Z
    .param p3, "x3"    # Z
    .param p4, "x4"    # Z

    .prologue
    .line 105
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/LaunchActivity;->handleIntent(Landroid/content/Intent;ZZZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900()Ljava/util/ArrayList;
    .registers 1

    .prologue
    .line 105
    sget-object v0, Lorg/telegram/ui/LaunchActivity;->mainFragmentsStack:Ljava/util/ArrayList;

    return-object v0
.end method

.method private checkLayout()V
    .registers 8

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 682
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_f

    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    if-nez v2, :cond_10

    .line 728
    :cond_f
    :goto_f
    return-void

    .line 686
    :cond_10
    sget-boolean v2, Lorg/telegram/messenger/AndroidUtilities;->isInMultiwindow:Z

    if-nez v2, :cond_b0

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isSmallTablet()Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-virtual {p0}, Lorg/telegram/ui/LaunchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v6, :cond_b0

    .line 687
    :cond_26
    iput-boolean v4, p0, Lorg/telegram/ui/LaunchActivity;->tabletFullSize:Z

    .line 688
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v2, v2, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v2, v6, :cond_79

    .line 689
    const/4 v0, 0x1

    .local v0, "a":I
    :goto_33
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v2, v2, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_67

    .line 690
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v2, v2, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 691
    .local v1, "chatFragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    instance-of v2, v1, Lorg/telegram/ui/ChatActivity;

    if-eqz v2, :cond_51

    move-object v2, v1

    .line 692
    check-cast v2, Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v2, v5}, Lorg/telegram/ui/ChatActivity;->setIgnoreAttachOnPause(Z)V

    .line 694
    :cond_51
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->onPause()V

    .line 695
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v2, v2, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 696
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v2, v2, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 697
    add-int/lit8 v0, v0, -0x1

    .line 689
    add-int/lit8 v0, v0, 0x1

    goto :goto_33

    .line 699
    .end local v1    # "chatFragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    :cond_67
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->passcodeView:Lorg/telegram/ui/Components/PasscodeView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/PasscodeView;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_79

    .line 700
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->showLastFragment()V

    .line 701
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->showLastFragment()V

    .line 704
    .end local v0    # "a":I
    :cond_79
    iget-object v5, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v2, v2, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_aa

    move v2, v3

    :goto_86
    invoke-virtual {v5, v2}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->setVisibility(I)V

    .line 705
    iget-object v5, p0, Lorg/telegram/ui/LaunchActivity;->backgroundTablet:Landroid/view/View;

    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v2, v2, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_ac

    move v2, v4

    :goto_96
    invoke-virtual {v5, v2}, Landroid/view/View;->setVisibility(I)V

    .line 706
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->shadowTabletSide:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v5, v5, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_ae

    :goto_a5
    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto/16 :goto_f

    :cond_aa
    move v2, v4

    .line 704
    goto :goto_86

    :cond_ac
    move v2, v3

    .line 705
    goto :goto_96

    :cond_ae
    move v4, v3

    .line 706
    goto :goto_a5

    .line 708
    :cond_b0
    iput-boolean v5, p0, Lorg/telegram/ui/LaunchActivity;->tabletFullSize:Z

    .line 709
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v2, v2, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_fe

    .line 710
    const/4 v0, 0x0

    .restart local v0    # "a":I
    :goto_bd
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v2, v2, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_f1

    .line 711
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v2, v2, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 712
    .restart local v1    # "chatFragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    instance-of v2, v1, Lorg/telegram/ui/ChatActivity;

    if-eqz v2, :cond_db

    move-object v2, v1

    .line 713
    check-cast v2, Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v2, v5}, Lorg/telegram/ui/ChatActivity;->setIgnoreAttachOnPause(Z)V

    .line 715
    :cond_db
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->onPause()V

    .line 716
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v2, v2, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 717
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v2, v2, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 718
    add-int/lit8 v0, v0, -0x1

    .line 710
    add-int/lit8 v0, v0, 0x1

    goto :goto_bd

    .line 720
    .end local v1    # "chatFragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    :cond_f1
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->passcodeView:Lorg/telegram/ui/Components/PasscodeView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/PasscodeView;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_fe

    .line 721
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->showLastFragment()V

    .line 724
    .end local v0    # "a":I
    :cond_fe
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->shadowTabletSide:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 725
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->setVisibility(I)V

    .line 726
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->backgroundTablet:Landroid/view/View;

    iget-object v5, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v5, v5, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_119

    :goto_114
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_f

    :cond_119
    move v3, v4

    goto :goto_114
.end method

.method private handleIntent(Landroid/content/Intent;ZZZ)Z
    .registers 83
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "isNew"    # Z
    .param p3, "restore"    # Z
    .param p4, "fromPassword"    # Z

    .prologue
    .line 767
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getFlags()I

    move-result v39

    .line 768
    .local v39, "flags":I
    if-nez p4, :cond_2d

    const/4 v4, 0x1

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->needShowPasscode(Z)Z

    move-result v4

    if-nez v4, :cond_11

    sget-boolean v4, Lorg/telegram/messenger/UserConfig;->isWaitingForPasscodeEnter:Z

    if-eqz v4, :cond_2d

    .line 769
    :cond_11
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/LaunchActivity;->showPasscodeActivity()V

    .line 770
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/LaunchActivity;->passcodeSaveIntent:Landroid/content/Intent;

    .line 771
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/telegram/ui/LaunchActivity;->passcodeSaveIntentIsNew:Z

    .line 772
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/telegram/ui/LaunchActivity;->passcodeSaveIntentIsRestore:Z

    .line 773
    const/4 v4, 0x0

    invoke-static {v4}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    .line 1394
    const/16 v55, 0x0

    :goto_2c
    return v55

    .line 775
    :cond_2d
    const/16 v55, 0x0

    .line 777
    .local v55, "pushOpened":Z
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v59

    .line 778
    .local v59, "push_user_id":Ljava/lang/Integer;
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v56

    .line 779
    .local v56, "push_chat_id":Ljava/lang/Integer;
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v57

    .line 780
    .local v57, "push_enc_id":Ljava/lang/Integer;
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v58

    .line 781
    .local v58, "push_msg_id":Ljava/lang/Integer;
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v47

    .line 782
    .local v47, "open_settings":Ljava/lang/Integer;
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v46

    .line 783
    .local v46, "open_new_dialog":Ljava/lang/Integer;
    if-eqz p1, :cond_17d

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    if-eqz v4, :cond_17d

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string v14, "dialogId"

    const-wide/16 v16, 0x0

    move-wide/from16 v0, v16

    invoke-virtual {v4, v14, v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v34

    .line 784
    .local v34, "dialogId":J
    :goto_63
    const/16 v63, 0x0

    .line 785
    .local v63, "showDialogsList":Z
    const/16 v64, 0x0

    .line 787
    .local v64, "showPlayer":Z
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/ui/LaunchActivity;->photoPathsArray:Ljava/util/ArrayList;

    .line 788
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/ui/LaunchActivity;->videoPath:Ljava/lang/String;

    .line 789
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/ui/LaunchActivity;->sendingText:Ljava/lang/String;

    .line 790
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/ui/LaunchActivity;->documentsPathsArray:Ljava/util/ArrayList;

    .line 791
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/ui/LaunchActivity;->documentsOriginalPathsArray:Ljava/util/ArrayList;

    .line 792
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/ui/LaunchActivity;->documentsMimeType:Ljava/lang/String;

    .line 793
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/ui/LaunchActivity;->documentsUrisArray:Ljava/util/ArrayList;

    .line 794
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/ui/LaunchActivity;->contactsToSend:Ljava/util/ArrayList;

    .line 796
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->isClientActivated()Z

    move-result v4

    if-eqz v4, :cond_232

    const/high16 v4, 0x100000

    and-int v4, v4, v39

    if-nez v4, :cond_232

    .line 797
    if-eqz p1, :cond_232

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_232

    if-nez p3, :cond_232

    .line 798
    const-string v4, "android.intent.action.SEND"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_50e

    .line 799
    const/16 v38, 0x0

    .line 800
    .local v38, "error":Z
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v69

    .line 801
    .local v69, "type":Ljava/lang/String;
    if-eqz v69, :cond_3b4

    const-string v4, "text/x-vcard"

    move-object/from16 v0, v69

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3b4

    .line 803
    :try_start_c3
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string v14, "android.intent.extra.STREAM"

    invoke-virtual {v4, v14}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v70

    check-cast v70, Landroid/net/Uri;

    .line 804
    .local v70, "uri":Landroid/net/Uri;
    if-eqz v70, :cond_3b0

    .line 805
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/LaunchActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v28

    .line 806
    .local v28, "cr":Landroid/content/ContentResolver;
    move-object/from16 v0, v28

    move-object/from16 v1, v70

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v65

    .line 807
    .local v65, "stream":Ljava/io/InputStream;
    new-instance v77, Ljava/util/ArrayList;

    invoke-direct/range {v77 .. v77}, Ljava/util/ArrayList;-><init>()V

    .line 808
    .local v77, "vcardDatas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/ui/LaunchActivity$VcardData;>;"
    const/16 v29, 0x0

    .line 810
    .local v29, "currentData":Lorg/telegram/ui/LaunchActivity$VcardData;
    new-instance v24, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    const-string v14, "UTF-8"

    move-object/from16 v0, v65

    invoke-direct {v4, v0, v14}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    move-object/from16 v0, v24

    invoke-direct {v0, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 812
    .local v24, "bufferedReader":Ljava/io/BufferedReader;
    :cond_f4
    :goto_f4
    invoke-virtual/range {v24 .. v24}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v42

    .local v42, "line":Ljava/lang/String;
    if-eqz v42, :cond_32b

    .line 813
    invoke-static/range {v42 .. v42}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 814
    const-string v4, ":"

    move-object/from16 v0, v42

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v21

    .line 815
    .local v21, "args":[Ljava/lang/String;
    move-object/from16 v0, v21

    array-length v4, v0

    const/4 v14, 0x2

    if-ne v4, v14, :cond_f4

    .line 818
    const/4 v4, 0x0

    aget-object v4, v21, v4

    const-string v14, "BEGIN"

    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_181

    const/4 v4, 0x1

    aget-object v4, v21, v4

    const-string v14, "VCARD"

    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_181

    .line 819
    new-instance v29, Lorg/telegram/ui/LaunchActivity$VcardData;

    .end local v29    # "currentData":Lorg/telegram/ui/LaunchActivity$VcardData;
    const/4 v4, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v4}, Lorg/telegram/ui/LaunchActivity$VcardData;-><init>(Lorg/telegram/ui/LaunchActivity;Lorg/telegram/ui/LaunchActivity$1;)V

    .restart local v29    # "currentData":Lorg/telegram/ui/LaunchActivity$VcardData;
    move-object/from16 v0, v77

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 823
    :cond_132
    :goto_132
    if-eqz v29, :cond_f4

    .line 826
    const/4 v4, 0x0

    aget-object v4, v21, v4

    const-string v14, "FN"

    invoke-virtual {v4, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_154

    const/4 v4, 0x0

    aget-object v4, v21, v4

    const-string v14, "ORG"

    invoke-virtual {v4, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_307

    move-object/from16 v0, v29

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity$VcardData;->name:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_307

    .line 827
    :cond_154
    const/16 v45, 0x0

    .line 828
    .local v45, "nameEncoding":Ljava/lang/String;
    const/16 v44, 0x0

    .line 829
    .local v44, "nameCharset":Ljava/lang/String;
    const/4 v4, 0x0

    aget-object v4, v21, v4

    const-string v14, ";"

    invoke-virtual {v4, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v50

    .line 830
    .local v50, "params":[Ljava/lang/String;
    move-object/from16 v0, v50

    array-length v14, v0

    const/4 v4, 0x0

    :goto_165
    if-ge v4, v14, :cond_1b8

    aget-object v49, v50, v4

    .line 831
    .local v49, "param":Ljava/lang/String;
    const-string v15, "="

    move-object/from16 v0, v49

    invoke-virtual {v0, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v22

    .line 832
    .local v22, "args2":[Ljava/lang/String;
    move-object/from16 v0, v22

    array-length v15, v0

    const/16 v16, 0x2

    move/from16 v0, v16

    if-eq v15, v0, :cond_19a

    .line 830
    :cond_17a
    :goto_17a
    add-int/lit8 v4, v4, 0x1

    goto :goto_165

    .line 783
    .end local v21    # "args":[Ljava/lang/String;
    .end local v22    # "args2":[Ljava/lang/String;
    .end local v24    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v28    # "cr":Landroid/content/ContentResolver;
    .end local v29    # "currentData":Lorg/telegram/ui/LaunchActivity$VcardData;
    .end local v34    # "dialogId":J
    .end local v38    # "error":Z
    .end local v42    # "line":Ljava/lang/String;
    .end local v44    # "nameCharset":Ljava/lang/String;
    .end local v45    # "nameEncoding":Ljava/lang/String;
    .end local v49    # "param":Ljava/lang/String;
    .end local v50    # "params":[Ljava/lang/String;
    .end local v63    # "showDialogsList":Z
    .end local v64    # "showPlayer":Z
    .end local v65    # "stream":Ljava/io/InputStream;
    .end local v69    # "type":Ljava/lang/String;
    .end local v70    # "uri":Landroid/net/Uri;
    .end local v77    # "vcardDatas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/ui/LaunchActivity$VcardData;>;"
    :cond_17d
    const-wide/16 v34, 0x0

    goto/16 :goto_63

    .line 820
    .restart local v21    # "args":[Ljava/lang/String;
    .restart local v24    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v28    # "cr":Landroid/content/ContentResolver;
    .restart local v29    # "currentData":Lorg/telegram/ui/LaunchActivity$VcardData;
    .restart local v34    # "dialogId":J
    .restart local v38    # "error":Z
    .restart local v42    # "line":Ljava/lang/String;
    .restart local v63    # "showDialogsList":Z
    .restart local v64    # "showPlayer":Z
    .restart local v65    # "stream":Ljava/io/InputStream;
    .restart local v69    # "type":Ljava/lang/String;
    .restart local v70    # "uri":Landroid/net/Uri;
    .restart local v77    # "vcardDatas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/ui/LaunchActivity$VcardData;>;"
    :cond_181
    const/4 v4, 0x0

    aget-object v4, v21, v4

    const-string v14, "END"

    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_132

    const/4 v4, 0x1

    aget-object v4, v21, v4

    const-string v14, "VCARD"

    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_132

    .line 821
    const/16 v29, 0x0

    goto :goto_132

    .line 835
    .restart local v22    # "args2":[Ljava/lang/String;
    .restart local v44    # "nameCharset":Ljava/lang/String;
    .restart local v45    # "nameEncoding":Ljava/lang/String;
    .restart local v49    # "param":Ljava/lang/String;
    .restart local v50    # "params":[Ljava/lang/String;
    :cond_19a
    const/4 v15, 0x0

    aget-object v15, v22, v15

    const-string v16, "CHARSET"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1a9

    .line 836
    const/4 v15, 0x1

    aget-object v44, v22, v15

    goto :goto_17a

    .line 837
    :cond_1a9
    const/4 v15, 0x0

    aget-object v15, v22, v15

    const-string v16, "ENCODING"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_17a

    .line 838
    const/4 v15, 0x1

    aget-object v45, v22, v15

    goto :goto_17a

    .line 841
    .end local v22    # "args2":[Ljava/lang/String;
    .end local v49    # "param":Ljava/lang/String;
    :cond_1b8
    const/4 v4, 0x1

    aget-object v4, v21, v4

    move-object/from16 v0, v29

    iput-object v4, v0, Lorg/telegram/ui/LaunchActivity$VcardData;->name:Ljava/lang/String;

    .line 842
    if-eqz v45, :cond_f4

    const-string v4, "QUOTED-PRINTABLE"

    move-object/from16 v0, v45

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f4

    .line 843
    :goto_1cb
    move-object/from16 v0, v29

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity$VcardData;->name:Ljava/lang/String;

    const-string v14, "="

    invoke-virtual {v4, v14}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1f6

    if-eqz v45, :cond_1f6

    .line 844
    move-object/from16 v0, v29

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity$VcardData;->name:Ljava/lang/String;

    const/4 v14, 0x0

    move-object/from16 v0, v29

    iget-object v15, v0, Lorg/telegram/ui/LaunchActivity$VcardData;->name:Ljava/lang/String;

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    invoke-virtual {v4, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v29

    iput-object v4, v0, Lorg/telegram/ui/LaunchActivity$VcardData;->name:Ljava/lang/String;

    .line 845
    invoke-virtual/range {v24 .. v24}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v42

    .line 846
    if-nez v42, :cond_2ea

    .line 851
    :cond_1f6
    move-object/from16 v0, v29

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity$VcardData;->name:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->decodeQuotedPrintable([B)[B

    move-result-object v25

    .line 852
    .local v25, "bytes":[B
    if-eqz v25, :cond_f4

    move-object/from16 v0, v25

    array-length v4, v0

    if-eqz v4, :cond_f4

    .line 853
    new-instance v32, Ljava/lang/String;

    move-object/from16 v0, v32

    move-object/from16 v1, v25

    move-object/from16 v2, v44

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 854
    .local v32, "decodedName":Ljava/lang/String;
    if-eqz v32, :cond_f4

    .line 855
    move-object/from16 v0, v32

    move-object/from16 v1, v29

    iput-object v0, v1, Lorg/telegram/ui/LaunchActivity$VcardData;->name:Ljava/lang/String;
    :try_end_21c
    .catch Ljava/lang/Exception; {:try_start_c3 .. :try_end_21c} :catch_21e

    goto/16 :goto_f4

    .line 893
    .end local v21    # "args":[Ljava/lang/String;
    .end local v24    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v25    # "bytes":[B
    .end local v28    # "cr":Landroid/content/ContentResolver;
    .end local v29    # "currentData":Lorg/telegram/ui/LaunchActivity$VcardData;
    .end local v32    # "decodedName":Ljava/lang/String;
    .end local v42    # "line":Ljava/lang/String;
    .end local v44    # "nameCharset":Ljava/lang/String;
    .end local v45    # "nameEncoding":Ljava/lang/String;
    .end local v50    # "params":[Ljava/lang/String;
    .end local v65    # "stream":Ljava/io/InputStream;
    .end local v70    # "uri":Landroid/net/Uri;
    .end local v77    # "vcardDatas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/ui/LaunchActivity$VcardData;>;"
    :catch_21e
    move-exception v36

    .line 894
    .local v36, "e":Ljava/lang/Exception;
    invoke-static/range {v36 .. v36}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 895
    const/16 v38, 0x1

    .line 963
    .end local v36    # "e":Ljava/lang/Exception;
    :cond_224
    :goto_224
    if-eqz v38, :cond_232

    .line 964
    const-string v4, "Unsupported content"

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v4, v14}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 1225
    .end local v38    # "error":Z
    .end local v69    # "type":Ljava/lang/String;
    :cond_232
    :goto_232
    invoke-virtual/range {v59 .. v59}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eqz v4, :cond_b11

    .line 1226
    new-instance v21, Landroid/os/Bundle;

    invoke-direct/range {v21 .. v21}, Landroid/os/Bundle;-><init>()V

    .line 1227
    .local v21, "args":Landroid/os/Bundle;
    const-string v4, "user_id"

    invoke-virtual/range {v59 .. v59}, Ljava/lang/Integer;->intValue()I

    move-result v14

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1228
    invoke-virtual/range {v58 .. v58}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eqz v4, :cond_259

    .line 1229
    const-string v4, "message_id"

    invoke-virtual/range {v58 .. v58}, Ljava/lang/Integer;->intValue()I

    move-result v14

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1230
    :cond_259
    sget-object v4, Lorg/telegram/ui/LaunchActivity;->mainFragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_279

    sget-object v4, Lorg/telegram/ui/LaunchActivity;->mainFragmentsStack:Ljava/util/ArrayList;

    sget-object v14, Lorg/telegram/ui/LaunchActivity;->mainFragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    invoke-virtual {v4, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/ActionBar/BaseFragment;

    move-object/from16 v0, v21

    invoke-static {v0, v4}, Lorg/telegram/messenger/MessagesController;->checkCanOpenChat(Landroid/os/Bundle;Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    move-result v4

    if-eqz v4, :cond_296

    .line 1231
    :cond_279
    new-instance v40, Lorg/telegram/ui/ChatActivity;

    move-object/from16 v0, v40

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    .line 1232
    .local v40, "fragment":Lorg/telegram/ui/ChatActivity;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    const/4 v14, 0x0

    const/4 v15, 0x1

    const/16 v16, 0x1

    move-object/from16 v0, v40

    move/from16 v1, v16

    invoke-virtual {v4, v0, v14, v15, v1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;ZZZ)Z

    move-result v4

    if-eqz v4, :cond_296

    .line 1233
    const/16 v55, 0x1

    .line 1356
    .end local v21    # "args":Landroid/os/Bundle;
    .end local v40    # "fragment":Lorg/telegram/ui/ChatActivity;
    :cond_296
    :goto_296
    if-nez v55, :cond_2e2

    if-nez p2, :cond_2e2

    .line 1357
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v4

    if-eqz v4, :cond_ed9

    .line 1358
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->isClientActivated()Z

    move-result v4

    if-nez v4, :cond_ea8

    .line 1359
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v4, v4, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2c7

    .line 1360
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    new-instance v14, Lorg/telegram/ui/LoginActivity;

    invoke-direct {v14}, Lorg/telegram/ui/LoginActivity;-><init>()V

    invoke-virtual {v4, v14}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->addFragmentToStack(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    .line 1361
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v4, v14, v15}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->setAllowOpenDrawer(ZZ)V

    .line 1384
    :cond_2c7
    :goto_2c7
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->showLastFragment()V

    .line 1385
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v4

    if-eqz v4, :cond_2e2

    .line 1386
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->showLastFragment()V

    .line 1387
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->showLastFragment()V

    .line 1391
    :cond_2e2
    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_2c

    .line 849
    .local v21, "args":[Ljava/lang/String;
    .restart local v24    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v28    # "cr":Landroid/content/ContentResolver;
    .restart local v29    # "currentData":Lorg/telegram/ui/LaunchActivity$VcardData;
    .restart local v38    # "error":Z
    .restart local v42    # "line":Ljava/lang/String;
    .restart local v44    # "nameCharset":Ljava/lang/String;
    .restart local v45    # "nameEncoding":Ljava/lang/String;
    .restart local v50    # "params":[Ljava/lang/String;
    .restart local v65    # "stream":Ljava/io/InputStream;
    .restart local v69    # "type":Ljava/lang/String;
    .restart local v70    # "uri":Landroid/net/Uri;
    .restart local v77    # "vcardDatas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/ui/LaunchActivity$VcardData;>;"
    :cond_2ea
    :try_start_2ea
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    iget-object v14, v0, Lorg/telegram/ui/LaunchActivity$VcardData;->name:Ljava/lang/String;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v42

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v29

    iput-object v4, v0, Lorg/telegram/ui/LaunchActivity$VcardData;->name:Ljava/lang/String;

    goto/16 :goto_1cb

    .line 859
    .end local v44    # "nameCharset":Ljava/lang/String;
    .end local v45    # "nameEncoding":Ljava/lang/String;
    .end local v50    # "params":[Ljava/lang/String;
    :cond_307
    const/4 v4, 0x0

    aget-object v4, v21, v4

    const-string v14, "TEL"

    invoke-virtual {v4, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f4

    .line 860
    const/4 v4, 0x1

    aget-object v4, v21, v4

    const/4 v14, 0x1

    invoke-static {v4, v14}, Lorg/telegram/PhoneFormat/PhoneFormat;->stripExceptNumbers(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v53

    .line 861
    .local v53, "phone":Ljava/lang/String;
    invoke-virtual/range {v53 .. v53}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_f4

    .line 862
    move-object/from16 v0, v29

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity$VcardData;->phones:Ljava/util/ArrayList;

    move-object/from16 v0, v53

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_329
    .catch Ljava/lang/Exception; {:try_start_2ea .. :try_end_329} :catch_21e

    goto/16 :goto_f4

    .line 867
    .end local v21    # "args":[Ljava/lang/String;
    .end local v53    # "phone":Ljava/lang/String;
    :cond_32b
    :try_start_32b
    invoke-virtual/range {v24 .. v24}, Ljava/io/BufferedReader;->close()V

    .line 868
    invoke-virtual/range {v65 .. v65}, Ljava/io/InputStream;->close()V
    :try_end_331
    .catch Ljava/lang/Exception; {:try_start_32b .. :try_end_331} :catch_3a8

    .line 872
    :goto_331
    const/16 v20, 0x0

    .local v20, "a":I
    :goto_333
    :try_start_333
    invoke-virtual/range {v77 .. v77}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v20

    if-ge v0, v4, :cond_224

    .line 873
    move-object/from16 v0, v77

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v76

    check-cast v76, Lorg/telegram/ui/LaunchActivity$VcardData;

    .line 874
    .local v76, "vcardData":Lorg/telegram/ui/LaunchActivity$VcardData;
    move-object/from16 v0, v76

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity$VcardData;->name:Ljava/lang/String;

    if-eqz v4, :cond_3ad

    move-object/from16 v0, v76

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity$VcardData;->phones:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3ad

    .line 875
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->contactsToSend:Ljava/util/ArrayList;

    if-nez v4, :cond_364

    .line 876
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/ui/LaunchActivity;->contactsToSend:Ljava/util/ArrayList;

    .line 879
    :cond_364
    const/16 v23, 0x0

    .local v23, "b":I
    :goto_366
    move-object/from16 v0, v76

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity$VcardData;->phones:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v23

    if-ge v0, v4, :cond_3ad

    .line 880
    move-object/from16 v0, v76

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity$VcardData;->phones:Ljava/util/ArrayList;

    move/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v53

    check-cast v53, Ljava/lang/String;

    .line 881
    .restart local v53    # "phone":Ljava/lang/String;
    new-instance v73, Lorg/telegram/tgnet/TLRPC$TL_userContact_old2;

    invoke-direct/range {v73 .. v73}, Lorg/telegram/tgnet/TLRPC$TL_userContact_old2;-><init>()V

    .line 882
    .local v73, "user":Lorg/telegram/tgnet/TLRPC$User;
    move-object/from16 v0, v53

    move-object/from16 v1, v73

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    .line 883
    move-object/from16 v0, v76

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity$VcardData;->name:Ljava/lang/String;

    move-object/from16 v0, v73

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    .line 884
    const-string v4, ""

    move-object/from16 v0, v73

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    .line 885
    const/4 v4, 0x0

    move-object/from16 v0, v73

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$User;->id:I

    .line 886
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->contactsToSend:Ljava/util/ArrayList;

    move-object/from16 v0, v73

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 879
    add-int/lit8 v23, v23, 0x1

    goto :goto_366

    .line 869
    .end local v20    # "a":I
    .end local v23    # "b":I
    .end local v53    # "phone":Ljava/lang/String;
    .end local v73    # "user":Lorg/telegram/tgnet/TLRPC$User;
    .end local v76    # "vcardData":Lorg/telegram/ui/LaunchActivity$VcardData;
    :catch_3a8
    move-exception v36

    .line 870
    .restart local v36    # "e":Ljava/lang/Exception;
    invoke-static/range {v36 .. v36}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_3ac
    .catch Ljava/lang/Exception; {:try_start_333 .. :try_end_3ac} :catch_21e

    goto :goto_331

    .line 872
    .end local v36    # "e":Ljava/lang/Exception;
    .restart local v20    # "a":I
    .restart local v76    # "vcardData":Lorg/telegram/ui/LaunchActivity$VcardData;
    :cond_3ad
    add-int/lit8 v20, v20, 0x1

    goto :goto_333

    .line 891
    .end local v20    # "a":I
    .end local v24    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v28    # "cr":Landroid/content/ContentResolver;
    .end local v29    # "currentData":Lorg/telegram/ui/LaunchActivity$VcardData;
    .end local v42    # "line":Ljava/lang/String;
    .end local v65    # "stream":Ljava/io/InputStream;
    .end local v76    # "vcardData":Lorg/telegram/ui/LaunchActivity$VcardData;
    .end local v77    # "vcardDatas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/ui/LaunchActivity$VcardData;>;"
    :cond_3b0
    const/16 v38, 0x1

    goto/16 :goto_224

    .line 898
    .end local v70    # "uri":Landroid/net/Uri;
    :cond_3b4
    const-string v4, "android.intent.extra.TEXT"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v67

    .line 899
    .local v67, "text":Ljava/lang/String;
    if-nez v67, :cond_3cc

    .line 900
    const-string v4, "android.intent.extra.TEXT"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v68

    .line 901
    .local v68, "textSequence":Ljava/lang/CharSequence;
    if-eqz v68, :cond_3cc

    .line 902
    invoke-interface/range {v68 .. v68}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v67

    .line 905
    .end local v68    # "textSequence":Ljava/lang/CharSequence;
    :cond_3cc
    const-string v4, "android.intent.extra.SUBJECT"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v66

    .line 907
    .local v66, "subject":Ljava/lang/String;
    if-eqz v67, :cond_479

    invoke-virtual/range {v67 .. v67}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_479

    .line 908
    const-string v4, "http://"

    move-object/from16 v0, v67

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3f0

    const-string v4, "https://"

    move-object/from16 v0, v67

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_413

    :cond_3f0
    if-eqz v66, :cond_413

    invoke-virtual/range {v66 .. v66}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_413

    .line 909
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v66

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v14, "\n"

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v67

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v67

    .line 911
    :cond_413
    move-object/from16 v0, v67

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/LaunchActivity;->sendingText:Ljava/lang/String;

    .line 916
    :cond_419
    :goto_419
    const-string v4, "android.intent.extra.STREAM"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v51

    .line 917
    .local v51, "parcelable":Landroid/os/Parcelable;
    if-eqz v51, :cond_504

    .line 919
    move-object/from16 v0, v51

    instance-of v4, v0, Landroid/net/Uri;

    if-nez v4, :cond_431

    .line 920
    invoke-virtual/range {v51 .. v51}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v51

    :cond_431
    move-object/from16 v70, v51

    .line 922
    check-cast v70, Landroid/net/Uri;

    .line 923
    .restart local v70    # "uri":Landroid/net/Uri;
    if-eqz v70, :cond_43f

    .line 924
    invoke-static/range {v70 .. v70}, Lorg/telegram/messenger/AndroidUtilities;->isInternalUri(Landroid/net/Uri;)Z

    move-result v4

    if-eqz v4, :cond_43f

    .line 925
    const/16 v38, 0x1

    .line 928
    :cond_43f
    if-nez v38, :cond_224

    .line 929
    if-eqz v70, :cond_488

    if-eqz v69, :cond_44f

    const-string v4, "image/"

    move-object/from16 v0, v69

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_45f

    :cond_44f
    invoke-virtual/range {v70 .. v70}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v14, ".jpg"

    invoke-virtual {v4, v14}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_488

    .line 930
    :cond_45f
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->photoPathsArray:Ljava/util/ArrayList;

    if-nez v4, :cond_46e

    .line 931
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/ui/LaunchActivity;->photoPathsArray:Ljava/util/ArrayList;

    .line 933
    :cond_46e
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->photoPathsArray:Ljava/util/ArrayList;

    move-object/from16 v0, v70

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_224

    .line 912
    .end local v51    # "parcelable":Landroid/os/Parcelable;
    .end local v70    # "uri":Landroid/net/Uri;
    :cond_479
    if-eqz v66, :cond_419

    invoke-virtual/range {v66 .. v66}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_419

    .line 913
    move-object/from16 v0, v66

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/LaunchActivity;->sendingText:Ljava/lang/String;

    goto :goto_419

    .line 935
    .restart local v51    # "parcelable":Landroid/os/Parcelable;
    .restart local v70    # "uri":Landroid/net/Uri;
    :cond_488
    invoke-static/range {v70 .. v70}, Lorg/telegram/messenger/AndroidUtilities;->getPath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v52

    .line 936
    .local v52, "path":Ljava/lang/String;
    if-eqz v52, :cond_4e4

    .line 937
    const-string v4, "file:"

    move-object/from16 v0, v52

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4a2

    .line 938
    const-string v4, "file://"

    const-string v14, ""

    move-object/from16 v0, v52

    invoke-virtual {v0, v4, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v52

    .line 940
    :cond_4a2
    if-eqz v69, :cond_4b6

    const-string v4, "video/"

    move-object/from16 v0, v69

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4b6

    .line 941
    move-object/from16 v0, v52

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/LaunchActivity;->videoPath:Ljava/lang/String;

    goto/16 :goto_224

    .line 943
    :cond_4b6
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->documentsPathsArray:Ljava/util/ArrayList;

    if-nez v4, :cond_4ce

    .line 944
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/ui/LaunchActivity;->documentsPathsArray:Ljava/util/ArrayList;

    .line 945
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/ui/LaunchActivity;->documentsOriginalPathsArray:Ljava/util/ArrayList;

    .line 947
    :cond_4ce
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->documentsPathsArray:Ljava/util/ArrayList;

    move-object/from16 v0, v52

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 948
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->documentsOriginalPathsArray:Ljava/util/ArrayList;

    invoke-virtual/range {v70 .. v70}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_224

    .line 951
    :cond_4e4
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->documentsUrisArray:Ljava/util/ArrayList;

    if-nez v4, :cond_4f3

    .line 952
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/ui/LaunchActivity;->documentsUrisArray:Ljava/util/ArrayList;

    .line 954
    :cond_4f3
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->documentsUrisArray:Ljava/util/ArrayList;

    move-object/from16 v0, v70

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 955
    move-object/from16 v0, v69

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/LaunchActivity;->documentsMimeType:Ljava/lang/String;

    goto/16 :goto_224

    .line 959
    .end local v52    # "path":Ljava/lang/String;
    .end local v70    # "uri":Landroid/net/Uri;
    :cond_504
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->sendingText:Ljava/lang/String;

    if-nez v4, :cond_224

    .line 960
    const/16 v38, 0x1

    goto/16 :goto_224

    .line 966
    .end local v38    # "error":Z
    .end local v51    # "parcelable":Landroid/os/Parcelable;
    .end local v66    # "subject":Ljava/lang/String;
    .end local v67    # "text":Ljava/lang/String;
    .end local v69    # "type":Ljava/lang/String;
    :cond_50e
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v14, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_64e

    .line 967
    const/16 v38, 0x0

    .line 969
    .restart local v38    # "error":Z
    :try_start_51c
    const-string v4, "android.intent.extra.STREAM"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v71

    .line 970
    .local v71, "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v69

    .line 971
    .restart local v69    # "type":Ljava/lang/String;
    if-eqz v71, :cond_56e

    .line 972
    const/16 v20, 0x0

    .restart local v20    # "a":I
    :goto_52c
    invoke-virtual/range {v71 .. v71}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v20

    if-ge v0, v4, :cond_566

    .line 973
    move-object/from16 v0, v71

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v51

    check-cast v51, Landroid/os/Parcelable;

    .line 974
    .restart local v51    # "parcelable":Landroid/os/Parcelable;
    move-object/from16 v0, v51

    instance-of v4, v0, Landroid/net/Uri;

    if-nez v4, :cond_54c

    .line 975
    invoke-virtual/range {v51 .. v51}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v51

    .line 977
    :cond_54c
    move-object/from16 v0, v51

    check-cast v0, Landroid/net/Uri;

    move-object/from16 v70, v0

    .line 978
    .restart local v70    # "uri":Landroid/net/Uri;
    if-eqz v70, :cond_563

    .line 979
    invoke-static/range {v70 .. v70}, Lorg/telegram/messenger/AndroidUtilities;->isInternalUri(Landroid/net/Uri;)Z

    move-result v4

    if-eqz v4, :cond_563

    .line 980
    move-object/from16 v0, v71

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 981
    add-int/lit8 v20, v20, -0x1

    .line 972
    :cond_563
    add-int/lit8 v20, v20, 0x1

    goto :goto_52c

    .line 985
    .end local v51    # "parcelable":Landroid/os/Parcelable;
    .end local v70    # "uri":Landroid/net/Uri;
    :cond_566
    invoke-virtual/range {v71 .. v71}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_56e

    .line 986
    const/16 v71, 0x0

    .line 989
    .end local v20    # "a":I
    :cond_56e
    if-eqz v71, :cond_635

    .line 990
    if-eqz v69, :cond_5bf

    const-string v4, "image/"

    move-object/from16 v0, v69

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5bf

    .line 991
    const/16 v20, 0x0

    .restart local v20    # "a":I
    :goto_57e
    invoke-virtual/range {v71 .. v71}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v20

    if-ge v0, v4, :cond_637

    .line 992
    move-object/from16 v0, v71

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v51

    check-cast v51, Landroid/os/Parcelable;

    .line 993
    .restart local v51    # "parcelable":Landroid/os/Parcelable;
    move-object/from16 v0, v51

    instance-of v4, v0, Landroid/net/Uri;

    if-nez v4, :cond_59e

    .line 994
    invoke-virtual/range {v51 .. v51}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v51

    .line 996
    :cond_59e
    move-object/from16 v0, v51

    check-cast v0, Landroid/net/Uri;

    move-object/from16 v70, v0

    .line 997
    .restart local v70    # "uri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->photoPathsArray:Ljava/util/ArrayList;

    if-nez v4, :cond_5b3

    .line 998
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/ui/LaunchActivity;->photoPathsArray:Ljava/util/ArrayList;

    .line 1000
    :cond_5b3
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->photoPathsArray:Ljava/util/ArrayList;

    move-object/from16 v0, v70

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 991
    add-int/lit8 v20, v20, 0x1

    goto :goto_57e

    .line 1003
    .end local v20    # "a":I
    .end local v51    # "parcelable":Landroid/os/Parcelable;
    .end local v70    # "uri":Landroid/net/Uri;
    :cond_5bf
    const/16 v20, 0x0

    .restart local v20    # "a":I
    :goto_5c1
    invoke-virtual/range {v71 .. v71}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v20

    if-ge v0, v4, :cond_637

    .line 1004
    move-object/from16 v0, v71

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v51

    check-cast v51, Landroid/os/Parcelable;

    .line 1005
    .restart local v51    # "parcelable":Landroid/os/Parcelable;
    move-object/from16 v0, v51

    instance-of v4, v0, Landroid/net/Uri;

    if-nez v4, :cond_5e1

    .line 1006
    invoke-virtual/range {v51 .. v51}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v51

    .line 1008
    :cond_5e1
    move-object/from16 v0, v51

    check-cast v0, Landroid/net/Uri;

    move-object v4, v0

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->getPath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v52

    .line 1009
    .restart local v52    # "path":Ljava/lang/String;
    invoke-virtual/range {v51 .. v51}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v48

    .line 1010
    .local v48, "originalPath":Ljava/lang/String;
    if-nez v48, :cond_5f2

    .line 1011
    move-object/from16 v48, v52

    .line 1013
    :cond_5f2
    if-eqz v52, :cond_632

    .line 1014
    const-string v4, "file:"

    move-object/from16 v0, v52

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_608

    .line 1015
    const-string v4, "file://"

    const-string v14, ""

    move-object/from16 v0, v52

    invoke-virtual {v0, v4, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v52

    .line 1017
    :cond_608
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->documentsPathsArray:Ljava/util/ArrayList;

    if-nez v4, :cond_620

    .line 1018
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/ui/LaunchActivity;->documentsPathsArray:Ljava/util/ArrayList;

    .line 1019
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/ui/LaunchActivity;->documentsOriginalPathsArray:Ljava/util/ArrayList;

    .line 1021
    :cond_620
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->documentsPathsArray:Ljava/util/ArrayList;

    move-object/from16 v0, v52

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1022
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->documentsOriginalPathsArray:Ljava/util/ArrayList;

    move-object/from16 v0, v48

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_632
    .catch Ljava/lang/Exception; {:try_start_51c .. :try_end_632} :catch_647

    .line 1003
    :cond_632
    add-int/lit8 v20, v20, 0x1

    goto :goto_5c1

    .line 1027
    .end local v20    # "a":I
    .end local v48    # "originalPath":Ljava/lang/String;
    .end local v51    # "parcelable":Landroid/os/Parcelable;
    .end local v52    # "path":Ljava/lang/String;
    :cond_635
    const/16 v38, 0x1

    .line 1033
    .end local v69    # "type":Ljava/lang/String;
    .end local v71    # "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    :cond_637
    :goto_637
    if-eqz v38, :cond_232

    .line 1034
    const-string v4, "Unsupported content"

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v4, v14}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_232

    .line 1029
    :catch_647
    move-exception v36

    .line 1030
    .restart local v36    # "e":Ljava/lang/Exception;
    invoke-static/range {v36 .. v36}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1031
    const/16 v38, 0x1

    goto :goto_637

    .line 1036
    .end local v36    # "e":Ljava/lang/Exception;
    .end local v38    # "error":Z
    :cond_64e
    const-string v4, "android.intent.action.VIEW"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a74

    .line 1037
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v31

    .line 1038
    .local v31, "data":Landroid/net/Uri;
    if-eqz v31, :cond_232

    .line 1039
    const/4 v5, 0x0

    .line 1040
    .local v5, "username":Ljava/lang/String;
    const/4 v6, 0x0

    .line 1041
    .local v6, "group":Ljava/lang/String;
    const/4 v7, 0x0

    .line 1042
    .local v7, "sticker":Ljava/lang/String;
    const/4 v8, 0x0

    .line 1043
    .local v8, "botUser":Ljava/lang/String;
    const/4 v9, 0x0

    .line 1044
    .local v9, "botChat":Ljava/lang/String;
    const/4 v10, 0x0

    .line 1045
    .local v10, "message":Ljava/lang/String;
    const/16 v53, 0x0

    .line 1046
    .restart local v53    # "phone":Ljava/lang/String;
    const/4 v13, 0x0

    .line 1047
    .local v13, "game":Ljava/lang/String;
    const/16 v54, 0x0

    .line 1048
    .local v54, "phoneHash":Ljava/lang/String;
    const/4 v12, 0x0

    .line 1049
    .local v12, "messageId":Ljava/lang/Integer;
    const/4 v11, 0x0

    .line 1050
    .local v11, "hasUrl":Z
    invoke-virtual/range {v31 .. v31}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v61

    .line 1051
    .local v61, "scheme":Ljava/lang/String;
    if-eqz v61, :cond_6d5

    .line 1052
    const-string v4, "http"

    move-object/from16 v0, v61

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_687

    const-string v4, "https"

    move-object/from16 v0, v61

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_81b

    .line 1053
    :cond_687
    invoke-virtual/range {v31 .. v31}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v41

    .line 1054
    .local v41, "host":Ljava/lang/String;
    const-string v4, "telegram.me"

    move-object/from16 v0, v41

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6ad

    const-string v4, "t.me"

    move-object/from16 v0, v41

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6ad

    const-string v4, "telegram.dog"

    move-object/from16 v0, v41

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6d5

    .line 1055
    :cond_6ad
    invoke-virtual/range {v31 .. v31}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v52

    .line 1056
    .restart local v52    # "path":Ljava/lang/String;
    if-eqz v52, :cond_6d5

    invoke-virtual/range {v52 .. v52}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v14, 0x1

    if-le v4, v14, :cond_6d5

    .line 1057
    const/4 v4, 0x1

    move-object/from16 v0, v52

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v52

    .line 1058
    const-string v4, "joinchat/"

    move-object/from16 v0, v52

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_71b

    .line 1059
    const-string v4, "joinchat/"

    const-string v14, ""

    move-object/from16 v0, v52

    invoke-virtual {v0, v4, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    .line 1168
    .end local v41    # "host":Ljava/lang/String;
    .end local v52    # "path":Ljava/lang/String;
    :cond_6d5
    :goto_6d5
    if-eqz v10, :cond_6f2

    const-string v4, "@"

    invoke-virtual {v10, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6f2

    .line 1169
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, " "

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1171
    :cond_6f2
    if-nez v53, :cond_6f6

    if-eqz v54, :cond_a1d

    .line 1172
    :cond_6f6
    new-instance v21, Landroid/os/Bundle;

    invoke-direct/range {v21 .. v21}, Landroid/os/Bundle;-><init>()V

    .line 1173
    .local v21, "args":Landroid/os/Bundle;
    const-string v4, "phone"

    move-object/from16 v0, v21

    move-object/from16 v1, v53

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1174
    const-string v4, "hash"

    move-object/from16 v0, v21

    move-object/from16 v1, v54

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1175
    new-instance v4, Lorg/telegram/ui/LaunchActivity$9;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v4, v0, v1}, Lorg/telegram/ui/LaunchActivity$9;-><init>(Lorg/telegram/ui/LaunchActivity;Landroid/os/Bundle;)V

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto/16 :goto_232

    .line 1060
    .end local v21    # "args":Landroid/os/Bundle;
    .restart local v41    # "host":Ljava/lang/String;
    .restart local v52    # "path":Ljava/lang/String;
    :cond_71b
    const-string v4, "addstickers/"

    move-object/from16 v0, v52

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_730

    .line 1061
    const-string v4, "addstickers/"

    const-string v14, ""

    move-object/from16 v0, v52

    invoke-virtual {v0, v4, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    goto :goto_6d5

    .line 1062
    :cond_730
    const-string v4, "msg/"

    move-object/from16 v0, v52

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_744

    const-string v4, "share/"

    move-object/from16 v0, v52

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7b0

    .line 1063
    :cond_744
    const-string v4, "url"

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1064
    if-nez v10, :cond_750

    .line 1065
    const-string v10, ""

    .line 1067
    :cond_750
    const-string v4, "text"

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_78d

    .line 1068
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_774

    .line 1069
    const/4 v11, 0x1

    .line 1070
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v14, "\n"

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1072
    :cond_774
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v14, "text"

    move-object/from16 v0, v31

    invoke-virtual {v0, v14}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1074
    :cond_78d
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v14, 0x4000

    if-le v4, v14, :cond_79c

    .line 1075
    const/4 v4, 0x0

    const/16 v14, 0x4000

    invoke-virtual {v10, v4, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 1077
    :cond_79c
    :goto_79c
    const-string v4, "\n"

    invoke-virtual {v10, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6d5

    .line 1078
    const/4 v4, 0x0

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    invoke-virtual {v10, v4, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    goto :goto_79c

    .line 1080
    :cond_7b0
    const-string v4, "confirmphone"

    move-object/from16 v0, v52

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7cc

    .line 1081
    const-string v4, "phone"

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v53

    .line 1082
    const-string v4, "hash"

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v54

    goto/16 :goto_6d5

    .line 1083
    :cond_7cc
    invoke-virtual/range {v52 .. v52}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v14, 0x1

    if-lt v4, v14, :cond_6d5

    .line 1084
    invoke-virtual/range {v31 .. v31}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v62

    .line 1085
    .local v62, "segments":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface/range {v62 .. v62}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_801

    .line 1086
    const/4 v4, 0x0

    move-object/from16 v0, v62

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "username":Ljava/lang/String;
    check-cast v5, Ljava/lang/String;

    .line 1087
    .restart local v5    # "username":Ljava/lang/String;
    invoke-interface/range {v62 .. v62}, Ljava/util/List;->size()I

    move-result v4

    const/4 v14, 0x1

    if-le v4, v14, :cond_801

    .line 1088
    const/4 v4, 0x1

    move-object/from16 v0, v62

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    .line 1089
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-nez v4, :cond_801

    .line 1090
    const/4 v12, 0x0

    .line 1094
    :cond_801
    const-string v4, "start"

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1095
    const-string v4, "startgroup"

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1096
    const-string v4, "game"

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_6d5

    .line 1100
    .end local v41    # "host":Ljava/lang/String;
    .end local v52    # "path":Ljava/lang/String;
    .end local v62    # "segments":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_81b
    const-string v4, "tg"

    move-object/from16 v0, v61

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6d5

    .line 1101
    invoke-virtual/range {v31 .. v31}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v72

    .line 1102
    .local v72, "url":Ljava/lang/String;
    const-string v4, "tg:resolve"

    move-object/from16 v0, v72

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_83d

    const-string v4, "tg://resolve"

    move-object/from16 v0, v72

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_888

    .line 1103
    :cond_83d
    const-string v4, "tg:resolve"

    const-string v14, "tg://telegram.org"

    move-object/from16 v0, v72

    invoke-virtual {v0, v4, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string v14, "tg://resolve"

    const-string v15, "tg://telegram.org"

    invoke-virtual {v4, v14, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v72

    .line 1104
    invoke-static/range {v72 .. v72}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v31

    .line 1105
    const-string v4, "domain"

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1106
    const-string v4, "start"

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1107
    const-string v4, "startgroup"

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1108
    const-string v4, "game"

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1109
    const-string v4, "post"

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    .line 1110
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-nez v4, :cond_6d5

    .line 1111
    const/4 v12, 0x0

    goto/16 :goto_6d5

    .line 1113
    :cond_888
    const-string v4, "tg:join"

    move-object/from16 v0, v72

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_89c

    const-string v4, "tg://join"

    move-object/from16 v0, v72

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8bc

    .line 1114
    :cond_89c
    const-string v4, "tg:join"

    const-string v14, "tg://telegram.org"

    move-object/from16 v0, v72

    invoke-virtual {v0, v4, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string v14, "tg://join"

    const-string v15, "tg://telegram.org"

    invoke-virtual {v4, v14, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v72

    .line 1115
    invoke-static/range {v72 .. v72}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v31

    .line 1116
    const-string v4, "invite"

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_6d5

    .line 1117
    :cond_8bc
    const-string v4, "tg:addstickers"

    move-object/from16 v0, v72

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_8d0

    const-string v4, "tg://addstickers"

    move-object/from16 v0, v72

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8f0

    .line 1118
    :cond_8d0
    const-string v4, "tg:addstickers"

    const-string v14, "tg://telegram.org"

    move-object/from16 v0, v72

    invoke-virtual {v0, v4, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string v14, "tg://addstickers"

    const-string v15, "tg://telegram.org"

    invoke-virtual {v4, v14, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v72

    .line 1119
    invoke-static/range {v72 .. v72}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v31

    .line 1120
    const-string v4, "set"

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_6d5

    .line 1121
    :cond_8f0
    const-string v4, "tg:msg"

    move-object/from16 v0, v72

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_918

    const-string v4, "tg://msg"

    move-object/from16 v0, v72

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_918

    const-string v4, "tg://share"

    move-object/from16 v0, v72

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_918

    const-string v4, "tg:share"

    move-object/from16 v0, v72

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9aa

    .line 1122
    :cond_918
    const-string v4, "tg:msg"

    const-string v14, "tg://telegram.org"

    move-object/from16 v0, v72

    invoke-virtual {v0, v4, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string v14, "tg://msg"

    const-string v15, "tg://telegram.org"

    invoke-virtual {v4, v14, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string v14, "tg://share"

    const-string v15, "tg://telegram.org"

    invoke-virtual {v4, v14, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string v14, "tg:share"

    const-string v15, "tg://telegram.org"

    invoke-virtual {v4, v14, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v72

    .line 1123
    invoke-static/range {v72 .. v72}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v31

    .line 1124
    const-string v4, "url"

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1125
    if-nez v10, :cond_94a

    .line 1126
    const-string v10, ""

    .line 1128
    :cond_94a
    const-string v4, "text"

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_987

    .line 1129
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_96e

    .line 1130
    const/4 v11, 0x1

    .line 1131
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v14, "\n"

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1133
    :cond_96e
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v14, "text"

    move-object/from16 v0, v31

    invoke-virtual {v0, v14}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1135
    :cond_987
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v14, 0x4000

    if-le v4, v14, :cond_996

    .line 1136
    const/4 v4, 0x0

    const/16 v14, 0x4000

    invoke-virtual {v10, v4, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 1138
    :cond_996
    :goto_996
    const-string v4, "\n"

    invoke-virtual {v10, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6d5

    .line 1139
    const/4 v4, 0x0

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    invoke-virtual {v10, v4, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    goto :goto_996

    .line 1141
    :cond_9aa
    const-string v4, "tg:confirmphone"

    move-object/from16 v0, v72

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_9be

    const-string v4, "tg://confirmphone"

    move-object/from16 v0, v72

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9d0

    .line 1142
    :cond_9be
    const-string v4, "phone"

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v53

    .line 1143
    const-string v4, "hash"

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v54

    goto/16 :goto_6d5

    .line 1144
    :cond_9d0
    const-string v4, "tg:openmessage"

    move-object/from16 v0, v72

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_9e4

    const-string v4, "tg://openmessage"

    move-object/from16 v0, v72

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6d5

    .line 1145
    :cond_9e4
    const-string v4, "user_id"

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v74

    .line 1146
    .local v74, "userID":Ljava/lang/String;
    const-string v4, "chat_id"

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 1147
    .local v26, "chatID":Ljava/lang/String;
    const-string v4, "message_id"

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v43

    .line 1148
    .local v43, "msgID":Ljava/lang/String;
    if-eqz v74, :cond_a12

    .line 1150
    :try_start_9fe
    invoke-static/range {v74 .. v74}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_a05
    .catch Ljava/lang/NumberFormatException; {:try_start_9fe .. :try_end_a05} :catch_f2d

    move-result-object v59

    .line 1159
    :cond_a06
    :goto_a06
    if-eqz v43, :cond_6d5

    .line 1161
    :try_start_a08
    invoke-static/range {v43 .. v43}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_a0f
    .catch Ljava/lang/NumberFormatException; {:try_start_a08 .. :try_end_a0f} :catch_f27

    move-result-object v58

    goto/16 :goto_6d5

    .line 1153
    :cond_a12
    if-eqz v26, :cond_a06

    .line 1155
    :try_start_a14
    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_a1b
    .catch Ljava/lang/NumberFormatException; {:try_start_a14 .. :try_end_a1b} :catch_f2a

    move-result-object v56

    goto :goto_a06

    .line 1181
    .end local v26    # "chatID":Ljava/lang/String;
    .end local v43    # "msgID":Ljava/lang/String;
    .end local v72    # "url":Ljava/lang/String;
    .end local v74    # "userID":Ljava/lang/String;
    :cond_a1d
    if-nez v5, :cond_a27

    if-nez v6, :cond_a27

    if-nez v7, :cond_a27

    if-nez v10, :cond_a27

    if-eqz v13, :cond_a2f

    .line 1182
    :cond_a27
    const/4 v14, 0x0

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v14}, Lorg/telegram/ui/LaunchActivity;->runLinkRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Integer;Ljava/lang/String;I)V

    goto/16 :goto_232

    .line 1185
    :cond_a2f
    :try_start_a2f
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/LaunchActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v15

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-virtual/range {v14 .. v19}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v30

    .line 1186
    .local v30, "cursor":Landroid/database/Cursor;
    if-eqz v30, :cond_232

    .line 1187
    invoke-interface/range {v30 .. v30}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_a69

    .line 1188
    const-string v4, "DATA4"

    move-object/from16 v0, v30

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v30

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v75

    .line 1189
    .local v75, "userId":I
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v4

    sget v14, Lorg/telegram/messenger/NotificationCenter;->closeChats:I

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Object;

    invoke-virtual {v4, v14, v15}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 1190
    invoke-static/range {v75 .. v75}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v59

    .line 1192
    .end local v75    # "userId":I
    :cond_a69
    invoke-interface/range {v30 .. v30}, Landroid/database/Cursor;->close()V
    :try_end_a6c
    .catch Ljava/lang/Exception; {:try_start_a2f .. :try_end_a6c} :catch_a6e

    goto/16 :goto_232

    .line 1194
    .end local v30    # "cursor":Landroid/database/Cursor;
    :catch_a6e
    move-exception v36

    .line 1195
    .restart local v36    # "e":Ljava/lang/Exception;
    invoke-static/range {v36 .. v36}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_232

    .line 1199
    .end local v5    # "username":Ljava/lang/String;
    .end local v6    # "group":Ljava/lang/String;
    .end local v7    # "sticker":Ljava/lang/String;
    .end local v8    # "botUser":Ljava/lang/String;
    .end local v9    # "botChat":Ljava/lang/String;
    .end local v10    # "message":Ljava/lang/String;
    .end local v11    # "hasUrl":Z
    .end local v12    # "messageId":Ljava/lang/Integer;
    .end local v13    # "game":Ljava/lang/String;
    .end local v31    # "data":Landroid/net/Uri;
    .end local v36    # "e":Ljava/lang/Exception;
    .end local v53    # "phone":Ljava/lang/String;
    .end local v54    # "phoneHash":Ljava/lang/String;
    .end local v61    # "scheme":Ljava/lang/String;
    :cond_a74
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v14, "org.telegram.messenger.OPEN_ACCOUNT"

    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a87

    .line 1200
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v47

    goto/16 :goto_232

    .line 1201
    :cond_a87
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v14, "new_dialog"

    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a9a

    .line 1202
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v46

    goto/16 :goto_232

    .line 1203
    :cond_a9a
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v14, "com.tmessages.openchat"

    invoke-virtual {v4, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b01

    .line 1204
    const-string v4, "chatId"

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v27

    .line 1205
    .local v27, "chatId":I
    const-string v4, "userId"

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v75

    .line 1206
    .restart local v75    # "userId":I
    const-string v4, "encId"

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v37

    .line 1207
    .local v37, "encId":I
    if-eqz v27, :cond_ad5

    .line 1208
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v4

    sget v14, Lorg/telegram/messenger/NotificationCenter;->closeChats:I

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Object;

    invoke-virtual {v4, v14, v15}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 1209
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v56

    goto/16 :goto_232

    .line 1210
    :cond_ad5
    if-eqz v75, :cond_ae9

    .line 1211
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v4

    sget v14, Lorg/telegram/messenger/NotificationCenter;->closeChats:I

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Object;

    invoke-virtual {v4, v14, v15}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 1212
    invoke-static/range {v75 .. v75}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v59

    goto/16 :goto_232

    .line 1213
    :cond_ae9
    if-eqz v37, :cond_afd

    .line 1214
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v4

    sget v14, Lorg/telegram/messenger/NotificationCenter;->closeChats:I

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Object;

    invoke-virtual {v4, v14, v15}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 1215
    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v57

    goto/16 :goto_232

    .line 1217
    :cond_afd
    const/16 v63, 0x1

    goto/16 :goto_232

    .line 1219
    .end local v27    # "chatId":I
    .end local v37    # "encId":I
    .end local v75    # "userId":I
    :cond_b01
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v14, "com.tmessages.openplayer"

    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_232

    .line 1220
    const/16 v64, 0x1

    goto/16 :goto_232

    .line 1236
    :cond_b11
    invoke-virtual/range {v56 .. v56}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eqz v4, :cond_b77

    .line 1237
    new-instance v21, Landroid/os/Bundle;

    invoke-direct/range {v21 .. v21}, Landroid/os/Bundle;-><init>()V

    .line 1238
    .restart local v21    # "args":Landroid/os/Bundle;
    const-string v4, "chat_id"

    invoke-virtual/range {v56 .. v56}, Ljava/lang/Integer;->intValue()I

    move-result v14

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1239
    invoke-virtual/range {v58 .. v58}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eqz v4, :cond_b38

    .line 1240
    const-string v4, "message_id"

    invoke-virtual/range {v58 .. v58}, Ljava/lang/Integer;->intValue()I

    move-result v14

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1241
    :cond_b38
    sget-object v4, Lorg/telegram/ui/LaunchActivity;->mainFragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_b58

    sget-object v4, Lorg/telegram/ui/LaunchActivity;->mainFragmentsStack:Ljava/util/ArrayList;

    sget-object v14, Lorg/telegram/ui/LaunchActivity;->mainFragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    invoke-virtual {v4, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/ActionBar/BaseFragment;

    move-object/from16 v0, v21

    invoke-static {v0, v4}, Lorg/telegram/messenger/MessagesController;->checkCanOpenChat(Landroid/os/Bundle;Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    move-result v4

    if-eqz v4, :cond_296

    .line 1242
    :cond_b58
    new-instance v40, Lorg/telegram/ui/ChatActivity;

    move-object/from16 v0, v40

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    .line 1243
    .restart local v40    # "fragment":Lorg/telegram/ui/ChatActivity;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    const/4 v14, 0x0

    const/4 v15, 0x1

    const/16 v16, 0x1

    move-object/from16 v0, v40

    move/from16 v1, v16

    invoke-virtual {v4, v0, v14, v15, v1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;ZZZ)Z

    move-result v4

    if-eqz v4, :cond_296

    .line 1244
    const/16 v55, 0x1

    goto/16 :goto_296

    .line 1247
    .end local v21    # "args":Landroid/os/Bundle;
    .end local v40    # "fragment":Lorg/telegram/ui/ChatActivity;
    :cond_b77
    invoke-virtual/range {v57 .. v57}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eqz v4, :cond_bac

    .line 1248
    new-instance v21, Landroid/os/Bundle;

    invoke-direct/range {v21 .. v21}, Landroid/os/Bundle;-><init>()V

    .line 1249
    .restart local v21    # "args":Landroid/os/Bundle;
    const-string v4, "enc_id"

    invoke-virtual/range {v57 .. v57}, Ljava/lang/Integer;->intValue()I

    move-result v14

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1250
    new-instance v40, Lorg/telegram/ui/ChatActivity;

    move-object/from16 v0, v40

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    .line 1251
    .restart local v40    # "fragment":Lorg/telegram/ui/ChatActivity;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    const/4 v14, 0x0

    const/4 v15, 0x1

    const/16 v16, 0x1

    move-object/from16 v0, v40

    move/from16 v1, v16

    invoke-virtual {v4, v0, v14, v15, v1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;ZZZ)Z

    move-result v4

    if-eqz v4, :cond_296

    .line 1252
    const/16 v55, 0x1

    goto/16 :goto_296

    .line 1254
    .end local v21    # "args":Landroid/os/Bundle;
    .end local v40    # "fragment":Lorg/telegram/ui/ChatActivity;
    :cond_bac
    if-eqz v63, :cond_bff

    .line 1255
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v4

    if-nez v4, :cond_bc1

    .line 1256
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->removeAllFragments()V

    .line 1266
    :cond_bbb
    :goto_bbb
    const/16 v55, 0x0

    .line 1267
    const/16 p2, 0x0

    goto/16 :goto_296

    .line 1258
    :cond_bc1
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v4, v4, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_bbb

    .line 1259
    const/16 v20, 0x0

    .restart local v20    # "a":I
    :goto_bcf
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v4, v4, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-lez v4, :cond_bf6

    .line 1260
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v4, v4, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    const/4 v15, 0x0

    invoke-virtual {v4, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v14, v4}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->removeFragmentFromStack(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 1261
    add-int/lit8 v20, v20, -0x1

    .line 1259
    add-int/lit8 v20, v20, 0x1

    goto :goto_bcf

    .line 1263
    :cond_bf6
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    const/4 v14, 0x0

    invoke-virtual {v4, v14}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->closeLastFragment(Z)V

    goto :goto_bbb

    .line 1268
    .end local v20    # "a":I
    :cond_bff
    if-eqz v64, :cond_ca1

    .line 1269
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v4

    if-eqz v4, :cond_c67

    .line 1270
    const/16 v20, 0x0

    .restart local v20    # "a":I
    :goto_c09
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v4, v4, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v20

    if-ge v0, v4, :cond_c34

    .line 1271
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v4, v4, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 1272
    .local v40, "fragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    move-object/from16 v0, v40

    instance-of v4, v0, Lorg/telegram/ui/AudioPlayerActivity;

    if-eqz v4, :cond_c64

    .line 1273
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-object/from16 v0, v40

    invoke-virtual {v4, v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->removeFragmentFromStack(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 1277
    .end local v40    # "fragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    :cond_c34
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->showLastFragment()V

    .line 1278
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->showLastFragment()V

    .line 1279
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v4, v14, v15}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->setAllowOpenDrawer(ZZ)V

    .line 1290
    :goto_c4b
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    new-instance v14, Lorg/telegram/ui/AudioPlayerActivity;

    invoke-direct {v14}, Lorg/telegram/ui/AudioPlayerActivity;-><init>()V

    const/4 v15, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v4, v14, v15, v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;ZZZ)Z

    .line 1291
    const/16 v55, 0x1

    goto/16 :goto_296

    .line 1270
    .restart local v40    # "fragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    :cond_c64
    add-int/lit8 v20, v20, 0x1

    goto :goto_c09

    .line 1281
    .end local v20    # "a":I
    .end local v40    # "fragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    :cond_c67
    const/16 v20, 0x0

    .restart local v20    # "a":I
    :goto_c69
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v4, v4, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v20

    if-ge v0, v4, :cond_c94

    .line 1282
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v4, v4, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 1283
    .restart local v40    # "fragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    move-object/from16 v0, v40

    instance-of v4, v0, Lorg/telegram/ui/AudioPlayerActivity;

    if-eqz v4, :cond_c9e

    .line 1284
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-object/from16 v0, v40

    invoke-virtual {v4, v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->removeFragmentFromStack(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 1288
    .end local v40    # "fragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    :cond_c94
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    const/4 v14, 0x1

    const/4 v15, 0x0

    invoke-virtual {v4, v14, v15}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->setAllowOpenDrawer(ZZ)V

    goto :goto_c4b

    .line 1281
    .restart local v40    # "fragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    :cond_c9e
    add-int/lit8 v20, v20, 0x1

    goto :goto_c69

    .line 1292
    .end local v20    # "a":I
    .end local v40    # "fragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    :cond_ca1
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->videoPath:Ljava/lang/String;

    if-nez v4, :cond_cc5

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->photoPathsArray:Ljava/util/ArrayList;

    if-nez v4, :cond_cc5

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->sendingText:Ljava/lang/String;

    if-nez v4, :cond_cc5

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->documentsPathsArray:Ljava/util/ArrayList;

    if-nez v4, :cond_cc5

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->contactsToSend:Ljava/util/ArrayList;

    if-nez v4, :cond_cc5

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->documentsUrisArray:Ljava/util/ArrayList;

    if-eqz v4, :cond_e0d

    .line 1293
    :cond_cc5
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v4

    if-nez v4, :cond_cd7

    .line 1294
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v4

    sget v14, Lorg/telegram/messenger/NotificationCenter;->closeChats:I

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Object;

    invoke-virtual {v4, v14, v15}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 1296
    :cond_cd7
    const-wide/16 v14, 0x0

    cmp-long v4, v34, v14

    if-nez v4, :cond_e02

    .line 1297
    new-instance v21, Landroid/os/Bundle;

    invoke-direct/range {v21 .. v21}, Landroid/os/Bundle;-><init>()V

    .line 1298
    .restart local v21    # "args":Landroid/os/Bundle;
    const-string v4, "onlySelect"

    const/4 v14, 0x1

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v14}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1299
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->contactsToSend:Ljava/util/ArrayList;

    if-eqz v4, :cond_d8f

    .line 1300
    const-string v4, "selectAlertString"

    const-string v14, "SendContactTo"

    const v15, 0x7f0704dd

    invoke-static {v14, v15}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v14}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1301
    const-string v4, "selectAlertStringGroup"

    const-string v14, "SendContactToGroup"

    const v15, 0x7f0704d7

    invoke-static {v14, v15}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v14}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1306
    :goto_d10
    new-instance v40, Lorg/telegram/ui/DialogsActivity;

    move-object/from16 v0, v40

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lorg/telegram/ui/DialogsActivity;-><init>(Landroid/os/Bundle;)V

    .line 1307
    .local v40, "fragment":Lorg/telegram/ui/DialogsActivity;
    move-object/from16 v0, v40

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/DialogsActivity;->setDelegate(Lorg/telegram/ui/DialogsActivity$DialogsActivityDelegate;)V

    .line 1309
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v4

    if-eqz v4, :cond_db4

    .line 1310
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v4, v4, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_db1

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v4, v4, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v14, v14, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    invoke-virtual {v4, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lorg/telegram/ui/DialogsActivity;

    if-eqz v4, :cond_db1

    const/16 v60, 0x1

    .line 1314
    .local v60, "removeLast":Z
    :goto_d4e
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    const/4 v14, 0x1

    const/4 v15, 0x1

    move-object/from16 v0, v40

    move/from16 v1, v60

    invoke-virtual {v4, v0, v1, v14, v15}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;ZZZ)Z

    .line 1315
    const/16 v55, 0x1

    .line 1316
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/ui/PhotoViewer;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_de2

    .line 1317
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v4

    const/4 v14, 0x0

    const/4 v15, 0x1

    invoke-virtual {v4, v14, v15}, Lorg/telegram/ui/PhotoViewer;->closePhoto(ZZ)V

    .line 1322
    :cond_d70
    :goto_d70
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v4, v14, v15}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->setAllowOpenDrawer(ZZ)V

    .line 1323
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v4

    if-eqz v4, :cond_df7

    .line 1324
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->showLastFragment()V

    .line 1325
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->showLastFragment()V

    goto/16 :goto_296

    .line 1303
    .end local v40    # "fragment":Lorg/telegram/ui/DialogsActivity;
    .end local v60    # "removeLast":Z
    :cond_d8f
    const-string v4, "selectAlertString"

    const-string v14, "SendMessagesTo"

    const v15, 0x7f0704dd

    invoke-static {v14, v15}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v14}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1304
    const-string v4, "selectAlertStringGroup"

    const-string v14, "SendMessagesToGroup"

    const v15, 0x7f0704de

    invoke-static {v14, v15}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v14}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_d10

    .line 1310
    .restart local v40    # "fragment":Lorg/telegram/ui/DialogsActivity;
    :cond_db1
    const/16 v60, 0x0

    goto :goto_d4e

    .line 1312
    :cond_db4
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v4, v4, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v14, 0x1

    if-le v4, v14, :cond_ddf

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v4, v4, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v14, v14, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    invoke-virtual {v4, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lorg/telegram/ui/DialogsActivity;

    if-eqz v4, :cond_ddf

    const/16 v60, 0x1

    .restart local v60    # "removeLast":Z
    :goto_ddd
    goto/16 :goto_d4e

    .end local v60    # "removeLast":Z
    :cond_ddf
    const/16 v60, 0x0

    goto :goto_ddd

    .line 1318
    .restart local v60    # "removeLast":Z
    :cond_de2
    invoke-static {}, Lorg/telegram/ui/ArticleViewer;->getInstance()Lorg/telegram/ui/ArticleViewer;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/ui/ArticleViewer;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_d70

    .line 1319
    invoke-static {}, Lorg/telegram/ui/ArticleViewer;->getInstance()Lorg/telegram/ui/ArticleViewer;

    move-result-object v4

    const/4 v14, 0x0

    const/4 v15, 0x1

    invoke-virtual {v4, v14, v15}, Lorg/telegram/ui/ArticleViewer;->close(ZZ)V

    goto/16 :goto_d70

    .line 1327
    :cond_df7
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    const/4 v14, 0x1

    const/4 v15, 0x0

    invoke-virtual {v4, v14, v15}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->setAllowOpenDrawer(ZZ)V

    goto/16 :goto_296

    .line 1330
    .end local v21    # "args":Landroid/os/Bundle;
    .end local v40    # "fragment":Lorg/telegram/ui/DialogsActivity;
    .end local v60    # "removeLast":Z
    :cond_e02
    const/4 v4, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, v34

    invoke-virtual {v0, v4, v1, v2, v14}, Lorg/telegram/ui/LaunchActivity;->didSelectDialog(Lorg/telegram/ui/DialogsActivity;JZ)V

    goto/16 :goto_296

    .line 1332
    :cond_e0d
    invoke-virtual/range {v47 .. v47}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eqz v4, :cond_e53

    .line 1333
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    new-instance v14, Lorg/telegram/ui/SettingsActivity;

    invoke-direct {v14}, Lorg/telegram/ui/SettingsActivity;-><init>()V

    const/4 v15, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v4, v14, v15, v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;ZZZ)Z

    .line 1334
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v4

    if-eqz v4, :cond_e49

    .line 1335
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->showLastFragment()V

    .line 1336
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->showLastFragment()V

    .line 1337
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v4, v14, v15}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->setAllowOpenDrawer(ZZ)V

    .line 1341
    :goto_e45
    const/16 v55, 0x1

    goto/16 :goto_296

    .line 1339
    :cond_e49
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    const/4 v14, 0x1

    const/4 v15, 0x0

    invoke-virtual {v4, v14, v15}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->setAllowOpenDrawer(ZZ)V

    goto :goto_e45

    .line 1342
    :cond_e53
    invoke-virtual/range {v46 .. v46}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eqz v4, :cond_296

    .line 1343
    new-instance v21, Landroid/os/Bundle;

    invoke-direct/range {v21 .. v21}, Landroid/os/Bundle;-><init>()V

    .line 1344
    .restart local v21    # "args":Landroid/os/Bundle;
    const-string v4, "destroyAfterSelect"

    const/4 v14, 0x1

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v14}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1345
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    new-instance v14, Lorg/telegram/ui/ContactsActivity;

    move-object/from16 v0, v21

    invoke-direct {v14, v0}, Lorg/telegram/ui/ContactsActivity;-><init>(Landroid/os/Bundle;)V

    const/4 v15, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v4, v14, v15, v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;ZZZ)Z

    .line 1346
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v4

    if-eqz v4, :cond_e9e

    .line 1347
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->showLastFragment()V

    .line 1348
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->showLastFragment()V

    .line 1349
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v4, v14, v15}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->setAllowOpenDrawer(ZZ)V

    .line 1353
    :goto_e9a
    const/16 v55, 0x1

    goto/16 :goto_296

    .line 1351
    :cond_e9e
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    const/4 v14, 0x1

    const/4 v15, 0x0

    invoke-virtual {v4, v14, v15}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->setAllowOpenDrawer(ZZ)V

    goto :goto_e9a

    .line 1364
    .end local v21    # "args":Landroid/os/Bundle;
    :cond_ea8
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v4, v4, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2c7

    .line 1365
    new-instance v33, Lorg/telegram/ui/DialogsActivity;

    const/4 v4, 0x0

    move-object/from16 v0, v33

    invoke-direct {v0, v4}, Lorg/telegram/ui/DialogsActivity;-><init>(Landroid/os/Bundle;)V

    .line 1366
    .local v33, "dialogsActivity":Lorg/telegram/ui/DialogsActivity;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->sideMenu:Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Lorg/telegram/ui/DialogsActivity;->setSideMenu(Lorg/telegram/messenger/support/widget/RecyclerView;)V

    .line 1367
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-object/from16 v0, v33

    invoke-virtual {v4, v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->addFragmentToStack(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    .line 1368
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    const/4 v14, 0x1

    const/4 v15, 0x0

    invoke-virtual {v4, v14, v15}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->setAllowOpenDrawer(ZZ)V

    goto/16 :goto_2c7

    .line 1372
    .end local v33    # "dialogsActivity":Lorg/telegram/ui/DialogsActivity;
    :cond_ed9
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v4, v4, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2c7

    .line 1373
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->isClientActivated()Z

    move-result v4

    if-nez v4, :cond_f02

    .line 1374
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    new-instance v14, Lorg/telegram/ui/LoginActivity;

    invoke-direct {v14}, Lorg/telegram/ui/LoginActivity;-><init>()V

    invoke-virtual {v4, v14}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->addFragmentToStack(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    .line 1375
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v4, v14, v15}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->setAllowOpenDrawer(ZZ)V

    goto/16 :goto_2c7

    .line 1377
    :cond_f02
    new-instance v33, Lorg/telegram/ui/DialogsActivity;

    const/4 v4, 0x0

    move-object/from16 v0, v33

    invoke-direct {v0, v4}, Lorg/telegram/ui/DialogsActivity;-><init>(Landroid/os/Bundle;)V

    .line 1378
    .restart local v33    # "dialogsActivity":Lorg/telegram/ui/DialogsActivity;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->sideMenu:Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Lorg/telegram/ui/DialogsActivity;->setSideMenu(Lorg/telegram/messenger/support/widget/RecyclerView;)V

    .line 1379
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-object/from16 v0, v33

    invoke-virtual {v4, v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->addFragmentToStack(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    .line 1380
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    const/4 v14, 0x1

    const/4 v15, 0x0

    invoke-virtual {v4, v14, v15}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->setAllowOpenDrawer(ZZ)V

    goto/16 :goto_2c7

    .line 1162
    .end local v33    # "dialogsActivity":Lorg/telegram/ui/DialogsActivity;
    .restart local v5    # "username":Ljava/lang/String;
    .restart local v6    # "group":Ljava/lang/String;
    .restart local v7    # "sticker":Ljava/lang/String;
    .restart local v8    # "botUser":Ljava/lang/String;
    .restart local v9    # "botChat":Ljava/lang/String;
    .restart local v10    # "message":Ljava/lang/String;
    .restart local v11    # "hasUrl":Z
    .restart local v12    # "messageId":Ljava/lang/Integer;
    .restart local v13    # "game":Ljava/lang/String;
    .restart local v26    # "chatID":Ljava/lang/String;
    .restart local v31    # "data":Landroid/net/Uri;
    .restart local v43    # "msgID":Ljava/lang/String;
    .restart local v53    # "phone":Ljava/lang/String;
    .restart local v54    # "phoneHash":Ljava/lang/String;
    .restart local v61    # "scheme":Ljava/lang/String;
    .restart local v72    # "url":Ljava/lang/String;
    .restart local v74    # "userID":Ljava/lang/String;
    :catch_f27
    move-exception v4

    goto/16 :goto_6d5

    .line 1156
    :catch_f2a
    move-exception v4

    goto/16 :goto_a06

    .line 1151
    :catch_f2d
    move-exception v4

    goto/16 :goto_a06
.end method

.method private onFinish()V
    .registers 3

    .prologue
    .line 1860
    iget-boolean v0, p0, Lorg/telegram/ui/LaunchActivity;->finished:Z

    if-eqz v0, :cond_5

    .line 1876
    :goto_4
    return-void

    .line 1863
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/LaunchActivity;->finished:Z

    .line 1864
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->lockRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_14

    .line 1865
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->lockRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 1866
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/LaunchActivity;->lockRunnable:Ljava/lang/Runnable;

    .line 1868
    :cond_14
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->appDidLogout:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 1869
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->mainUserInfoChanged:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 1870
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->closeOtherAppActivities:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 1871
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->didUpdatedConnectionState:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 1872
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->needShowAlert:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 1873
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->wasUnableToFindCurrentLocation:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 1874
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->didSetNewWallpapper:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 1875
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->didSetPasscode:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    goto :goto_4
.end method

.method private onPasscodePause()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    const-wide/16 v4, 0x3e8

    .line 2248
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->lockRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_f

    .line 2249
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->lockRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 2250
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/LaunchActivity;->lockRunnable:Ljava/lang/Runnable;

    .line 2252
    :cond_f
    sget-object v0, Lorg/telegram/messenger/UserConfig;->passcodeHash:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_44

    .line 2253
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v0

    sput v0, Lorg/telegram/messenger/UserConfig;->lastPauseTime:I

    .line 2254
    new-instance v0, Lorg/telegram/ui/LaunchActivity$21;

    invoke-direct {v0, p0}, Lorg/telegram/ui/LaunchActivity$21;-><init>(Lorg/telegram/ui/LaunchActivity;)V

    iput-object v0, p0, Lorg/telegram/ui/LaunchActivity;->lockRunnable:Ljava/lang/Runnable;

    .line 2268
    sget-boolean v0, Lorg/telegram/messenger/UserConfig;->appLocked:Z

    if-eqz v0, :cond_35

    .line 2269
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->lockRunnable:Ljava/lang/Runnable;

    invoke-static {v0, v4, v5}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 2276
    :cond_31
    :goto_31
    invoke-static {v6}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    .line 2277
    return-void

    .line 2270
    :cond_35
    sget v0, Lorg/telegram/messenger/UserConfig;->autoLockIn:I

    if-eqz v0, :cond_31

    .line 2271
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->lockRunnable:Ljava/lang/Runnable;

    sget v1, Lorg/telegram/messenger/UserConfig;->autoLockIn:I

    int-to-long v2, v1

    mul-long/2addr v2, v4

    add-long/2addr v2, v4

    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto :goto_31

    .line 2274
    :cond_44
    sput v6, Lorg/telegram/messenger/UserConfig;->lastPauseTime:I

    goto :goto_31
.end method

.method private onPasscodeResume()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 2280
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->lockRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_d

    .line 2281
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->lockRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 2282
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/LaunchActivity;->lockRunnable:Ljava/lang/Runnable;

    .line 2284
    :cond_d
    const/4 v0, 0x1

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->needShowPasscode(Z)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 2285
    invoke-direct {p0}, Lorg/telegram/ui/LaunchActivity;->showPasscodeActivity()V

    .line 2287
    :cond_17
    sget v0, Lorg/telegram/messenger/UserConfig;->lastPauseTime:I

    if-eqz v0, :cond_20

    .line 2288
    sput v1, Lorg/telegram/messenger/UserConfig;->lastPauseTime:I

    .line 2289
    invoke-static {v1}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    .line 2291
    :cond_20
    return-void
.end method

.method private runLinkRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Integer;Ljava/lang/String;I)V
    .registers 31
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "group"    # Ljava/lang/String;
    .param p3, "sticker"    # Ljava/lang/String;
    .param p4, "botUser"    # Ljava/lang/String;
    .param p5, "botChat"    # Ljava/lang/String;
    .param p6, "message"    # Ljava/lang/String;
    .param p7, "hasUrl"    # Z
    .param p8, "messageId"    # Ljava/lang/Integer;
    .param p9, "game"    # Ljava/lang/String;
    .param p10, "state"    # I

    .prologue
    .line 1398
    new-instance v5, Lorg/telegram/ui/ActionBar/AlertDialog;

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v3}, Lorg/telegram/ui/ActionBar/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 1399
    .local v5, "progressDialog":Lorg/telegram/ui/ActionBar/AlertDialog;
    const-string v3, "Loading"

    const v4, 0x7f0702eb

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Lorg/telegram/ui/ActionBar/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1400
    const/4 v3, 0x0

    invoke-virtual {v5, v3}, Lorg/telegram/ui/ActionBar/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 1401
    const/4 v3, 0x0

    invoke-virtual {v5, v3}, Lorg/telegram/ui/ActionBar/AlertDialog;->setCancelable(Z)V

    .line 1402
    const/16 v18, 0x0

    .line 1404
    .local v18, "requestId":I
    if-eqz p1, :cond_62

    .line 1405
    new-instance v16, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolveUsername;

    invoke-direct/range {v16 .. v16}, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolveUsername;-><init>()V

    .line 1406
    .local v16, "req":Lorg/telegram/tgnet/TLRPC$TL_contacts_resolveUsername;
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolveUsername;->username:Ljava/lang/String;

    .line 1407
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v10

    new-instance v3, Lorg/telegram/ui/LaunchActivity$10;

    move-object/from16 v4, p0

    move-object/from16 v6, p9

    move-object/from16 v7, p5

    move-object/from16 v8, p4

    move-object/from16 v9, p8

    invoke-direct/range {v3 .. v9}, Lorg/telegram/ui/LaunchActivity$10;-><init>(Lorg/telegram/ui/LaunchActivity;Lorg/telegram/ui/ActionBar/AlertDialog;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    move-object/from16 v0, v16

    invoke-virtual {v10, v0, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    move-result v18

    .line 1720
    .end local v16    # "req":Lorg/telegram/tgnet/TLRPC$TL_contacts_resolveUsername;
    :cond_44
    :goto_44
    if-eqz v18, :cond_61

    .line 1721
    move/from16 v17, v18

    .line 1722
    .local v17, "reqId":I
    const/4 v3, -0x2

    const-string v4, "Cancel"

    const v6, 0x7f0700fe

    invoke-static {v4, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Lorg/telegram/ui/LaunchActivity$14;

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v6, v0, v1}, Lorg/telegram/ui/LaunchActivity$14;-><init>(Lorg/telegram/ui/LaunchActivity;I)V

    invoke-virtual {v5, v3, v4, v6}, Lorg/telegram/ui/ActionBar/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 1733
    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/AlertDialog;->show()V

    .line 1735
    .end local v17    # "reqId":I
    :cond_61
    :goto_61
    return-void

    .line 1553
    :cond_62
    if-eqz p2, :cond_ba

    .line 1554
    if-nez p10, :cond_98

    .line 1555
    new-instance v16, Lorg/telegram/tgnet/TLRPC$TL_messages_checkChatInvite;

    invoke-direct/range {v16 .. v16}, Lorg/telegram/tgnet/TLRPC$TL_messages_checkChatInvite;-><init>()V

    .line 1556
    .local v16, "req":Lorg/telegram/tgnet/TLRPC$TL_messages_checkChatInvite;
    move-object/from16 v0, p2

    move-object/from16 v1, v16

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_checkChatInvite;->hash:Ljava/lang/String;

    .line 1557
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v19

    new-instance v3, Lorg/telegram/ui/LaunchActivity$11;

    move-object/from16 v4, p0

    move-object/from16 v6, p2

    move-object/from16 v7, p1

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    move/from16 v12, p7

    move-object/from16 v13, p8

    move-object/from16 v14, p9

    invoke-direct/range {v3 .. v14}, Lorg/telegram/ui/LaunchActivity$11;-><init>(Lorg/telegram/ui/LaunchActivity;Lorg/telegram/ui/ActionBar/AlertDialog;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Integer;Ljava/lang/String;)V

    const/4 v4, 0x2

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v3, v4}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    move-result v18

    .line 1621
    goto :goto_44

    .end local v16    # "req":Lorg/telegram/tgnet/TLRPC$TL_messages_checkChatInvite;
    :cond_98
    const/4 v3, 0x1

    move/from16 v0, p10

    if-ne v0, v3, :cond_44

    .line 1622
    new-instance v16, Lorg/telegram/tgnet/TLRPC$TL_messages_importChatInvite;

    invoke-direct/range {v16 .. v16}, Lorg/telegram/tgnet/TLRPC$TL_messages_importChatInvite;-><init>()V

    .line 1623
    .local v16, "req":Lorg/telegram/tgnet/TLRPC$TL_messages_importChatInvite;
    move-object/from16 v0, p2

    move-object/from16 v1, v16

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_importChatInvite;->hash:Ljava/lang/String;

    .line 1624
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/LaunchActivity$12;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v5}, Lorg/telegram/ui/LaunchActivity$12;-><init>(Lorg/telegram/ui/LaunchActivity;Lorg/telegram/ui/ActionBar/AlertDialog;)V

    const/4 v6, 0x2

    move-object/from16 v0, v16

    invoke-virtual {v3, v0, v4, v6}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    goto :goto_44

    .line 1677
    .end local v16    # "req":Lorg/telegram/tgnet/TLRPC$TL_messages_importChatInvite;
    :cond_ba
    if-eqz p3, :cond_eb

    .line 1678
    sget-object v3, Lorg/telegram/ui/LaunchActivity;->mainFragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_61

    .line 1679
    new-instance v9, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetShortName;

    invoke-direct {v9}, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetShortName;-><init>()V

    .line 1680
    .local v9, "stickerset":Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetShortName;
    move-object/from16 v0, p3

    iput-object v0, v9, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetShortName;->short_name:Ljava/lang/String;

    .line 1681
    sget-object v3, Lorg/telegram/ui/LaunchActivity;->mainFragmentsStack:Ljava/util/ArrayList;

    sget-object v4, Lorg/telegram/ui/LaunchActivity;->mainFragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 1682
    .local v8, "fragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    new-instance v6, Lorg/telegram/ui/Components/StickersAlert;

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v7, p0

    invoke-direct/range {v6 .. v11}, Lorg/telegram/ui/Components/StickersAlert;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLRPC$InputStickerSet;Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;Lorg/telegram/ui/Components/StickersAlert$StickersAlertDelegate;)V

    invoke-virtual {v8, v6}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_61

    .line 1685
    .end local v8    # "fragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    .end local v9    # "stickerset":Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetShortName;
    :cond_eb
    if-eqz p6, :cond_44

    .line 1686
    new-instance v15, Landroid/os/Bundle;

    invoke-direct {v15}, Landroid/os/Bundle;-><init>()V

    .line 1687
    .local v15, "args":Landroid/os/Bundle;
    const-string v3, "onlySelect"

    const/4 v4, 0x1

    invoke-virtual {v15, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1688
    new-instance v8, Lorg/telegram/ui/DialogsActivity;

    invoke-direct {v8, v15}, Lorg/telegram/ui/DialogsActivity;-><init>(Landroid/os/Bundle;)V

    .line 1689
    .local v8, "fragment":Lorg/telegram/ui/DialogsActivity;
    new-instance v3, Lorg/telegram/ui/LaunchActivity$13;

    move-object/from16 v0, p0

    move/from16 v1, p7

    move-object/from16 v2, p6

    invoke-direct {v3, v0, v1, v2}, Lorg/telegram/ui/LaunchActivity$13;-><init>(Lorg/telegram/ui/LaunchActivity;ZLjava/lang/String;)V

    invoke-virtual {v8, v3}, Lorg/telegram/ui/DialogsActivity;->setDelegate(Lorg/telegram/ui/DialogsActivity$DialogsActivityDelegate;)V

    .line 1717
    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v3, v4}, Lorg/telegram/ui/LaunchActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;ZZ)Z

    goto/16 :goto_44
.end method

.method private showPasscodeActivity()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 731
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->passcodeView:Lorg/telegram/ui/Components/PasscodeView;

    if-nez v0, :cond_7

    .line 759
    :goto_6
    return-void

    .line 734
    :cond_7
    sput-boolean v2, Lorg/telegram/messenger/UserConfig;->appLocked:Z

    .line 735
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/PhotoViewer;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 736
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/PhotoViewer;->closePhoto(ZZ)V

    .line 740
    :cond_1a
    :goto_1a
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->passcodeView:Lorg/telegram/ui/Components/PasscodeView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PasscodeView;->onShow()V

    .line 741
    sput-boolean v2, Lorg/telegram/messenger/UserConfig;->isWaitingForPasscodeEnter:Z

    .line 742
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    invoke-virtual {v0, v1, v1}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->setAllowOpenDrawer(ZZ)V

    .line 743
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->passcodeView:Lorg/telegram/ui/Components/PasscodeView;

    new-instance v1, Lorg/telegram/ui/LaunchActivity$8;

    invoke-direct {v1, p0}, Lorg/telegram/ui/LaunchActivity$8;-><init>(Lorg/telegram/ui/LaunchActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/PasscodeView;->setDelegate(Lorg/telegram/ui/Components/PasscodeView$PasscodeViewDelegate;)V

    goto :goto_6

    .line 737
    :cond_31
    invoke-static {}, Lorg/telegram/ui/ArticleViewer;->getInstance()Lorg/telegram/ui/ArticleViewer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ArticleViewer;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 738
    invoke-static {}, Lorg/telegram/ui/ArticleViewer;->getInstance()Lorg/telegram/ui/ArticleViewer;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ArticleViewer;->close(ZZ)V

    goto :goto_1a
.end method

.method private updateCurrentConnectionState()V
    .registers 4

    .prologue
    .line 2294
    const/4 v0, 0x0

    .line 2295
    .local v0, "text":Ljava/lang/String;
    iget v1, p0, Lorg/telegram/ui/LaunchActivity;->currentConnectionState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_15

    .line 2296
    const-string v1, "WaitingForNetwork"

    const v2, 0x7f07059c

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 2302
    :cond_f
    :goto_f
    iget-object v1, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->setTitleOverlayText(Ljava/lang/String;)V

    .line 2303
    return-void

    .line 2297
    :cond_15
    iget v1, p0, Lorg/telegram/ui/LaunchActivity;->currentConnectionState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_24

    .line 2298
    const-string v1, "Connecting"

    const v2, 0x7f07018e

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_f

    .line 2299
    :cond_24
    iget v1, p0, Lorg/telegram/ui/LaunchActivity;->currentConnectionState:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_f

    .line 2300
    const-string v1, "Updating"

    const v2, 0x7f070559

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_f
.end method


# virtual methods
.method public varargs didReceivedNotification(I[Ljava/lang/Object;)V
    .registers 16
    .param p1, "id"    # I
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    const v12, 0x7f070092

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 2130
    sget v8, Lorg/telegram/messenger/NotificationCenter;->appDidLogout:I

    if-ne p1, v8, :cond_87

    .line 2131
    iget-object v8, p0, Lorg/telegram/ui/LaunchActivity;->drawerLayoutAdapter:Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;

    if-eqz v8, :cond_13

    .line 2132
    iget-object v8, p0, Lorg/telegram/ui/LaunchActivity;->drawerLayoutAdapter:Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;

    invoke-virtual {v8}, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;->notifyDataSetChanged()V

    .line 2134
    :cond_13
    iget-object v8, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v8, v8, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1b
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2b

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 2135
    .local v3, "fragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    goto :goto_1b

    .line 2137
    .end local v3    # "fragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    :cond_2b
    iget-object v8, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v8, v8, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 2138
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v8

    if-eqz v8, :cond_76

    .line 2139
    iget-object v8, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v8, v8, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_40
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_50

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 2140
    .restart local v3    # "fragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    goto :goto_40

    .line 2142
    .end local v3    # "fragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    :cond_50
    iget-object v8, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v8, v8, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 2143
    iget-object v8, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v8, v8, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_5f
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6f

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 2144
    .restart local v3    # "fragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    goto :goto_5f

    .line 2146
    .end local v3    # "fragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    :cond_6f
    iget-object v8, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v8, v8, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 2148
    :cond_76
    new-instance v4, Landroid/content/Intent;

    const-class v8, Lorg/telegram/ui/IntroActivity;

    invoke-direct {v4, p0, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2149
    .local v4, "intent2":Landroid/content/Intent;
    invoke-virtual {p0, v4}, Lorg/telegram/ui/LaunchActivity;->startActivity(Landroid/content/Intent;)V

    .line 2150
    invoke-direct {p0}, Lorg/telegram/ui/LaunchActivity;->onFinish()V

    .line 2151
    invoke-virtual {p0}, Lorg/telegram/ui/LaunchActivity;->finish()V

    .line 2245
    .end local v4    # "intent2":Landroid/content/Intent;
    :cond_86
    :goto_86
    return-void

    .line 2152
    :cond_87
    sget v8, Lorg/telegram/messenger/NotificationCenter;->closeOtherAppActivities:I

    if-ne p1, v8, :cond_96

    .line 2153
    aget-object v8, p2, v9

    if-eq v8, p0, :cond_86

    .line 2154
    invoke-direct {p0}, Lorg/telegram/ui/LaunchActivity;->onFinish()V

    .line 2155
    invoke-virtual {p0}, Lorg/telegram/ui/LaunchActivity;->finish()V

    goto :goto_86

    .line 2157
    :cond_96
    sget v8, Lorg/telegram/messenger/NotificationCenter;->didUpdatedConnectionState:I

    if-ne p1, v8, :cond_c2

    .line 2158
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v8

    invoke-virtual {v8}, Lorg/telegram/tgnet/ConnectionsManager;->getConnectionState()I

    move-result v6

    .line 2159
    .local v6, "state":I
    iget v8, p0, Lorg/telegram/ui/LaunchActivity;->currentConnectionState:I

    if-eq v8, v6, :cond_86

    .line 2160
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "switch to state "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 2161
    iput v6, p0, Lorg/telegram/ui/LaunchActivity;->currentConnectionState:I

    .line 2162
    invoke-direct {p0}, Lorg/telegram/ui/LaunchActivity;->updateCurrentConnectionState()V

    goto :goto_86

    .line 2164
    .end local v6    # "state":I
    :cond_c2
    sget v8, Lorg/telegram/messenger/NotificationCenter;->mainUserInfoChanged:I

    if-ne p1, v8, :cond_cc

    .line 2165
    iget-object v8, p0, Lorg/telegram/ui/LaunchActivity;->drawerLayoutAdapter:Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;

    invoke-virtual {v8}, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;->notifyDataSetChanged()V

    goto :goto_86

    .line 2166
    :cond_cc
    sget v8, Lorg/telegram/messenger/NotificationCenter;->needShowAlert:I

    if-ne p1, v8, :cond_15a

    .line 2167
    aget-object v5, p2, v9

    check-cast v5, Ljava/lang/Integer;

    .line 2168
    .local v5, "reason":Ljava/lang/Integer;
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-direct {v0, p0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2169
    .local v0, "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    const-string v8, "AppName"

    invoke-static {v8, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2170
    const-string v8, "OK"

    const v9, 0x7f0703d4

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2171
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-eq v8, v11, :cond_106

    .line 2172
    const-string v8, "MoreInfo"

    const v9, 0x7f070336

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lorg/telegram/ui/LaunchActivity$19;

    invoke-direct {v9, p0}, Lorg/telegram/ui/LaunchActivity$19;-><init>(Lorg/telegram/ui/LaunchActivity;)V

    invoke-virtual {v0, v8, v9}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2181
    :cond_106
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-nez v8, :cond_139

    .line 2182
    const-string v8, "NobodyLikesSpam1"

    const v9, 0x7f070373

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2188
    :cond_118
    :goto_118
    sget-object v8, Lorg/telegram/ui/LaunchActivity;->mainFragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_86

    .line 2189
    sget-object v8, Lorg/telegram/ui/LaunchActivity;->mainFragmentsStack:Ljava/util/ArrayList;

    sget-object v9, Lorg/telegram/ui/LaunchActivity;->mainFragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_86

    .line 2183
    :cond_139
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ne v8, v10, :cond_14c

    .line 2184
    const-string v8, "NobodyLikesSpam2"

    const v9, 0x7f070374

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto :goto_118

    .line 2185
    :cond_14c
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ne v8, v11, :cond_118

    .line 2186
    aget-object v8, p2, v10

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v0, v8}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto :goto_118

    .line 2191
    .end local v0    # "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    .end local v5    # "reason":Ljava/lang/Integer;
    :cond_15a
    sget v8, Lorg/telegram/messenger/NotificationCenter;->wasUnableToFindCurrentLocation:I

    if-ne p1, v8, :cond_1bb

    .line 2192
    aget-object v7, p2, v9

    check-cast v7, Ljava/util/HashMap;

    .line 2193
    .local v7, "waitingForLocation":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lorg/telegram/messenger/MessageObject;>;"
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-direct {v0, p0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2194
    .restart local v0    # "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    const-string v8, "AppName"

    invoke-static {v8, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2195
    const-string v8, "OK"

    const v9, 0x7f0703d4

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2196
    const-string v8, "ShareYouLocationUnableManually"

    const v9, 0x7f070507

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lorg/telegram/ui/LaunchActivity$20;

    invoke-direct {v9, p0, v7}, Lorg/telegram/ui/LaunchActivity$20;-><init>(Lorg/telegram/ui/LaunchActivity;Ljava/util/HashMap;)V

    invoke-virtual {v0, v8, v9}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2219
    const-string v8, "ShareYouLocationUnable"

    const v9, 0x7f070506

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2220
    sget-object v8, Lorg/telegram/ui/LaunchActivity;->mainFragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_86

    .line 2221
    sget-object v8, Lorg/telegram/ui/LaunchActivity;->mainFragmentsStack:Ljava/util/ArrayList;

    sget-object v9, Lorg/telegram/ui/LaunchActivity;->mainFragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_86

    .line 2223
    .end local v0    # "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    .end local v7    # "waitingForLocation":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lorg/telegram/messenger/MessageObject;>;"
    :cond_1bb
    sget v8, Lorg/telegram/messenger/NotificationCenter;->didSetNewWallpapper:I

    if-ne p1, v8, :cond_1d0

    .line 2224
    iget-object v8, p0, Lorg/telegram/ui/LaunchActivity;->sideMenu:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz v8, :cond_86

    .line 2225
    iget-object v8, p0, Lorg/telegram/ui/LaunchActivity;->sideMenu:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v8, v9}, Lorg/telegram/ui/Components/RecyclerListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2226
    .local v1, "child":Landroid/view/View;
    if-eqz v1, :cond_86

    .line 2227
    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    goto/16 :goto_86

    .line 2230
    .end local v1    # "child":Landroid/view/View;
    :cond_1d0
    sget v8, Lorg/telegram/messenger/NotificationCenter;->didSetPasscode:I

    if-ne p1, v8, :cond_86

    .line 2231
    sget-object v8, Lorg/telegram/messenger/UserConfig;->passcodeHash:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_1f3

    sget-boolean v8, Lorg/telegram/messenger/UserConfig;->allowScreenCapture:Z

    if-nez v8, :cond_1f3

    .line 2233
    :try_start_1e0
    invoke-virtual {p0}, Lorg/telegram/ui/LaunchActivity;->getWindow()Landroid/view/Window;

    move-result-object v8

    const/16 v9, 0x2000

    const/16 v10, 0x2000

    invoke-virtual {v8, v9, v10}, Landroid/view/Window;->setFlags(II)V
    :try_end_1eb
    .catch Ljava/lang/Exception; {:try_start_1e0 .. :try_end_1eb} :catch_1ed

    goto/16 :goto_86

    .line 2234
    :catch_1ed
    move-exception v2

    .line 2235
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_86

    .line 2239
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1f3
    :try_start_1f3
    invoke-virtual {p0}, Lorg/telegram/ui/LaunchActivity;->getWindow()Landroid/view/Window;

    move-result-object v8

    const/16 v9, 0x2000

    invoke-virtual {v8, v9}, Landroid/view/Window;->clearFlags(I)V
    :try_end_1fc
    .catch Ljava/lang/Exception; {:try_start_1f3 .. :try_end_1fc} :catch_1fe

    goto/16 :goto_86

    .line 2240
    :catch_1fe
    move-exception v2

    .line 2241
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_86
.end method

.method public didSelectDialog(Lorg/telegram/ui/DialogsActivity;JZ)V
    .registers 25
    .param p1, "dialogsFragment"    # Lorg/telegram/ui/DialogsActivity;
    .param p2, "dialog_id"    # J
    .param p4, "param"    # Z

    .prologue
    .line 1770
    const-wide/16 v2, 0x0

    cmp-long v2, p2, v2

    if-eqz v2, :cond_4b

    .line 1771
    move-wide/from16 v0, p2

    long-to-int v0, v0

    move/from16 v19, v0

    .line 1772
    .local v19, "lower_part":I
    const/16 v2, 0x20

    shr-long v2, p2, v2

    long-to-int v0, v2

    move/from16 v18, v0

    .line 1774
    .local v18, "high_id":I
    new-instance v16, Landroid/os/Bundle;

    invoke-direct/range {v16 .. v16}, Landroid/os/Bundle;-><init>()V

    .line 1775
    .local v16, "args":Landroid/os/Bundle;
    const-string v2, "scrollToTopOnResume"

    const/4 v3, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1776
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v2

    if-nez v2, :cond_31

    .line 1777
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->closeChats:I

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 1779
    :cond_31
    if-eqz v19, :cond_65

    .line 1780
    const/4 v2, 0x1

    move/from16 v0, v18

    if-ne v0, v2, :cond_4c

    .line 1781
    const-string v2, "chat_id"

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1792
    :cond_41
    :goto_41
    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lorg/telegram/messenger/MessagesController;->checkCanOpenChat(Landroid/os/Bundle;Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    move-result v2

    if-nez v2, :cond_6f

    .line 1857
    .end local v16    # "args":Landroid/os/Bundle;
    .end local v18    # "high_id":I
    .end local v19    # "lower_part":I
    :cond_4b
    :goto_4b
    return-void

    .line 1783
    .restart local v16    # "args":Landroid/os/Bundle;
    .restart local v18    # "high_id":I
    .restart local v19    # "lower_part":I
    :cond_4c
    if-lez v19, :cond_58

    .line 1784
    const-string v2, "user_id"

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_41

    .line 1785
    :cond_58
    if-gez v19, :cond_41

    .line 1786
    const-string v2, "chat_id"

    move/from16 v0, v19

    neg-int v3, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_41

    .line 1790
    :cond_65
    const-string v2, "enc_id"

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_41

    .line 1795
    :cond_6f
    new-instance v17, Lorg/telegram/ui/ChatActivity;

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    .line 1797
    .local v17, "fragment":Lorg/telegram/ui/ChatActivity;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LaunchActivity;->videoPath:Ljava/lang/String;

    if-eqz v2, :cond_151

    .line 1798
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v2, v3, :cond_127

    .line 1799
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_fa

    .line 1800
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/LaunchActivity;->tabletFullSize:Z

    if-eqz v2, :cond_da

    .line 1801
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v2, v0, v3, v4, v5}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;ZZZ)Z

    .line 1812
    :goto_9c
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/LaunchActivity;->videoPath:Ljava/lang/String;

    if-eqz p1, :cond_11d

    const/4 v2, 0x1

    :goto_a3
    const/4 v4, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v2, v4}, Lorg/telegram/ui/ChatActivity;->openVideoEditor(Ljava/lang/String;ZZ)Z

    move-result v2

    if-nez v2, :cond_ba

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v2

    if-nez v2, :cond_ba

    .line 1813
    if-eqz p1, :cond_11f

    .line 1814
    const/4 v2, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/telegram/ui/DialogsActivity;->finishFragment(Z)V

    .line 1850
    :cond_ba
    :goto_ba
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/LaunchActivity;->photoPathsArray:Ljava/util/ArrayList;

    .line 1851
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/LaunchActivity;->videoPath:Ljava/lang/String;

    .line 1852
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/LaunchActivity;->sendingText:Ljava/lang/String;

    .line 1853
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/LaunchActivity;->documentsPathsArray:Ljava/util/ArrayList;

    .line 1854
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/LaunchActivity;->documentsOriginalPathsArray:Ljava/util/ArrayList;

    .line 1855
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/LaunchActivity;->contactsToSend:Ljava/util/ArrayList;

    goto/16 :goto_4b

    .line 1803
    :cond_da
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->removeAllFragments()V

    .line 1804
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->addFragmentToStack(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    .line 1805
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->setVisibility(I)V

    .line 1806
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->showLastFragment()V

    goto :goto_9c

    .line 1809
    :cond_fa
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    if-eqz p1, :cond_112

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v2, v2, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_10c
    move-object/from16 v0, v17

    invoke-virtual {v3, v0, v2}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->addFragmentToStack(Lorg/telegram/ui/ActionBar/BaseFragment;I)Z

    goto :goto_9c

    :cond_112
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v2, v2, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    goto :goto_10c

    .line 1812
    :cond_11d
    const/4 v2, 0x0

    goto :goto_a3

    .line 1816
    :cond_11f
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->showLastFragment()V

    goto :goto_ba

    .line 1820
    :cond_127
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    if-eqz p1, :cond_14c

    const/4 v2, 0x1

    move v3, v2

    :goto_12f
    if-nez p1, :cond_14f

    const/4 v2, 0x1

    :goto_132
    const/4 v5, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v4, v0, v3, v2, v5}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;ZZZ)Z

    .line 1821
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/LaunchActivity;->videoPath:Ljava/lang/String;

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-wide/from16 v11, p2

    invoke-static/range {v3 .. v14}, Lorg/telegram/messenger/SendMessagesHelper;->prepareSendingVideo(Ljava/lang/String;JJIILorg/telegram/messenger/VideoEditedInfo;JLorg/telegram/messenger/MessageObject;Ljava/lang/String;)V

    goto/16 :goto_ba

    .line 1820
    :cond_14c
    const/4 v2, 0x0

    move v3, v2

    goto :goto_12f

    :cond_14f
    const/4 v2, 0x0

    goto :goto_132

    .line 1824
    :cond_151
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    if-eqz p1, :cond_207

    const/4 v2, 0x1

    move v3, v2

    :goto_159
    if-nez p1, :cond_20b

    const/4 v2, 0x1

    :goto_15c
    const/4 v5, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v4, v0, v3, v2, v5}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;ZZZ)Z

    .line 1826
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LaunchActivity;->photoPathsArray:Ljava/util/ArrayList;

    if-eqz v2, :cond_1a4

    .line 1827
    const/4 v7, 0x0

    .line 1828
    .local v7, "captions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LaunchActivity;->sendingText:Ljava/lang/String;

    if-eqz v2, :cond_197

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LaunchActivity;->sendingText:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xc8

    if-gt v2, v3, :cond_197

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LaunchActivity;->photoPathsArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_197

    .line 1829
    new-instance v7, Ljava/util/ArrayList;

    .end local v7    # "captions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1830
    .restart local v7    # "captions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LaunchActivity;->sendingText:Ljava/lang/String;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1831
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/LaunchActivity;->sendingText:Ljava/lang/String;

    .line 1833
    :cond_197
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/LaunchActivity;->photoPathsArray:Ljava/util/ArrayList;

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-wide/from16 v4, p2

    invoke-static/range {v2 .. v9}, Lorg/telegram/messenger/SendMessagesHelper;->prepareSendingPhotos(Ljava/util/ArrayList;Ljava/util/ArrayList;JLorg/telegram/messenger/MessageObject;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/support/v13/view/inputmethod/InputContentInfoCompat;)V

    .line 1836
    .end local v7    # "captions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1a4
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LaunchActivity;->sendingText:Ljava/lang/String;

    if-eqz v2, :cond_1b3

    .line 1837
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LaunchActivity;->sendingText:Ljava/lang/String;

    move-wide/from16 v0, p2

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/SendMessagesHelper;->prepareSendingText(Ljava/lang/String;J)V

    .line 1840
    :cond_1b3
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LaunchActivity;->documentsPathsArray:Ljava/util/ArrayList;

    if-nez v2, :cond_1bf

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LaunchActivity;->documentsUrisArray:Ljava/util/ArrayList;

    if-eqz v2, :cond_1d6

    .line 1841
    :cond_1bf
    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/telegram/ui/LaunchActivity;->documentsPathsArray:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/ui/LaunchActivity;->documentsOriginalPathsArray:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/ui/LaunchActivity;->documentsUrisArray:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/LaunchActivity;->documentsMimeType:Ljava/lang/String;

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-wide/from16 v12, p2

    invoke-static/range {v8 .. v15}, Lorg/telegram/messenger/SendMessagesHelper;->prepareSendingDocuments(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Landroid/support/v13/view/inputmethod/InputContentInfoCompat;)V

    .line 1843
    :cond_1d6
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LaunchActivity;->contactsToSend:Ljava/util/ArrayList;

    if-eqz v2, :cond_ba

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LaunchActivity;->contactsToSend:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_ba

    .line 1844
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LaunchActivity;->contactsToSend:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1ee
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_ba

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/tgnet/TLRPC$User;

    .line 1845
    .local v9, "user":Lorg/telegram/tgnet/TLRPC$User;
    invoke-static {}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance()Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v8

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-wide/from16 v10, p2

    invoke-virtual/range {v8 .. v14}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Lorg/telegram/tgnet/TLRPC$User;JLorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;)V

    goto :goto_1ee

    .line 1824
    .end local v9    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_207
    const/4 v2, 0x0

    move v3, v2

    goto/16 :goto_159

    :cond_20b
    const/4 v2, 0x0

    goto/16 :goto_15c
.end method

.method public getActionBarLayout()Lorg/telegram/ui/ActionBar/ActionBarLayout;
    .registers 2

    .prologue
    .line 1887
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    return-object v0
.end method

.method public getLayersActionBarLayout()Lorg/telegram/ui/ActionBar/ActionBarLayout;
    .registers 2

    .prologue
    .line 1891
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    return-object v0
.end method

.method public getRightActionBarLayout()Lorg/telegram/ui/ActionBar/ActionBarLayout;
    .registers 2

    .prologue
    .line 1895
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    return-object v0
.end method

.method public goPurchas()V
    .registers 4

    .prologue
    .line 153
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u0639\u0636\u0648\u06cc\u062a \u0648\u06cc\u0698\u0647 \u062a\u0644 \u06af\u0631\u0627\u0645"

    .line 154
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u0628\u0631\u0627\u06cc \u0627\u0633\u062a\u0641\u0627\u062f\u0647 \u0627\u0632 \u06a9\u0644\u06cc\u0647 \u0627\u0645\u06a9\u0627\u0646\u0627\u062a \u062a\u0644 \u06af\u0631\u0627\u0645 \u0628\u0647 \u0635\u0648\u0631\u062a \u0645\u0627\u062f\u0627\u0645 \u0627\u0644\u0639\u0645\u0631 \u06a9\u0627\u0641\u06cc \u0627\u0633\u062a \u0645\u0634\u062a\u0631\u06a9 \u0648\u06cc\u0698\u0647 \u0645\u0627 \u0634\u0648\u06cc\u062f. "

    .line 155
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u0639\u0636\u0648\u06cc\u062a \u0648\u06cc\u0698\u0647"

    new-instance v2, Lorg/telegram/ui/LaunchActivity$2;

    invoke-direct {v2, p0}, Lorg/telegram/ui/LaunchActivity$2;-><init>(Lorg/telegram/ui/LaunchActivity;)V

    .line 156
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u0645\u0646\u0635\u0631\u0641 \u0634\u062f\u0645"

    new-instance v2, Lorg/telegram/ui/LaunchActivity$1;

    invoke-direct {v2, p0}, Lorg/telegram/ui/LaunchActivity$1;-><init>(Lorg/telegram/ui/LaunchActivity;)V

    .line 164
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1080027

    .line 169
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 170
    return-void
.end method

.method public needAddFragmentToStack(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/ActionBarLayout;)Z
    .registers 10
    .param p1, "fragment"    # Lorg/telegram/ui/ActionBar/BaseFragment;
    .param p2, "layout"    # Lorg/telegram/ui/ActionBar/ActionBarLayout;

    .prologue
    const/16 v6, 0x8

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2573
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_128

    .line 2574
    iget-object v5, p0, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    instance-of v2, p1, Lorg/telegram/ui/LoginActivity;

    if-nez v2, :cond_63

    instance-of v2, p1, Lorg/telegram/ui/CountrySelectActivity;

    if-nez v2, :cond_63

    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_63

    move v2, v3

    :goto_1d
    invoke-virtual {v5, v2, v3}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->setAllowOpenDrawer(ZZ)V

    .line 2575
    instance-of v2, p1, Lorg/telegram/ui/DialogsActivity;

    if-eqz v2, :cond_65

    move-object v1, p1

    .line 2576
    check-cast v1, Lorg/telegram/ui/DialogsActivity;

    .line 2577
    .local v1, "dialogsActivity":Lorg/telegram/ui/DialogsActivity;
    invoke-virtual {v1}, Lorg/telegram/ui/DialogsActivity;->isMainDialogList()Z

    move-result v2

    if-eqz v2, :cond_125

    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    if-eq p2, v2, :cond_125

    .line 2578
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->removeAllFragments()V

    .line 2579
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v2, p1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->addFragmentToStack(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    .line 2580
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->removeAllFragments()V

    .line 2581
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v2, v6}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->setVisibility(I)V

    .line 2582
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->setAllowOpenDrawer(ZZ)V

    .line 2583
    iget-boolean v2, p0, Lorg/telegram/ui/LaunchActivity;->tabletFullSize:Z

    if-nez v2, :cond_62

    .line 2584
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->shadowTabletSide:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2585
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v2, v2, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_62

    .line 2586
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->backgroundTablet:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2632
    .end local v1    # "dialogsActivity":Lorg/telegram/ui/DialogsActivity;
    :cond_62
    :goto_62
    return v4

    :cond_63
    move v2, v4

    .line 2574
    goto :goto_1d

    .line 2591
    :cond_65
    instance-of v2, p1, Lorg/telegram/ui/ChatActivity;

    if-eqz v2, :cond_f5

    .line 2592
    iget-boolean v2, p0, Lorg/telegram/ui/LaunchActivity;->tabletFullSize:Z

    if-nez v2, :cond_b6

    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    if-eq p2, v2, :cond_b6

    .line 2593
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v2, v4}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->setVisibility(I)V

    .line 2594
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->backgroundTablet:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2595
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->removeAllFragments()V

    .line 2596
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v2, p1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->addFragmentToStack(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    .line 2597
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v2, v2, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_62

    .line 2598
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_90
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v2, v2, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-lez v2, :cond_b0

    .line 2599
    iget-object v5, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v2, v2, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v5, v2}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->removeFragmentFromStack(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 2600
    add-int/lit8 v0, v0, -0x1

    .line 2598
    add-int/lit8 v0, v0, 0x1

    goto :goto_90

    .line 2602
    :cond_b0
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->closeLastFragment(Z)V

    goto :goto_62

    .line 2605
    .end local v0    # "a":I
    :cond_b6
    iget-boolean v2, p0, Lorg/telegram/ui/LaunchActivity;->tabletFullSize:Z

    if-eqz v2, :cond_125

    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    if-eq p2, v2, :cond_125

    .line 2606
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v2, p1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->addFragmentToStack(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    .line 2607
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v2, v2, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_62

    .line 2608
    const/4 v0, 0x0

    .restart local v0    # "a":I
    :goto_ce
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v2, v2, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-lez v2, :cond_ee

    .line 2609
    iget-object v5, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v2, v2, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v5, v2}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->removeFragmentFromStack(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 2610
    add-int/lit8 v0, v0, -0x1

    .line 2608
    add-int/lit8 v0, v0, 0x1

    goto :goto_ce

    .line 2612
    :cond_ee
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->closeLastFragment(Z)V

    goto/16 :goto_62

    .line 2616
    .end local v0    # "a":I
    :cond_f5
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    if-eq p2, v2, :cond_125

    .line 2617
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v2, v4}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->setVisibility(I)V

    .line 2618
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    invoke-virtual {v2, v4, v3}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->setAllowOpenDrawer(ZZ)V

    .line 2619
    instance-of v2, p1, Lorg/telegram/ui/LoginActivity;

    if-eqz v2, :cond_11d

    .line 2620
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->backgroundTablet:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2621
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->shadowTabletSide:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2622
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->shadowTablet:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 2626
    :goto_116
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v2, p1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->addFragmentToStack(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_62

    .line 2624
    :cond_11d
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->shadowTablet:Landroid/widget/FrameLayout;

    const/high16 v3, 0x7f000000

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    goto :goto_116

    :cond_125
    move v4, v3

    .line 2629
    goto/16 :goto_62

    .line 2631
    :cond_128
    iget-object v5, p0, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    instance-of v2, p1, Lorg/telegram/ui/LoginActivity;

    if-nez v2, :cond_139

    instance-of v2, p1, Lorg/telegram/ui/CountrySelectActivity;

    if-nez v2, :cond_139

    move v2, v3

    :goto_133
    invoke-virtual {v5, v2, v4}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->setAllowOpenDrawer(ZZ)V

    move v4, v3

    .line 2632
    goto/16 :goto_62

    :cond_139
    move v2, v4

    .line 2631
    goto :goto_133
.end method

.method public needCloseLastFragment(Lorg/telegram/ui/ActionBar/ActionBarLayout;)Z
    .registers 6
    .param p1, "layout"    # Lorg/telegram/ui/ActionBar/ActionBarLayout;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 2638
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_49

    .line 2639
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    if-ne p1, v2, :cond_1b

    iget-object v2, p1, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gt v2, v1, :cond_1b

    .line 2640
    invoke-direct {p0}, Lorg/telegram/ui/LaunchActivity;->onFinish()V

    .line 2641
    invoke-virtual {p0}, Lorg/telegram/ui/LaunchActivity;->finish()V

    .line 2662
    :goto_1a
    return v0

    .line 2643
    :cond_1b
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    if-ne p1, v2, :cond_2a

    .line 2644
    iget-boolean v2, p0, Lorg/telegram/ui/LaunchActivity;->tabletFullSize:Z

    if-nez v2, :cond_28

    .line 2645
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->backgroundTablet:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_28
    :goto_28
    move v0, v1

    .line 2662
    goto :goto_1a

    .line 2647
    :cond_2a
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    if-ne p1, v2, :cond_28

    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v2, v2, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_28

    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v2, v2, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v2, v1, :cond_28

    .line 2648
    invoke-direct {p0}, Lorg/telegram/ui/LaunchActivity;->onFinish()V

    .line 2649
    invoke-virtual {p0}, Lorg/telegram/ui/LaunchActivity;->finish()V

    goto :goto_1a

    .line 2653
    :cond_49
    iget-object v2, p1, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gt v2, v1, :cond_58

    .line 2654
    invoke-direct {p0}, Lorg/telegram/ui/LaunchActivity;->onFinish()V

    .line 2655
    invoke-virtual {p0}, Lorg/telegram/ui/LaunchActivity;->finish()V

    goto :goto_1a

    .line 2658
    :cond_58
    iget-object v2, p1, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x2

    if-lt v2, v3, :cond_28

    iget-object v2, p1, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lorg/telegram/ui/LoginActivity;

    if-nez v2, :cond_28

    .line 2659
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    invoke-virtual {v2, v1, v0}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->setAllowOpenDrawer(ZZ)V

    goto :goto_28
.end method

.method public needPresentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;ZZLorg/telegram/ui/ActionBar/ActionBarLayout;)Z
    .registers 13
    .param p1, "fragment"    # Lorg/telegram/ui/ActionBar/BaseFragment;
    .param p2, "removeLast"    # Z
    .param p3, "forceWithoutAnimation"    # Z
    .param p4, "layout"    # Lorg/telegram/ui/ActionBar/ActionBarLayout;

    .prologue
    const/16 v7, 0x8

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 2481
    invoke-static {}, Lorg/telegram/ui/ArticleViewer;->getInstance()Lorg/telegram/ui/ArticleViewer;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/ArticleViewer;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_15

    .line 2482
    invoke-static {}, Lorg/telegram/ui/ArticleViewer;->getInstance()Lorg/telegram/ui/ArticleViewer;

    move-result-object v3

    invoke-virtual {v3, v5, v4}, Lorg/telegram/ui/ArticleViewer;->close(ZZ)V

    .line 2484
    :cond_15
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_1f9

    .line 2485
    iget-object v6, p0, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    instance-of v3, p1, Lorg/telegram/ui/LoginActivity;

    if-nez v3, :cond_74

    instance-of v3, p1, Lorg/telegram/ui/CountrySelectActivity;

    if-nez v3, :cond_74

    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_74

    move v3, v4

    :goto_2e
    invoke-virtual {v6, v3, v4}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->setAllowOpenDrawer(ZZ)V

    .line 2486
    instance-of v3, p1, Lorg/telegram/ui/DialogsActivity;

    if-eqz v3, :cond_76

    move-object v1, p1

    .line 2487
    check-cast v1, Lorg/telegram/ui/DialogsActivity;

    .line 2488
    .local v1, "dialogsActivity":Lorg/telegram/ui/DialogsActivity;
    invoke-virtual {v1}, Lorg/telegram/ui/DialogsActivity;->isMainDialogList()Z

    move-result v3

    if-eqz v3, :cond_76

    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    if-eq p4, v3, :cond_76

    .line 2489
    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->removeAllFragments()V

    .line 2490
    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v3, p1, p2, p3, v5}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;ZZZ)Z

    .line 2491
    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->removeAllFragments()V

    .line 2492
    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v3, v7}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->setVisibility(I)V

    .line 2493
    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    invoke-virtual {v3, v4, v5}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->setAllowOpenDrawer(ZZ)V

    .line 2494
    iget-boolean v3, p0, Lorg/telegram/ui/LaunchActivity;->tabletFullSize:Z

    if-nez v3, :cond_73

    .line 2495
    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->shadowTabletSide:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2496
    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v3, v3, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_73

    .line 2497
    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->backgroundTablet:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2567
    .end local v1    # "dialogsActivity":Lorg/telegram/ui/DialogsActivity;
    :cond_73
    :goto_73
    return v5

    :cond_74
    move v3, v5

    .line 2485
    goto :goto_2e

    .line 2503
    :cond_76
    instance-of v3, p1, Lorg/telegram/ui/ChatActivity;

    if-eqz v3, :cond_1c6

    .line 2504
    iget-boolean v3, p0, Lorg/telegram/ui/LaunchActivity;->tabletFullSize:Z

    if-nez v3, :cond_82

    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    if-eq p4, v3, :cond_8a

    :cond_82
    iget-boolean v3, p0, Lorg/telegram/ui/LaunchActivity;->tabletFullSize:Z

    if-eqz v3, :cond_dc

    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    if-ne p4, v3, :cond_dc

    .line 2505
    :cond_8a
    iget-boolean v3, p0, Lorg/telegram/ui/LaunchActivity;->tabletFullSize:Z

    if-eqz v3, :cond_9c

    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    if-ne p4, v3, :cond_9c

    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v3, v3, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eq v3, v4, :cond_c8

    :cond_9c
    move v2, v4

    .line 2506
    .local v2, "result":Z
    :goto_9d
    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v3, v3, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_d1

    .line 2507
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_a8
    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v3, v3, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-lez v3, :cond_ca

    .line 2508
    iget-object v6, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v3, v3, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v6, v3}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->removeFragmentFromStack(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 2509
    add-int/lit8 v0, v0, -0x1

    .line 2507
    add-int/lit8 v0, v0, 0x1

    goto :goto_a8

    .end local v0    # "a":I
    .end local v2    # "result":Z
    :cond_c8
    move v2, v5

    .line 2505
    goto :goto_9d

    .line 2511
    .restart local v0    # "a":I
    .restart local v2    # "result":Z
    :cond_ca
    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    if-nez p3, :cond_da

    :goto_ce
    invoke-virtual {v3, v4}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->closeLastFragment(Z)V

    .line 2513
    .end local v0    # "a":I
    :cond_d1
    if-nez v2, :cond_d8

    .line 2514
    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v3, p1, v5, p3, v5}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;ZZZ)Z

    :cond_d8
    move v5, v2

    .line 2516
    goto :goto_73

    .restart local v0    # "a":I
    :cond_da
    move v4, v5

    .line 2511
    goto :goto_ce

    .line 2517
    .end local v0    # "a":I
    .end local v2    # "result":Z
    :cond_dc
    iget-boolean v3, p0, Lorg/telegram/ui/LaunchActivity;->tabletFullSize:Z

    if-nez v3, :cond_12e

    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    if-eq p4, v3, :cond_12e

    .line 2518
    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v3, v5}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->setVisibility(I)V

    .line 2519
    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->backgroundTablet:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 2520
    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->removeAllFragments()V

    .line 2521
    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v3, p1, p2, v4, v5}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;ZZZ)Z

    .line 2522
    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v3, v3, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_73

    .line 2523
    const/4 v0, 0x0

    .restart local v0    # "a":I
    :goto_103
    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v3, v3, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-lez v3, :cond_123

    .line 2524
    iget-object v6, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v3, v3, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v6, v3}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->removeFragmentFromStack(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 2525
    add-int/lit8 v0, v0, -0x1

    .line 2523
    add-int/lit8 v0, v0, 0x1

    goto :goto_103

    .line 2527
    :cond_123
    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    if-nez p3, :cond_12c

    :goto_127
    invoke-virtual {v3, v4}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->closeLastFragment(Z)V

    goto/16 :goto_73

    :cond_12c
    move v4, v5

    goto :goto_127

    .line 2530
    .end local v0    # "a":I
    :cond_12e
    iget-boolean v3, p0, Lorg/telegram/ui/LaunchActivity;->tabletFullSize:Z

    if-eqz v3, :cond_17e

    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    if-eq p4, v3, :cond_17e

    .line 2531
    iget-object v6, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v3, v3, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, v4, :cond_171

    move v3, v4

    :goto_143
    invoke-virtual {v6, p1, v3, p3, v5}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;ZZZ)Z

    .line 2532
    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v3, v3, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_73

    .line 2533
    const/4 v0, 0x0

    .restart local v0    # "a":I
    :goto_151
    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v3, v3, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-lez v3, :cond_173

    .line 2534
    iget-object v6, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v3, v3, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v6, v3}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->removeFragmentFromStack(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 2535
    add-int/lit8 v0, v0, -0x1

    .line 2533
    add-int/lit8 v0, v0, 0x1

    goto :goto_151

    .end local v0    # "a":I
    :cond_171
    move v3, v5

    .line 2531
    goto :goto_143

    .line 2537
    .restart local v0    # "a":I
    :cond_173
    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    if-nez p3, :cond_17c

    :goto_177
    invoke-virtual {v3, v4}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->closeLastFragment(Z)V

    goto/16 :goto_73

    :cond_17c
    move v4, v5

    goto :goto_177

    .line 2541
    .end local v0    # "a":I
    :cond_17e
    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v3, v3, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1b1

    .line 2542
    const/4 v0, 0x0

    .restart local v0    # "a":I
    :goto_189
    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v3, v3, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-lez v3, :cond_1a9

    .line 2543
    iget-object v6, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v3, v3, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v6, v3}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->removeFragmentFromStack(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 2544
    add-int/lit8 v0, v0, -0x1

    .line 2542
    add-int/lit8 v0, v0, 0x1

    goto :goto_189

    .line 2546
    :cond_1a9
    iget-object v6, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    if-nez p3, :cond_1c2

    move v3, v4

    :goto_1ae
    invoke-virtual {v6, v3}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->closeLastFragment(Z)V

    .line 2548
    .end local v0    # "a":I
    :cond_1b1
    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v6, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v6, v6, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-le v6, v4, :cond_1c4

    :goto_1bd
    invoke-virtual {v3, p1, v4, p3, v5}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;ZZZ)Z

    goto/16 :goto_73

    .restart local v0    # "a":I
    :cond_1c2
    move v3, v5

    .line 2546
    goto :goto_1ae

    .end local v0    # "a":I
    :cond_1c4
    move v4, v5

    .line 2548
    goto :goto_1bd

    .line 2551
    :cond_1c6
    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    if-eq p4, v3, :cond_1f6

    .line 2552
    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v3, v5}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->setVisibility(I)V

    .line 2553
    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    invoke-virtual {v3, v5, v4}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->setAllowOpenDrawer(ZZ)V

    .line 2554
    instance-of v3, p1, Lorg/telegram/ui/LoginActivity;

    if-eqz v3, :cond_1ee

    .line 2555
    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->backgroundTablet:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2556
    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->shadowTabletSide:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v7}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2557
    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->shadowTablet:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v5}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 2561
    :goto_1e7
    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v3, p1, p2, p3, v5}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;ZZZ)Z

    goto/16 :goto_73

    .line 2559
    :cond_1ee
    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->shadowTablet:Landroid/widget/FrameLayout;

    const/high16 v4, 0x7f000000

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    goto :goto_1e7

    :cond_1f6
    move v5, v4

    .line 2564
    goto/16 :goto_73

    .line 2566
    :cond_1f9
    iget-object v6, p0, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    instance-of v3, p1, Lorg/telegram/ui/LoginActivity;

    if-nez v3, :cond_20a

    instance-of v3, p1, Lorg/telegram/ui/CountrySelectActivity;

    if-nez v3, :cond_20a

    move v3, v4

    :goto_204
    invoke-virtual {v6, v3, v5}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->setAllowOpenDrawer(ZZ)V

    move v5, v4

    .line 2567
    goto/16 :goto_73

    :cond_20a
    move v3, v5

    .line 2566
    goto :goto_204
.end method

.method public onActionModeFinished(Landroid/view/ActionMode;)V
    .registers 4
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    .line 2422
    invoke-super {p0, p1}, Landroid/app/Activity;->onActionModeFinished(Landroid/view/ActionMode;)V

    .line 2423
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_11

    invoke-virtual {p1}, Landroid/view/ActionMode;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_11

    .line 2431
    :cond_10
    :goto_10
    return-void

    .line 2426
    :cond_11
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->onActionModeFinished(Ljava/lang/Object;)V

    .line 2427
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 2428
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->onActionModeFinished(Ljava/lang/Object;)V

    .line 2429
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->onActionModeFinished(Ljava/lang/Object;)V

    goto :goto_10
.end method

.method public onActionModeStarted(Landroid/view/ActionMode;)V
    .registers 7
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    .line 2395
    invoke-super {p0, p1}, Landroid/app/Activity;->onActionModeStarted(Landroid/view/ActionMode;)V

    .line 2397
    :try_start_3
    invoke-virtual {p1}, Landroid/view/ActionMode;->getMenu()Landroid/view/Menu;

    move-result-object v2

    .line 2398
    .local v2, "menu":Landroid/view/Menu;
    if-eqz v2, :cond_24

    .line 2399
    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v3, v2}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->extendActionMode(Landroid/view/Menu;)Z

    move-result v1

    .line 2400
    .local v1, "extended":Z
    if-nez v1, :cond_24

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_24

    .line 2401
    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v3, v2}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->extendActionMode(Landroid/view/Menu;)Z

    move-result v1

    .line 2402
    if-nez v1, :cond_24

    .line 2403
    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v3, v2}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->extendActionMode(Landroid/view/Menu;)Z
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_24} :catch_32

    .line 2410
    .end local v1    # "extended":Z
    .end local v2    # "menu":Landroid/view/Menu;
    :cond_24
    :goto_24
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-lt v3, v4, :cond_37

    invoke-virtual {p1}, Landroid/view/ActionMode;->getType()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_37

    .line 2418
    :cond_31
    :goto_31
    return-void

    .line 2407
    :catch_32
    move-exception v0

    .line 2408
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_24

    .line 2413
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_37
    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v3, p1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->onActionModeStarted(Ljava/lang/Object;)V

    .line 2414
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_31

    .line 2415
    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v3, p1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->onActionModeStarted(Ljava/lang/Object;)V

    .line 2416
    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v3, p1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->onActionModeStarted(Ljava/lang/Object;)V

    goto :goto_31
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 8
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    .line 1900
    sget-object v2, Lorg/telegram/messenger/UserConfig;->passcodeHash:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_12

    sget v2, Lorg/telegram/messenger/UserConfig;->lastPauseTime:I

    if-eqz v2, :cond_12

    .line 1901
    sput v3, Lorg/telegram/messenger/UserConfig;->lastPauseTime:I

    .line 1902
    invoke-static {v3}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    .line 1904
    :cond_12
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 1905
    invoke-static {}, Lorg/telegram/ui/Components/ThemeEditorView;->getInstance()Lorg/telegram/ui/Components/ThemeEditorView;

    move-result-object v0

    .line 1906
    .local v0, "editorView":Lorg/telegram/ui/Components/ThemeEditorView;
    if-eqz v0, :cond_1e

    .line 1907
    invoke-virtual {v0, p1, p2, p3}, Lorg/telegram/ui/Components/ThemeEditorView;->onActivityResult(IILandroid/content/Intent;)V

    .line 1909
    :cond_1e
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v2, v2, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_3f

    .line 1910
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v2, v2, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v3, v3, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 1911
    .local v1, "fragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    invoke-virtual {v1, p1, p2, p3}, Lorg/telegram/ui/ActionBar/BaseFragment;->onActivityResultFragment(IILandroid/content/Intent;)V

    .line 1913
    .end local v1    # "fragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    :cond_3f
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_87

    .line 1914
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v2, v2, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_66

    .line 1915
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v2, v2, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v3, v3, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 1916
    .restart local v1    # "fragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    invoke-virtual {v1, p1, p2, p3}, Lorg/telegram/ui/ActionBar/BaseFragment;->onActivityResultFragment(IILandroid/content/Intent;)V

    .line 1918
    .end local v1    # "fragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    :cond_66
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v2, v2, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_87

    .line 1919
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v2, v2, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v3, v3, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 1920
    .restart local v1    # "fragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    invoke-virtual {v1, p1, p2, p3}, Lorg/telegram/ui/ActionBar/BaseFragment;->onActivityResultFragment(IILandroid/content/Intent;)V

    .line 1923
    .end local v1    # "fragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    :cond_87
    return-void
.end method

.method public onBackPressed()V
    .registers 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2355
    iget-object v4, p0, Lorg/telegram/ui/LaunchActivity;->passcodeView:Lorg/telegram/ui/Components/PasscodeView;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/PasscodeView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_e

    .line 2356
    invoke-virtual {p0}, Lorg/telegram/ui/LaunchActivity;->finish()V

    .line 2381
    :cond_d
    :goto_d
    return-void

    .line 2359
    :cond_e
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/ui/PhotoViewer;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_20

    .line 2360
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Lorg/telegram/ui/PhotoViewer;->closePhoto(ZZ)V

    goto :goto_d

    .line 2361
    :cond_20
    invoke-static {}, Lorg/telegram/ui/ArticleViewer;->getInstance()Lorg/telegram/ui/ArticleViewer;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/ui/ArticleViewer;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_32

    .line 2362
    invoke-static {}, Lorg/telegram/ui/ArticleViewer;->getInstance()Lorg/telegram/ui/ArticleViewer;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Lorg/telegram/ui/ArticleViewer;->close(ZZ)V

    goto :goto_d

    .line 2363
    :cond_32
    iget-object v4, p0, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->isDrawerOpened()Z

    move-result v4

    if-eqz v4, :cond_40

    .line 2364
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->closeDrawer(Z)V

    goto :goto_d

    .line 2365
    :cond_40
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v4

    if-eqz v4, :cond_8c

    .line 2366
    iget-object v4, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->getVisibility()I

    move-result v4

    if-nez v4, :cond_54

    .line 2367
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->onBackPressed()V

    goto :goto_d

    .line 2369
    :cond_54
    const/4 v0, 0x0

    .line 2370
    .local v0, "cancel":Z
    iget-object v4, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->getVisibility()I

    move-result v4

    if-nez v4, :cond_82

    iget-object v4, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v4, v4, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_82

    .line 2371
    iget-object v4, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v4, v4, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    iget-object v5, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v5, v5, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 2372
    .local v1, "lastFragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->onBackPressed()Z

    move-result v4

    if-nez v4, :cond_8a

    move v0, v2

    .line 2374
    .end local v1    # "lastFragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    :cond_82
    :goto_82
    if-nez v0, :cond_d

    .line 2375
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->onBackPressed()V

    goto :goto_d

    .restart local v1    # "lastFragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    :cond_8a
    move v0, v3

    .line 2372
    goto :goto_82

    .line 2379
    .end local v0    # "cancel":Z
    .end local v1    # "lastFragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    :cond_8c
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->onBackPressed()V

    goto/16 :goto_d
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 2108
    invoke-static {p0, p1}, Lorg/telegram/messenger/AndroidUtilities;->checkDisplaySize(Landroid/content/Context;Landroid/content/res/Configuration;)V

    .line 2109
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2110
    invoke-direct {p0}, Lorg/telegram/ui/LaunchActivity;->checkLayout()V

    .line 2111
    invoke-static {}, Lorg/telegram/ui/Components/EmbedBottomSheet;->getInstance()Lorg/telegram/ui/Components/EmbedBottomSheet;

    move-result-object v1

    .line 2112
    .local v1, "embedBottomSheet":Lorg/telegram/ui/Components/EmbedBottomSheet;
    if-eqz v1, :cond_12

    .line 2113
    invoke-virtual {v1, p1}, Lorg/telegram/ui/Components/EmbedBottomSheet;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2115
    :cond_12
    invoke-static {}, Lorg/telegram/ui/Components/ThemeEditorView;->getInstance()Lorg/telegram/ui/Components/ThemeEditorView;

    move-result-object v0

    .line 2116
    .local v0, "editorView":Lorg/telegram/ui/Components/ThemeEditorView;
    if-eqz v0, :cond_1b

    .line 2117
    invoke-virtual {v0}, Lorg/telegram/ui/Components/ThemeEditorView;->onConfigurationChanged()V

    .line 2119
    :cond_1b
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 35
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 173
    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->postInitApplication()V

    .line 174
    invoke-static/range {p0 .. p0}, Lorg/telegram/messenger/NativeCrashManager;->handleDumpFiles(Landroid/app/Activity;)V

    .line 175
    sget-object v28, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v29, "mainconfig"

    const/16 v30, 0x0

    invoke-virtual/range {v28 .. v30}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v28

    const-string v29, "ISPRE"

    const/16 v30, 0x0

    invoke-interface/range {v28 .. v30}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v28

    sput-boolean v28, Lorg/telegram/ui/LaunchActivity;->mIsUprade:Z

    .line 176
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/LaunchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->checkDisplaySize(Landroid/content/Context;Landroid/content/res/Configuration;)V

    .line 178
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->isClientActivated()Z

    move-result v28

    if-nez v28, :cond_99

    .line 179
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/LaunchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v15

    .line 180
    .local v15, "intent":Landroid/content/Intent;
    if-eqz v15, :cond_5a

    invoke-virtual {v15}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v28

    if-eqz v28, :cond_5a

    const-string v28, "android.intent.action.SEND"

    invoke-virtual {v15}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_53

    invoke-virtual {v15}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v28

    const-string v29, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_5a

    .line 181
    :cond_53
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 182
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/LaunchActivity;->finish()V

    .line 679
    .end local v15    # "intent":Landroid/content/Intent;
    :cond_59
    :goto_59
    return-void

    .line 185
    .restart local v15    # "intent":Landroid/content/Intent;
    :cond_5a
    if-eqz v15, :cond_99

    const-string v28, "fromIntro"

    const/16 v29, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v29

    invoke-virtual {v15, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v28

    if-nez v28, :cond_99

    .line 186
    sget-object v28, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v29, "logininfo2"

    const/16 v30, 0x0

    invoke-virtual/range {v28 .. v30}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v21

    .line 187
    .local v21, "preferences":Landroid/content/SharedPreferences;
    invoke-interface/range {v21 .. v21}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v26

    .line 188
    .local v26, "state":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    invoke-interface/range {v26 .. v26}, Ljava/util/Map;->isEmpty()Z

    move-result v28

    if-eqz v28, :cond_99

    .line 189
    new-instance v16, Landroid/content/Intent;

    const-class v28, Lorg/telegram/ui/IntroActivity;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 190
    .local v16, "intent2":Landroid/content/Intent;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/telegram/ui/LaunchActivity;->startActivity(Landroid/content/Intent;)V

    .line 191
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 192
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/LaunchActivity;->finish()V

    goto :goto_59

    .line 198
    .end local v15    # "intent":Landroid/content/Intent;
    .end local v16    # "intent2":Landroid/content/Intent;
    .end local v21    # "preferences":Landroid/content/SharedPreferences;
    .end local v26    # "state":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    :cond_99
    const/16 v28, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lorg/telegram/ui/LaunchActivity;->requestWindowFeature(I)Z

    .line 199
    const v28, 0x7f0a0080

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lorg/telegram/ui/LaunchActivity;->setTheme(I)V

    .line 200
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/LaunchActivity;->getWindow()Landroid/view/Window;

    move-result-object v28

    const v29, 0x7f020287

    invoke-virtual/range {v28 .. v29}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 201
    sget-object v28, Lorg/telegram/messenger/UserConfig;->passcodeHash:Ljava/lang/String;

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->length()I

    move-result v28

    if-lez v28, :cond_cd

    sget-boolean v28, Lorg/telegram/messenger/UserConfig;->allowScreenCapture:Z

    if-nez v28, :cond_cd

    .line 203
    :try_start_c2
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/LaunchActivity;->getWindow()Landroid/view/Window;

    move-result-object v28

    const/16 v29, 0x2000

    const/16 v30, 0x2000

    invoke-virtual/range {v28 .. v30}, Landroid/view/Window;->setFlags(II)V
    :try_end_cd
    .catch Ljava/lang/Exception; {:try_start_c2 .. :try_end_cd} :catch_590

    .line 209
    :cond_cd
    :goto_cd
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 210
    sget v28, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v29, 0x18

    move/from16 v0, v28

    move/from16 v1, v29

    if-lt v0, v1, :cond_e0

    .line 211
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/LaunchActivity;->isInMultiWindowMode()Z

    move-result v28

    sput-boolean v28, Lorg/telegram/messenger/AndroidUtilities;->isInMultiwindow:Z

    .line 213
    :cond_e0
    const/16 v28, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-static {v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->createChatResources(Landroid/content/Context;Z)V

    .line 214
    sget-object v28, Lorg/telegram/messenger/UserConfig;->passcodeHash:Ljava/lang/String;

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->length()I

    move-result v28

    if-eqz v28, :cond_ff

    sget-boolean v28, Lorg/telegram/messenger/UserConfig;->appLocked:Z

    if-eqz v28, :cond_ff

    .line 215
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v28

    sput v28, Lorg/telegram/messenger/UserConfig;->lastPauseTime:I

    .line 218
    :cond_ff
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/LaunchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    const-string v29, "status_bar_height"

    const-string v30, "dimen"

    const-string v31, "android"

    invoke-virtual/range {v28 .. v31}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v23

    .line 219
    .local v23, "resourceId":I
    if-lez v23, :cond_11d

    .line 220
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/LaunchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v28

    sput v28, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    .line 223
    :cond_11d
    new-instance v28, Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    .line 225
    new-instance v28, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    .line 226
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    move-object/from16 v28, v0

    new-instance v29, Landroid/view/ViewGroup$LayoutParams;

    const/16 v30, -0x1

    const/16 v31, -0x1

    invoke-direct/range {v29 .. v31}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/LaunchActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 228
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v28

    if-eqz v28, :cond_59e

    .line 229
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/LaunchActivity;->getWindow()Landroid/view/Window;

    move-result-object v28

    const/16 v29, 0x10

    invoke-virtual/range {v28 .. v29}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 231
    new-instance v17, Lorg/telegram/ui/LaunchActivity$3;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, p0

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/LaunchActivity$3;-><init>(Lorg/telegram/ui/LaunchActivity;Landroid/content/Context;)V

    .line 293
    .local v17, "launchLayout":Landroid/widget/RelativeLayout;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    move-object/from16 v28, v0

    const/16 v29, -0x1

    const/high16 v30, -0x40800000    # -1.0f

    invoke-static/range {v29 .. v30}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v29

    move-object/from16 v0, v28

    move-object/from16 v1, v17

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 295
    new-instance v28, Landroid/view/View;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/LaunchActivity;->backgroundTablet:Landroid/view/View;

    .line 296
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/LaunchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    const v29, 0x7f020090

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    check-cast v10, Landroid/graphics/drawable/BitmapDrawable;

    .line 297
    .local v10, "drawable":Landroid/graphics/drawable/BitmapDrawable;
    sget-object v28, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v29, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-virtual {v10, v0, v1}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeXY(Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 298
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->backgroundTablet:Landroid/view/View;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v10}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 299
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->backgroundTablet:Landroid/view/View;

    move-object/from16 v28, v0

    const/16 v29, -0x1

    const/16 v30, -0x1

    invoke-static/range {v29 .. v30}, Lorg/telegram/ui/Components/LayoutHelper;->createRelative(II)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v29

    move-object/from16 v0, v17

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 301
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-object/from16 v28, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 303
    new-instance v28, Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    .line 304
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-object/from16 v28, v0

    sget-object v29, Lorg/telegram/ui/LaunchActivity;->rightFragmentsStack:Ljava/util/ArrayList;

    invoke-virtual/range {v28 .. v29}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->init(Ljava/util/ArrayList;)V

    .line 305
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->setDelegate(Lorg/telegram/ui/ActionBar/ActionBarLayout$ActionBarLayoutDelegate;)V

    .line 306
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-object/from16 v28, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 308
    new-instance v28, Landroid/widget/FrameLayout;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/LaunchActivity;->shadowTabletSide:Landroid/widget/FrameLayout;

    .line 309
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->shadowTabletSide:Landroid/widget/FrameLayout;

    move-object/from16 v28, v0

    const v29, 0x40295274

    invoke-virtual/range {v28 .. v29}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 310
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->shadowTabletSide:Landroid/widget/FrameLayout;

    move-object/from16 v28, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 312
    new-instance v28, Landroid/widget/FrameLayout;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/LaunchActivity;->shadowTablet:Landroid/widget/FrameLayout;

    .line 313
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->shadowTablet:Landroid/widget/FrameLayout;

    move-object/from16 v29, v0

    sget-object v28, Lorg/telegram/ui/LaunchActivity;->layerFragmentsStack:Ljava/util/ArrayList;

    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v28

    if-eqz v28, :cond_596

    const/16 v28, 0x8

    :goto_255
    move-object/from16 v0, v29

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 314
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->shadowTablet:Landroid/widget/FrameLayout;

    move-object/from16 v28, v0

    const/high16 v29, 0x7f000000

    invoke-virtual/range {v28 .. v29}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 315
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->shadowTablet:Landroid/widget/FrameLayout;

    move-object/from16 v28, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 316
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->shadowTablet:Landroid/widget/FrameLayout;

    move-object/from16 v28, v0

    new-instance v29, Lorg/telegram/ui/LaunchActivity$4;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/ui/LaunchActivity$4;-><init>(Lorg/telegram/ui/LaunchActivity;)V

    invoke-virtual/range {v28 .. v29}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 344
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->shadowTablet:Landroid/widget/FrameLayout;

    move-object/from16 v28, v0

    new-instance v29, Lorg/telegram/ui/LaunchActivity$5;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/ui/LaunchActivity$5;-><init>(Lorg/telegram/ui/LaunchActivity;)V

    invoke-virtual/range {v28 .. v29}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 351
    new-instance v28, Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    .line 352
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-object/from16 v28, v0

    const/16 v29, 0x1

    invoke-virtual/range {v28 .. v29}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->setRemoveActionBarExtraHeight(Z)V

    .line 353
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->shadowTablet:Landroid/widget/FrameLayout;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->setBackgroundView(Landroid/view/View;)V

    .line 354
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-object/from16 v28, v0

    const/16 v29, 0x1

    invoke-virtual/range {v28 .. v29}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->setUseAlphaAnimations(Z)V

    .line 355
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-object/from16 v28, v0

    const v29, 0x7f020083

    invoke-virtual/range {v28 .. v29}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->setBackgroundResource(I)V

    .line 356
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-object/from16 v28, v0

    sget-object v29, Lorg/telegram/ui/LaunchActivity;->layerFragmentsStack:Ljava/util/ArrayList;

    invoke-virtual/range {v28 .. v29}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->init(Ljava/util/ArrayList;)V

    .line 357
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->setDelegate(Lorg/telegram/ui/ActionBar/ActionBarLayout$ActionBarLayoutDelegate;)V

    .line 358
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->setDrawerLayoutContainer(Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;)V

    .line 359
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-object/from16 v29, v0

    sget-object v28, Lorg/telegram/ui/LaunchActivity;->layerFragmentsStack:Ljava/util/ArrayList;

    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v28

    if-eqz v28, :cond_59a

    const/16 v28, 0x8

    :goto_30f
    move-object/from16 v0, v29

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->setVisibility(I)V

    .line 360
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-object/from16 v28, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 365
    .end local v10    # "drawable":Landroid/graphics/drawable/BitmapDrawable;
    .end local v17    # "launchLayout":Landroid/widget/RelativeLayout;
    :goto_323
    new-instance v28, Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/LaunchActivity;->sideMenu:Lorg/telegram/ui/Components/RecyclerListView;

    .line 366
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->sideMenu:Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v28, v0

    const-string v29, "chats_menuBackground"

    invoke-static/range {v29 .. v29}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v29

    invoke-virtual/range {v28 .. v29}, Lorg/telegram/ui/Components/RecyclerListView;->setBackgroundColor(I)V

    .line 367
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->sideMenu:Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v28, v0

    new-instance v29, Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    const/16 v30, 0x1

    const/16 v31, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    move/from16 v2, v30

    move/from16 v3, v31

    invoke-direct {v0, v1, v2, v3}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual/range {v28 .. v29}, Lorg/telegram/ui/Components/RecyclerListView;->setLayoutManager(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;)V

    .line 368
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->sideMenu:Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v28, v0

    new-instance v29, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/LaunchActivity;->drawerLayoutAdapter:Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;

    invoke-virtual/range {v28 .. v29}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;)V

    .line 369
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->sideMenu:Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->setDrawerLayout(Landroid/view/ViewGroup;)V

    .line 370
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->sideMenu:Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lorg/telegram/ui/Components/RecyclerListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v18

    check-cast v18, Landroid/widget/FrameLayout$LayoutParams;

    .line 371
    .local v18, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getRealScreenSize()Landroid/graphics/Point;

    move-result-object v24

    .line 372
    .local v24, "screenSize":Landroid/graphics/Point;
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v28

    if-eqz v28, :cond_5b8

    const/high16 v28, 0x43a00000    # 320.0f

    invoke-static/range {v28 .. v28}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v28

    :goto_39e
    move/from16 v0, v28

    move-object/from16 v1, v18

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 373
    const/16 v28, -0x1

    move/from16 v0, v28

    move-object/from16 v1, v18

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 374
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->sideMenu:Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 375
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->sideMenu:Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v28, v0

    new-instance v29, Lorg/telegram/ui/LaunchActivity$6;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/ui/LaunchActivity$6;-><init>(Lorg/telegram/ui/LaunchActivity;)V

    invoke-virtual/range {v28 .. v29}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    .line 527
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->setParentActionBarLayout(Lorg/telegram/ui/ActionBar/ActionBarLayout;)V

    .line 528
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->setDrawerLayoutContainer(Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;)V

    .line 529
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-object/from16 v28, v0

    sget-object v29, Lorg/telegram/ui/LaunchActivity;->mainFragmentsStack:Ljava/util/ArrayList;

    invoke-virtual/range {v28 .. v29}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->init(Ljava/util/ArrayList;)V

    .line 530
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->setDelegate(Lorg/telegram/ui/ActionBar/ActionBarLayout$ActionBarLayoutDelegate;)V

    .line 532
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->loadWallpaper()V

    .line 534
    new-instance v28, Lorg/telegram/ui/Components/PasscodeView;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/PasscodeView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/LaunchActivity;->passcodeView:Lorg/telegram/ui/Components/PasscodeView;

    .line 535
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->passcodeView:Lorg/telegram/ui/Components/PasscodeView;

    move-object/from16 v29, v0

    const/16 v30, -0x1

    const/high16 v31, -0x40800000    # -1.0f

    invoke-static/range {v30 .. v31}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v30

    invoke-virtual/range {v28 .. v30}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 537
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v28

    sget v29, Lorg/telegram/messenger/NotificationCenter;->closeOtherAppActivities:I

    const/16 v30, 0x1

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    aput-object p0, v30, v31

    invoke-virtual/range {v28 .. v30}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 538
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lorg/telegram/tgnet/ConnectionsManager;->getConnectionState()I

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/LaunchActivity;->currentConnectionState:I

    .line 540
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v28

    sget v29, Lorg/telegram/messenger/NotificationCenter;->appDidLogout:I

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 541
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v28

    sget v29, Lorg/telegram/messenger/NotificationCenter;->mainUserInfoChanged:I

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 542
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v28

    sget v29, Lorg/telegram/messenger/NotificationCenter;->closeOtherAppActivities:I

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 543
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v28

    sget v29, Lorg/telegram/messenger/NotificationCenter;->didUpdatedConnectionState:I

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 544
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v28

    sget v29, Lorg/telegram/messenger/NotificationCenter;->needShowAlert:I

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 545
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v28

    sget v29, Lorg/telegram/messenger/NotificationCenter;->wasUnableToFindCurrentLocation:I

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 546
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v28

    sget v29, Lorg/telegram/messenger/NotificationCenter;->didSetNewWallpapper:I

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 547
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v28

    sget v29, Lorg/telegram/messenger/NotificationCenter;->didSetPasscode:I

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 549
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v28

    if-eqz v28, :cond_73a

    .line 550
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->isClientActivated()Z

    move-result v28

    if-nez v28, :cond_5dc

    .line 551
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-object/from16 v28, v0

    new-instance v29, Lorg/telegram/ui/LoginActivity;

    invoke-direct/range {v29 .. v29}, Lorg/telegram/ui/LoginActivity;-><init>()V

    invoke-virtual/range {v28 .. v29}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->addFragmentToStack(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    .line 552
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    const/16 v30, 0x0

    invoke-virtual/range {v28 .. v30}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->setAllowOpenDrawer(ZZ)V

    .line 561
    :goto_4f8
    if-eqz p1, :cond_51c

    .line 562
    :try_start_4fa
    const-string v28, "fragment"

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 563
    .local v13, "fragmentName":Ljava/lang/String;
    if-eqz v13, :cond_51c

    .line 564
    const-string v28, "args"

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    .line 565
    .local v6, "args":Landroid/os/Bundle;
    const/16 v28, -0x1

    invoke-virtual {v13}, Ljava/lang/String;->hashCode()I
    :try_end_515
    .catch Ljava/lang/Exception; {:try_start_4fa .. :try_end_515} :catch_688

    move-result v29

    sparse-switch v29, :sswitch_data_818

    :cond_519
    :goto_519
    packed-switch v28, :pswitch_data_836

    .line 641
    .end local v6    # "args":Landroid/os/Bundle;
    .end local v13    # "fragmentName":Ljava/lang/String;
    :cond_51c
    :goto_51c
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/LaunchActivity;->checkLayout()V

    .line 643
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/LaunchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v29

    const/16 v30, 0x0

    if-eqz p1, :cond_80c

    const/16 v28, 0x1

    :goto_529
    const/16 v31, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move/from16 v2, v30

    move/from16 v3, v28

    move/from16 v4, v31

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/telegram/ui/LaunchActivity;->handleIntent(Landroid/content/Intent;ZZZ)Z

    .line 646
    :try_start_538
    sget-object v19, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    .line 647
    .local v19, "os1":Ljava/lang/String;
    sget-object v20, Landroid/os/Build;->USER:Ljava/lang/String;

    .line 648
    .local v20, "os2":Ljava/lang/String;
    if-eqz v19, :cond_810

    .line 649
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v19

    .line 653
    :goto_542
    if-eqz v20, :cond_814

    .line 654
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v20

    .line 658
    :goto_548
    const-string v28, "flyme"

    move-object/from16 v0, v19

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v28

    if-nez v28, :cond_560

    const-string v28, "flyme"

    move-object/from16 v0, v20

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v28

    if-eqz v28, :cond_59

    .line 659
    :cond_560
    const/16 v28, 0x1

    sput-boolean v28, Lorg/telegram/messenger/AndroidUtilities;->incorrectDisplaySizeFix:Z

    .line 660
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/LaunchActivity;->getWindow()Landroid/view/Window;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v27

    .line 661
    .local v27, "view":Landroid/view/View;
    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v28

    new-instance v29, Lorg/telegram/ui/LaunchActivity$7;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/LaunchActivity$7;-><init>(Lorg/telegram/ui/LaunchActivity;Landroid/view/View;)V

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/LaunchActivity;->onGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual/range {v28 .. v29}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    :try_end_588
    .catch Ljava/lang/Exception; {:try_start_538 .. :try_end_588} :catch_58a

    goto/16 :goto_59

    .line 675
    .end local v19    # "os1":Ljava/lang/String;
    .end local v20    # "os2":Ljava/lang/String;
    .end local v27    # "view":Landroid/view/View;
    :catch_58a
    move-exception v11

    .line 676
    .local v11, "e":Ljava/lang/Exception;
    invoke-static {v11}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_59

    .line 204
    .end local v11    # "e":Ljava/lang/Exception;
    .end local v18    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .end local v23    # "resourceId":I
    .end local v24    # "screenSize":Landroid/graphics/Point;
    :catch_590
    move-exception v11

    .line 205
    .restart local v11    # "e":Ljava/lang/Exception;
    invoke-static {v11}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_cd

    .line 313
    .end local v11    # "e":Ljava/lang/Exception;
    .restart local v10    # "drawable":Landroid/graphics/drawable/BitmapDrawable;
    .restart local v17    # "launchLayout":Landroid/widget/RelativeLayout;
    .restart local v23    # "resourceId":I
    :cond_596
    const/16 v28, 0x0

    goto/16 :goto_255

    .line 359
    :cond_59a
    const/16 v28, 0x0

    goto/16 :goto_30f

    .line 362
    .end local v10    # "drawable":Landroid/graphics/drawable/BitmapDrawable;
    .end local v17    # "launchLayout":Landroid/widget/RelativeLayout;
    :cond_59e
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-object/from16 v29, v0

    new-instance v30, Landroid/view/ViewGroup$LayoutParams;

    const/16 v31, -0x1

    const/16 v32, -0x1

    invoke-direct/range {v30 .. v32}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual/range {v28 .. v30}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_323

    .line 372
    .restart local v18    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .restart local v24    # "screenSize":Landroid/graphics/Point;
    :cond_5b8
    const/high16 v28, 0x43a00000    # 320.0f

    invoke-static/range {v28 .. v28}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v28

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v29, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v30, v0

    invoke-static/range {v29 .. v30}, Ljava/lang/Math;->min(II)I

    move-result v29

    const/high16 v30, 0x42600000    # 56.0f

    invoke-static/range {v30 .. v30}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v30

    sub-int v29, v29, v30

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->min(II)I

    move-result v28

    goto/16 :goto_39e

    .line 554
    :cond_5dc
    new-instance v9, Lorg/telegram/ui/DialogsActivity;

    const/16 v28, 0x0

    move-object/from16 v0, v28

    invoke-direct {v9, v0}, Lorg/telegram/ui/DialogsActivity;-><init>(Landroid/os/Bundle;)V

    .line 555
    .local v9, "dialogsActivity":Lorg/telegram/ui/DialogsActivity;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->sideMenu:Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v9, v0}, Lorg/telegram/ui/DialogsActivity;->setSideMenu(Lorg/telegram/messenger/support/widget/RecyclerView;)V

    .line 556
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v9}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->addFragmentToStack(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    .line 557
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    move-object/from16 v28, v0

    const/16 v29, 0x1

    const/16 v30, 0x0

    invoke-virtual/range {v28 .. v30}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->setAllowOpenDrawer(ZZ)V

    goto/16 :goto_4f8

    .line 565
    .end local v9    # "dialogsActivity":Lorg/telegram/ui/DialogsActivity;
    .restart local v6    # "args":Landroid/os/Bundle;
    .restart local v13    # "fragmentName":Ljava/lang/String;
    :sswitch_60a
    :try_start_60a
    const-string v29, "chat"

    move-object/from16 v0, v29

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_519

    const/16 v28, 0x0

    goto/16 :goto_519

    :sswitch_618
    const-string v29, "settings"

    move-object/from16 v0, v29

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_519

    const/16 v28, 0x1

    goto/16 :goto_519

    :sswitch_626
    const-string v29, "group"

    move-object/from16 v0, v29

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_519

    const/16 v28, 0x2

    goto/16 :goto_519

    :sswitch_634
    const-string v29, "channel"

    move-object/from16 v0, v29

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_519

    const/16 v28, 0x3

    goto/16 :goto_519

    :sswitch_642
    const-string v29, "edit"

    move-object/from16 v0, v29

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_519

    const/16 v28, 0x4

    goto/16 :goto_519

    :sswitch_650
    const-string v29, "chat_profile"

    move-object/from16 v0, v29

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_519

    const/16 v28, 0x5

    goto/16 :goto_519

    :sswitch_65e
    const-string v29, "wallpapers"

    move-object/from16 v0, v29

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_519

    const/16 v28, 0x6

    goto/16 :goto_519

    .line 567
    :pswitch_66c
    if-eqz v6, :cond_51c

    .line 568
    new-instance v8, Lorg/telegram/ui/ChatActivity;

    invoke-direct {v8, v6}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    .line 569
    .local v8, "chat":Lorg/telegram/ui/ChatActivity;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v8}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->addFragmentToStack(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    move-result v28

    if-eqz v28, :cond_51c

    .line 570
    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Lorg/telegram/ui/ChatActivity;->restoreSelfArgs(Landroid/os/Bundle;)V
    :try_end_686
    .catch Ljava/lang/Exception; {:try_start_60a .. :try_end_686} :catch_688

    goto/16 :goto_51c

    .line 621
    .end local v6    # "args":Landroid/os/Bundle;
    .end local v8    # "chat":Lorg/telegram/ui/ChatActivity;
    .end local v13    # "fragmentName":Ljava/lang/String;
    :catch_688
    move-exception v11

    .line 622
    .restart local v11    # "e":Ljava/lang/Exception;
    invoke-static {v11}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_51c

    .line 575
    .end local v11    # "e":Ljava/lang/Exception;
    .restart local v6    # "args":Landroid/os/Bundle;
    .restart local v13    # "fragmentName":Ljava/lang/String;
    :pswitch_68e
    :try_start_68e
    new-instance v25, Lorg/telegram/ui/SettingsActivity;

    invoke-direct/range {v25 .. v25}, Lorg/telegram/ui/SettingsActivity;-><init>()V

    .line 576
    .local v25, "settings":Lorg/telegram/ui/SettingsActivity;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->addFragmentToStack(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    .line 577
    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/SettingsActivity;->restoreSelfArgs(Landroid/os/Bundle;)V

    goto/16 :goto_51c

    .line 581
    .end local v25    # "settings":Lorg/telegram/ui/SettingsActivity;
    :pswitch_6a9
    if-eqz v6, :cond_51c

    .line 582
    new-instance v14, Lorg/telegram/ui/GroupCreateFinalActivity;

    invoke-direct {v14, v6}, Lorg/telegram/ui/GroupCreateFinalActivity;-><init>(Landroid/os/Bundle;)V

    .line 583
    .local v14, "group":Lorg/telegram/ui/GroupCreateFinalActivity;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v14}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->addFragmentToStack(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    move-result v28

    if-eqz v28, :cond_51c

    .line 584
    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Lorg/telegram/ui/GroupCreateFinalActivity;->restoreSelfArgs(Landroid/os/Bundle;)V

    goto/16 :goto_51c

    .line 589
    .end local v14    # "group":Lorg/telegram/ui/GroupCreateFinalActivity;
    :pswitch_6c5
    if-eqz v6, :cond_51c

    .line 590
    new-instance v7, Lorg/telegram/ui/ChannelCreateActivity;

    invoke-direct {v7, v6}, Lorg/telegram/ui/ChannelCreateActivity;-><init>(Landroid/os/Bundle;)V

    .line 591
    .local v7, "channel":Lorg/telegram/ui/ChannelCreateActivity;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v7}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->addFragmentToStack(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    move-result v28

    if-eqz v28, :cond_51c

    .line 592
    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Lorg/telegram/ui/ChannelCreateActivity;->restoreSelfArgs(Landroid/os/Bundle;)V

    goto/16 :goto_51c

    .line 597
    .end local v7    # "channel":Lorg/telegram/ui/ChannelCreateActivity;
    :pswitch_6e1
    if-eqz v6, :cond_51c

    .line 598
    new-instance v7, Lorg/telegram/ui/ChannelEditActivity;

    invoke-direct {v7, v6}, Lorg/telegram/ui/ChannelEditActivity;-><init>(Landroid/os/Bundle;)V

    .line 599
    .local v7, "channel":Lorg/telegram/ui/ChannelEditActivity;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v7}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->addFragmentToStack(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    move-result v28

    if-eqz v28, :cond_51c

    .line 600
    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Lorg/telegram/ui/ChannelEditActivity;->restoreSelfArgs(Landroid/os/Bundle;)V

    goto/16 :goto_51c

    .line 605
    .end local v7    # "channel":Lorg/telegram/ui/ChannelEditActivity;
    :pswitch_6fd
    if-eqz v6, :cond_51c

    .line 606
    new-instance v22, Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v0, v22

    invoke-direct {v0, v6}, Lorg/telegram/ui/ProfileActivity;-><init>(Landroid/os/Bundle;)V

    .line 607
    .local v22, "profile":Lorg/telegram/ui/ProfileActivity;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->addFragmentToStack(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    move-result v28

    if-eqz v28, :cond_51c

    .line 608
    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ProfileActivity;->restoreSelfArgs(Landroid/os/Bundle;)V

    goto/16 :goto_51c

    .line 613
    .end local v22    # "profile":Lorg/telegram/ui/ProfileActivity;
    :pswitch_71f
    new-instance v25, Lorg/telegram/ui/WallpapersActivity;

    invoke-direct/range {v25 .. v25}, Lorg/telegram/ui/WallpapersActivity;-><init>()V

    .line 614
    .local v25, "settings":Lorg/telegram/ui/WallpapersActivity;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->addFragmentToStack(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    .line 615
    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/WallpapersActivity;->restoreSelfArgs(Landroid/os/Bundle;)V
    :try_end_738
    .catch Ljava/lang/Exception; {:try_start_68e .. :try_end_738} :catch_688

    goto/16 :goto_51c

    .line 625
    .end local v6    # "args":Landroid/os/Bundle;
    .end local v13    # "fragmentName":Ljava/lang/String;
    .end local v25    # "settings":Lorg/telegram/ui/WallpapersActivity;
    :cond_73a
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 626
    .local v12, "fragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    instance-of v0, v12, Lorg/telegram/ui/DialogsActivity;

    move/from16 v28, v0

    if-eqz v28, :cond_761

    .line 627
    check-cast v12, Lorg/telegram/ui/DialogsActivity;

    .end local v12    # "fragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->sideMenu:Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v12, v0}, Lorg/telegram/ui/DialogsActivity;->setSideMenu(Lorg/telegram/messenger/support/widget/RecyclerView;)V

    .line 629
    :cond_761
    const/4 v5, 0x1

    .line 630
    .local v5, "allowOpen":Z
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v28

    if-eqz v28, :cond_7c6

    .line 631
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    move-result v28

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-gt v0, v1, :cond_80a

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v28

    if-eqz v28, :cond_80a

    const/4 v5, 0x1

    .line 632
    :goto_793
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    move-result v28

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_7c6

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v28

    move-object/from16 v0, v28

    instance-of v0, v0, Lorg/telegram/ui/LoginActivity;

    move/from16 v28, v0

    if-eqz v28, :cond_7c6

    .line 633
    const/4 v5, 0x0

    .line 636
    :cond_7c6
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    move-result v28

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_7f9

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v28

    move-object/from16 v0, v28

    instance-of v0, v0, Lorg/telegram/ui/LoginActivity;

    move/from16 v28, v0

    if-eqz v28, :cond_7f9

    .line 637
    const/4 v5, 0x0

    .line 639
    :cond_7f9
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v29

    invoke-virtual {v0, v5, v1}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->setAllowOpenDrawer(ZZ)V

    goto/16 :goto_51c

    .line 631
    :cond_80a
    const/4 v5, 0x0

    goto :goto_793

    .line 643
    .end local v5    # "allowOpen":Z
    :cond_80c
    const/16 v28, 0x0

    goto/16 :goto_529

    .line 651
    .restart local v19    # "os1":Ljava/lang/String;
    .restart local v20    # "os2":Ljava/lang/String;
    :cond_810
    :try_start_810
    const-string v19, ""

    goto/16 :goto_542

    .line 656
    :cond_814
    const-string v20, ""
    :try_end_816
    .catch Ljava/lang/Exception; {:try_start_810 .. :try_end_816} :catch_58a

    goto/16 :goto_548

    .line 565
    :sswitch_data_818
    .sparse-switch
        -0x5b244d4f -> :sswitch_65e
        -0x5070143e -> :sswitch_650
        0x2e9358 -> :sswitch_60a
        0x2f6e0a -> :sswitch_642
        0x5e0f67f -> :sswitch_626
        0x2c0b7d03 -> :sswitch_634
        0x5582bc23 -> :sswitch_618
    .end sparse-switch

    :pswitch_data_836
    .packed-switch 0x0
        :pswitch_66c
        :pswitch_68e
        :pswitch_6a9
        :pswitch_6c5
        :pswitch_6e1
        :pswitch_6fd
        :pswitch_71f
    .end packed-switch
.end method

.method protected onDestroy()V
    .registers 7

    .prologue
    .line 2034
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/ui/PhotoViewer;->destroyPhotoViewer()V

    .line 2035
    invoke-static {}, Lorg/telegram/ui/SecretPhotoViewer;->getInstance()Lorg/telegram/ui/SecretPhotoViewer;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/ui/SecretPhotoViewer;->destroyPhotoViewer()V

    .line 2036
    invoke-static {}, Lorg/telegram/ui/ArticleViewer;->getInstance()Lorg/telegram/ui/ArticleViewer;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/ui/ArticleViewer;->destroyArticleViewer()V

    .line 2037
    invoke-static {}, Lorg/telegram/ui/StickerPreviewViewer;->getInstance()Lorg/telegram/ui/StickerPreviewViewer;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/ui/StickerPreviewViewer;->destroy()V

    .line 2038
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->destroyResources()V

    .line 2039
    invoke-static {}, Lorg/telegram/ui/Components/EmbedBottomSheet;->getInstance()Lorg/telegram/ui/Components/EmbedBottomSheet;

    move-result-object v2

    .line 2040
    .local v2, "embedBottomSheet":Lorg/telegram/ui/Components/EmbedBottomSheet;
    if-eqz v2, :cond_28

    .line 2041
    invoke-virtual {v2}, Lorg/telegram/ui/Components/EmbedBottomSheet;->destroy()V

    .line 2043
    :cond_28
    invoke-static {}, Lorg/telegram/ui/Components/ThemeEditorView;->getInstance()Lorg/telegram/ui/Components/ThemeEditorView;

    move-result-object v1

    .line 2044
    .local v1, "editorView":Lorg/telegram/ui/Components/ThemeEditorView;
    if-eqz v1, :cond_31

    .line 2045
    invoke-virtual {v1}, Lorg/telegram/ui/Components/ThemeEditorView;->destroy()V

    .line 2048
    :cond_31
    :try_start_31
    iget-object v4, p0, Lorg/telegram/ui/LaunchActivity;->visibleDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    if-eqz v4, :cond_3d

    .line 2049
    iget-object v4, p0, Lorg/telegram/ui/LaunchActivity;->visibleDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V

    .line 2050
    const/4 v4, 0x0

    iput-object v4, p0, Lorg/telegram/ui/LaunchActivity;->visibleDialog:Lorg/telegram/ui/ActionBar/AlertDialog;
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_3d} :catch_63

    .line 2056
    :cond_3d
    :goto_3d
    :try_start_3d
    iget-object v4, p0, Lorg/telegram/ui/LaunchActivity;->onGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    if-eqz v4, :cond_5c

    .line 2057
    invoke-virtual {p0}, Lorg/telegram/ui/LaunchActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v3

    .line 2058
    .local v3, "view":Landroid/view/View;
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x10

    if-ge v4, v5, :cond_68

    .line 2059
    invoke-virtual {v3}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/ui/LaunchActivity;->onGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v4, v5}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_5c} :catch_72

    .line 2067
    .end local v3    # "view":Landroid/view/View;
    :cond_5c
    :goto_5c
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 2068
    invoke-direct {p0}, Lorg/telegram/ui/LaunchActivity;->onFinish()V

    .line 2069
    return-void

    .line 2052
    :catch_63
    move-exception v0

    .line 2053
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_3d

    .line 2061
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v3    # "view":Landroid/view/View;
    :cond_68
    :try_start_68
    invoke-virtual {v3}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/ui/LaunchActivity;->onGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v4, v5}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_71} :catch_72

    goto :goto_5c

    .line 2064
    .end local v3    # "view":Landroid/view/View;
    :catch_72
    move-exception v0

    .line 2065
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_5c
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 6
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x0

    .line 2447
    const/16 v0, 0x52

    if-ne p1, v0, :cond_44

    sget-boolean v0, Lorg/telegram/messenger/UserConfig;->isWaitingForPasscodeEnter:Z

    if-nez v0, :cond_44

    .line 2448
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/PhotoViewer;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 2449
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 2476
    :goto_17
    return v0

    .line 2450
    :cond_18
    invoke-static {}, Lorg/telegram/ui/ArticleViewer;->getInstance()Lorg/telegram/ui/ArticleViewer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ArticleViewer;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 2451
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_17

    .line 2453
    :cond_27
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_67

    .line 2454
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_49

    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_49

    .line 2455
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->onKeyUp(ILandroid/view/KeyEvent;)Z

    .line 2476
    :cond_44
    :goto_44
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_17

    .line 2456
    :cond_49
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_61

    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_61

    .line 2457
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->onKeyUp(ILandroid/view/KeyEvent;)Z

    goto :goto_44

    .line 2459
    :cond_61
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->onKeyUp(ILandroid/view/KeyEvent;)Z

    goto :goto_44

    .line 2462
    :cond_67
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_93

    .line 2463
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->isDrawerOpened()Z

    move-result v0

    if-nez v0, :cond_8d

    .line 2464
    invoke-virtual {p0}, Lorg/telegram/ui/LaunchActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_87

    .line 2465
    invoke-virtual {p0}, Lorg/telegram/ui/LaunchActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    .line 2467
    :cond_87
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->openDrawer(Z)V

    goto :goto_44

    .line 2469
    :cond_8d
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->closeDrawer(Z)V

    goto :goto_44

    .line 2472
    :cond_93
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->onKeyUp(ILandroid/view/KeyEvent;)Z

    goto :goto_44
.end method

.method public onLowMemory()V
    .registers 2

    .prologue
    .line 2385
    invoke-super {p0}, Landroid/app/Activity;->onLowMemory()V

    .line 2386
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->onLowMemory()V

    .line 2387
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 2388
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->onLowMemory()V

    .line 2389
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->onLowMemory()V

    .line 2391
    :cond_18
    return-void
.end method

.method public onMultiWindowModeChanged(Z)V
    .registers 2
    .param p1, "isInMultiWindowMode"    # Z

    .prologue
    .line 2123
    sput-boolean p1, Lorg/telegram/messenger/AndroidUtilities;->isInMultiwindow:Z

    .line 2124
    invoke-direct {p0}, Lorg/telegram/ui/LaunchActivity;->checkLayout()V

    .line 2125
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x0

    .line 1764
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 1765
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, v1, v1}, Lorg/telegram/ui/LaunchActivity;->handleIntent(Landroid/content/Intent;ZZZ)Z

    .line 1766
    return-void
.end method

.method protected onPause()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 1995
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 1996
    sput-boolean v2, Lorg/telegram/messenger/ApplicationLoader;->mainInterfacePaused:Z

    .line 1997
    sget-object v0, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/ui/LaunchActivity$17;

    invoke-direct {v1, p0}, Lorg/telegram/ui/LaunchActivity$17;-><init>(Lorg/telegram/ui/LaunchActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 2004
    invoke-direct {p0}, Lorg/telegram/ui/LaunchActivity;->onPasscodePause()V

    .line 2005
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->onPause()V

    .line 2006
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 2007
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->onPause()V

    .line 2008
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->onPause()V

    .line 2010
    :cond_28
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->passcodeView:Lorg/telegram/ui/Components/PasscodeView;

    if-eqz v0, :cond_31

    .line 2011
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->passcodeView:Lorg/telegram/ui/Components/PasscodeView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PasscodeView;->onPause()V

    .line 2013
    :cond_31
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Lorg/telegram/tgnet/ConnectionsManager;->setAppPaused(ZZ)V

    .line 2014
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->unregisterUpdates()V

    .line 2015
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/PhotoViewer;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 2016
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/PhotoViewer;->onPause()V

    .line 2018
    :cond_4d
    return-void
.end method

.method public onPreIme()Z
    .registers 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 2435
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/PhotoViewer;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_14

    .line 2436
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lorg/telegram/ui/PhotoViewer;->closePhoto(ZZ)V

    .line 2442
    :goto_13
    return v0

    .line 2438
    :cond_14
    invoke-static {}, Lorg/telegram/ui/ArticleViewer;->getInstance()Lorg/telegram/ui/ArticleViewer;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/ArticleViewer;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_26

    .line 2439
    invoke-static {}, Lorg/telegram/ui/ArticleViewer;->getInstance()Lorg/telegram/ui/ArticleViewer;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lorg/telegram/ui/ArticleViewer;->close(ZZ)V

    goto :goto_13

    :cond_26
    move v0, v1

    .line 2442
    goto :goto_13
.end method

.method public onRebuildAllFragments(Lorg/telegram/ui/ActionBar/ActionBarLayout;)V
    .registers 4
    .param p1, "layout"    # Lorg/telegram/ui/ActionBar/ActionBarLayout;

    .prologue
    const/4 v1, 0x1

    .line 2677
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 2678
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    if-ne p1, v0, :cond_1f

    .line 2679
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->rebuildAllFragmentViews(Z)V

    .line 2680
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->showLastFragment()V

    .line 2681
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->rebuildAllFragmentViews(Z)V

    .line 2682
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->showLastFragment()V

    .line 2685
    :cond_1f
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->drawerLayoutAdapter:Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;->notifyDataSetChanged()V

    .line 2686
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .registers 14
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .prologue
    const/16 v9, 0x13

    const/4 v8, 0x5

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x0

    .line 1927
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 1928
    if-eq p1, v6, :cond_15

    if-eq p1, v7, :cond_15

    if-eq p1, v8, :cond_15

    if-eq p1, v9, :cond_15

    const/16 v3, 0x14

    if-ne p1, v3, :cond_ae

    .line 1929
    :cond_15
    const/4 v2, 0x1

    .line 1930
    .local v2, "showAlert":Z
    array-length v3, p3

    if-lez v3, :cond_3a

    aget v3, p3, v5

    if-nez v3, :cond_3a

    .line 1931
    if-ne p1, v7, :cond_27

    .line 1932
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/ImageLoader;->checkMediaPaths()V

    .line 1991
    .end local v2    # "showAlert":Z
    :cond_26
    :goto_26
    return-void

    .line 1934
    .restart local v2    # "showAlert":Z
    :cond_27
    if-ne p1, v8, :cond_31

    .line 1935
    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/ContactsController;->readContacts()V

    goto :goto_26

    .line 1937
    :cond_31
    if-eq p1, v6, :cond_26

    .line 1939
    if-eq p1, v9, :cond_39

    const/16 v3, 0x14

    if-ne p1, v3, :cond_3a

    .line 1940
    :cond_39
    const/4 v2, 0x0

    .line 1943
    :cond_3a
    if-eqz v2, :cond_c3

    .line 1944
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-direct {v0, p0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1945
    .local v0, "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    const-string v3, "AppName"

    const v4, 0x7f070092

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1946
    if-ne p1, v6, :cond_7d

    .line 1947
    const-string v3, "PermissionNoAudio"

    const v4, 0x7f07043a

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1955
    :cond_5b
    :goto_5b
    const-string v3, "PermissionOpenSettings"

    const v4, 0x7f07043f

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/LaunchActivity$16;

    invoke-direct {v4, p0}, Lorg/telegram/ui/LaunchActivity$16;-><init>(Lorg/telegram/ui/LaunchActivity;)V

    invoke-virtual {v0, v3, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1968
    const-string v3, "OK"

    const v4, 0x7f0703d4

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1969
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->show()Lorg/telegram/ui/ActionBar/AlertDialog;

    goto :goto_26

    .line 1948
    :cond_7d
    if-ne p1, v7, :cond_8c

    .line 1949
    const-string v3, "PermissionStorage"

    const v4, 0x7f070440

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto :goto_5b

    .line 1950
    :cond_8c
    if-ne p1, v8, :cond_9b

    .line 1951
    const-string v3, "PermissionContacts"

    const v4, 0x7f070438

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto :goto_5b

    .line 1952
    :cond_9b
    if-eq p1, v9, :cond_a1

    const/16 v3, 0x14

    if-ne p1, v3, :cond_5b

    .line 1953
    :cond_a1
    const-string v3, "PermissionNoCamera"

    const v4, 0x7f07043c

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto :goto_5b

    .line 1972
    .end local v0    # "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    .end local v2    # "showAlert":Z
    :cond_ae
    const/4 v3, 0x2

    if-ne p1, v3, :cond_c3

    .line 1973
    array-length v3, p3

    if-lez v3, :cond_c3

    aget v3, p3, v5

    if-nez v3, :cond_c3

    .line 1974
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/NotificationCenter;->locationPermissionGranted:I

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 1977
    :cond_c3
    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v3, v3, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_e4

    .line 1978
    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v3, v3, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    iget-object v4, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v4, v4, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 1979
    .local v1, "fragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    invoke-virtual {v1, p1, p2, p3}, Lorg/telegram/ui/ActionBar/BaseFragment;->onRequestPermissionsResultFragment(I[Ljava/lang/String;[I)V

    .line 1981
    .end local v1    # "fragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    :cond_e4
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_26

    .line 1982
    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v3, v3, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_10b

    .line 1983
    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v3, v3, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    iget-object v4, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v4, v4, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 1984
    .restart local v1    # "fragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    invoke-virtual {v1, p1, p2, p3}, Lorg/telegram/ui/ActionBar/BaseFragment;->onRequestPermissionsResultFragment(I[Ljava/lang/String;[I)V

    .line 1986
    .end local v1    # "fragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    :cond_10b
    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v3, v3, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_26

    .line 1987
    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v3, v3, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    iget-object v4, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v4, v4, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 1988
    .restart local v1    # "fragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    invoke-virtual {v1, p1, p2, p3}, Lorg/telegram/ui/ActionBar/BaseFragment;->onRequestPermissionsResultFragment(I[Ljava/lang/String;[I)V

    goto/16 :goto_26
.end method

.method protected onResume()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 2073
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 2074
    sput-boolean v2, Lorg/telegram/messenger/ApplicationLoader;->mainInterfacePaused:Z

    .line 2075
    sget-object v0, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/ui/LaunchActivity$18;

    invoke-direct {v1, p0}, Lorg/telegram/ui/LaunchActivity$18;-><init>(Lorg/telegram/ui/LaunchActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 2082
    invoke-direct {p0}, Lorg/telegram/ui/LaunchActivity;->onPasscodeResume()V

    .line 2083
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->passcodeView:Lorg/telegram/ui/Components/PasscodeView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PasscodeView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_52

    .line 2084
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->onResume()V

    .line 2085
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 2086
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->onResume()V

    .line 2087
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->onResume()V

    .line 2097
    :cond_30
    :goto_30
    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->checkForCrashes(Landroid/app/Activity;)V

    .line 2098
    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->checkForUpdates(Landroid/app/Activity;)V

    .line 2099
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Lorg/telegram/tgnet/ConnectionsManager;->setAppPaused(ZZ)V

    .line 2100
    invoke-direct {p0}, Lorg/telegram/ui/LaunchActivity;->updateCurrentConnectionState()V

    .line 2101
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/PhotoViewer;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_51

    .line 2102
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/PhotoViewer;->onResume()V

    .line 2104
    :cond_51
    return-void

    .line 2090
    :cond_52
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->dismissDialogs()V

    .line 2091
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_67

    .line 2092
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->dismissDialogs()V

    .line 2093
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->dismissDialogs()V

    .line 2095
    :cond_67
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->passcodeView:Lorg/telegram/ui/Components/PasscodeView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PasscodeView;->onResume()V

    goto :goto_30
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 8
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 2308
    :try_start_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2309
    const/4 v3, 0x0

    .line 2310
    .local v3, "lastFragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v4

    if-eqz v4, :cond_82

    .line 2311
    iget-object v4, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v4, v4, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_44

    .line 2312
    iget-object v4, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v4, v4, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    iget-object v5, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v5, v5, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "lastFragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    check-cast v3, Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 2324
    .restart local v3    # "lastFragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    :cond_28
    :goto_28
    if-eqz v3, :cond_43

    .line 2325
    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 2326
    .local v1, "args":Landroid/os/Bundle;
    instance-of v4, v3, Lorg/telegram/ui/ChatActivity;

    if-eqz v4, :cond_a1

    if-eqz v1, :cond_a1

    .line 2327
    const-string v4, "args"

    invoke-virtual {p1, v4, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2328
    const-string v4, "fragment"

    const-string v5, "chat"

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2346
    :cond_40
    :goto_40
    invoke-virtual {v3, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->saveSelfArgs(Landroid/os/Bundle;)V

    .line 2351
    .end local v1    # "args":Landroid/os/Bundle;
    .end local v3    # "lastFragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    :cond_43
    :goto_43
    return-void

    .line 2313
    .restart local v3    # "lastFragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    :cond_44
    iget-object v4, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v4, v4, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_63

    .line 2314
    iget-object v4, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v4, v4, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    iget-object v5, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v5, v5, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "lastFragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    check-cast v3, Lorg/telegram/ui/ActionBar/BaseFragment;

    .restart local v3    # "lastFragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    goto :goto_28

    .line 2315
    :cond_63
    iget-object v4, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v4, v4, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_28

    .line 2316
    iget-object v4, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v4, v4, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    iget-object v5, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v5, v5, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "lastFragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    check-cast v3, Lorg/telegram/ui/ActionBar/BaseFragment;

    .restart local v3    # "lastFragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    goto :goto_28

    .line 2319
    :cond_82
    iget-object v4, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v4, v4, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_28

    .line 2320
    iget-object v4, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v4, v4, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    iget-object v5, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v5, v5, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "lastFragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    check-cast v3, Lorg/telegram/ui/ActionBar/BaseFragment;

    .restart local v3    # "lastFragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    goto :goto_28

    .line 2329
    .restart local v1    # "args":Landroid/os/Bundle;
    :cond_a1
    instance-of v4, v3, Lorg/telegram/ui/SettingsActivity;

    if-eqz v4, :cond_b2

    .line 2330
    const-string v4, "fragment"

    const-string v5, "settings"

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_ac
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_ac} :catch_ad

    goto :goto_40

    .line 2348
    .end local v1    # "args":Landroid/os/Bundle;
    .end local v3    # "lastFragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    :catch_ad
    move-exception v2

    .line 2349
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_43

    .line 2331
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v1    # "args":Landroid/os/Bundle;
    .restart local v3    # "lastFragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    :cond_b2
    :try_start_b2
    instance-of v4, v3, Lorg/telegram/ui/GroupCreateFinalActivity;

    if-eqz v4, :cond_c6

    if-eqz v1, :cond_c6

    .line 2332
    const-string v4, "args"

    invoke-virtual {p1, v4, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2333
    const-string v4, "fragment"

    const-string v5, "group"

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_40

    .line 2334
    :cond_c6
    instance-of v4, v3, Lorg/telegram/ui/WallpapersActivity;

    if-eqz v4, :cond_d3

    .line 2335
    const-string v4, "fragment"

    const-string v5, "wallpapers"

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_40

    .line 2336
    :cond_d3
    instance-of v4, v3, Lorg/telegram/ui/ProfileActivity;

    if-eqz v4, :cond_f1

    move-object v0, v3

    check-cast v0, Lorg/telegram/ui/ProfileActivity;

    move-object v4, v0

    invoke-virtual {v4}, Lorg/telegram/ui/ProfileActivity;->isChat()Z

    move-result v4

    if-eqz v4, :cond_f1

    if-eqz v1, :cond_f1

    .line 2337
    const-string v4, "args"

    invoke-virtual {p1, v4, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2338
    const-string v4, "fragment"

    const-string v5, "chat_profile"

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_40

    .line 2339
    :cond_f1
    instance-of v4, v3, Lorg/telegram/ui/ChannelCreateActivity;

    if-eqz v4, :cond_10d

    if-eqz v1, :cond_10d

    const-string v4, "step"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_10d

    .line 2340
    const-string v4, "args"

    invoke-virtual {p1, v4, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2341
    const-string v4, "fragment"

    const-string v5, "channel"

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_40

    .line 2342
    :cond_10d
    instance-of v4, v3, Lorg/telegram/ui/ChannelEditActivity;

    if-eqz v4, :cond_40

    if-eqz v1, :cond_40

    .line 2343
    const-string v4, "args"

    invoke-virtual {p1, v4, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2344
    const-string v4, "fragment"

    const-string v5, "edit"

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_11f
    .catch Ljava/lang/Exception; {:try_start_b2 .. :try_end_11f} :catch_ad

    goto/16 :goto_40
.end method

.method protected onStart()V
    .registers 1

    .prologue
    .line 2022
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 2023
    invoke-static {p0}, Lorg/telegram/messenger/browser/Browser;->bindCustomTabsService(Landroid/app/Activity;)V

    .line 2024
    return-void
.end method

.method protected onStop()V
    .registers 1

    .prologue
    .line 2028
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 2029
    invoke-static {p0}, Lorg/telegram/messenger/browser/Browser;->unbindCustomTabsService(Landroid/app/Activity;)V

    .line 2030
    return-void
.end method

.method public prem()Z
    .registers 2

    .prologue
    .line 148
    sget-boolean v0, Lorg/telegram/ui/LaunchActivity;->mIsUprade:Z

    return v0
.end method

.method public presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .registers 3
    .param p1, "fragment"    # Lorg/telegram/ui/ActionBar/BaseFragment;

    .prologue
    .line 1879
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    .line 1880
    return-void
.end method

.method public presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;ZZ)Z
    .registers 6
    .param p1, "fragment"    # Lorg/telegram/ui/ActionBar/BaseFragment;
    .param p2, "removeLast"    # Z
    .param p3, "forceWithoutAnimation"    # Z

    .prologue
    .line 1883
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, p3, v1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;ZZZ)Z

    move-result v0

    return v0
.end method

.method public rebuildAllFragments(Z)V
    .registers 3
    .param p1, "last"    # Z

    .prologue
    .line 2666
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    if-eqz v0, :cond_f

    .line 2667
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->rebuildAllFragmentViews(Z)V

    .line 2668
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->showLastFragment()V

    .line 2673
    :goto_e
    return-void

    .line 2670
    :cond_f
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->rebuildAllFragmentViews(Z)V

    .line 2671
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->showLastFragment()V

    goto :goto_e
.end method

.method public showAlertDialog(Lorg/telegram/ui/ActionBar/AlertDialog$Builder;)Lorg/telegram/ui/ActionBar/AlertDialog;
    .registers 6
    .param p1, "builder"    # Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .prologue
    const/4 v1, 0x0

    .line 1739
    :try_start_1
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->visibleDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    if-eqz v2, :cond_d

    .line 1740
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->visibleDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V

    .line 1741
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/telegram/ui/LaunchActivity;->visibleDialog:Lorg/telegram/ui/ActionBar/AlertDialog;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_d} :catch_26

    .line 1747
    :cond_d
    :goto_d
    :try_start_d
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->show()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/ui/LaunchActivity;->visibleDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    .line 1748
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->visibleDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 1749
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->visibleDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    new-instance v3, Lorg/telegram/ui/LaunchActivity$15;

    invoke-direct {v3, p0}, Lorg/telegram/ui/LaunchActivity$15;-><init>(Lorg/telegram/ui/LaunchActivity;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1755
    iget-object v1, p0, Lorg/telegram/ui/LaunchActivity;->visibleDialog:Lorg/telegram/ui/ActionBar/AlertDialog;
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_25} :catch_2b

    .line 1759
    :goto_25
    return-object v1

    .line 1743
    :catch_26
    move-exception v0

    .line 1744
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_d

    .line 1756
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_2b
    move-exception v0

    .line 1757
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_25
.end method
