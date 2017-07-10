.class public Lorg/telegram/ui/ProfileNotificationsActivity;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "ProfileNotificationsActivity.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;
    }
.end annotation


# instance fields
.field private adapter:Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;

.field private animatorSet:Landroid/animation/AnimatorSet;

.field private callsRow:I

.field private callsVibrateRow:I

.field private colorRow:I

.field private customEnabled:Z

.field private customInfoRow:I

.field private customRow:I

.field private dialog_id:J

.field private generalRow:I

.field private ledInfoRow:I

.field private ledRow:I

.field private listView:Lorg/telegram/ui/Components/RecyclerListView;

.field private notificationsEnabled:Z

.field private popupDisabledRow:I

.field private popupEnabledRow:I

.field private popupInfoRow:I

.field private popupRow:I

.field private priorityInfoRow:I

.field private priorityRow:I

.field private ringtoneInfoRow:I

.field private ringtoneRow:I

.field private rowCount:I

.field private smartRow:I

.field private soundRow:I

.field private vibrateRow:I


# direct methods
.method public constructor <init>(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>(Landroid/os/Bundle;)V

    .line 95
    const-string v0, "dialog_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->dialog_id:J

    .line 96
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/ProfileNotificationsActivity;)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ProfileNotificationsActivity;

    .prologue
    .line 61
    iget-boolean v0, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->notificationsEnabled:Z

    return v0
.end method

.method static synthetic access$002(Lorg/telegram/ui/ProfileNotificationsActivity;Z)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ProfileNotificationsActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 61
    iput-boolean p1, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->notificationsEnabled:Z

    return p1
.end method

.method static synthetic access$100(Lorg/telegram/ui/ProfileNotificationsActivity;)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ProfileNotificationsActivity;

    .prologue
    .line 61
    iget-boolean v0, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->customEnabled:Z

    return v0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/ProfileNotificationsActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ProfileNotificationsActivity;

    .prologue
    .line 61
    iget v0, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->callsVibrateRow:I

    return v0
.end method

.method static synthetic access$102(Lorg/telegram/ui/ProfileNotificationsActivity;Z)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ProfileNotificationsActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 61
    iput-boolean p1, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->customEnabled:Z

    return p1
.end method

.method static synthetic access$1100(Lorg/telegram/ui/ProfileNotificationsActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ProfileNotificationsActivity;

    .prologue
    .line 61
    iget v0, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->priorityRow:I

    return v0
.end method

.method static synthetic access$1200(Lorg/telegram/ui/ProfileNotificationsActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ProfileNotificationsActivity;

    .prologue
    .line 61
    iget v0, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->smartRow:I

    return v0
.end method

.method static synthetic access$1300(Lorg/telegram/ui/ProfileNotificationsActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ProfileNotificationsActivity;

    .prologue
    .line 61
    iget v0, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->colorRow:I

    return v0
.end method

.method static synthetic access$1400(Lorg/telegram/ui/ProfileNotificationsActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ProfileNotificationsActivity;

    .prologue
    .line 61
    iget v0, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->popupEnabledRow:I

    return v0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/ProfileNotificationsActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ProfileNotificationsActivity;

    .prologue
    .line 61
    iget v0, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->popupDisabledRow:I

    return v0
.end method

.method static synthetic access$1600(Lorg/telegram/ui/ProfileNotificationsActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ProfileNotificationsActivity;

    .prologue
    .line 61
    iget v0, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->rowCount:I

    return v0
.end method

.method static synthetic access$1700(Lorg/telegram/ui/ProfileNotificationsActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ProfileNotificationsActivity;

    .prologue
    .line 61
    iget v0, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->generalRow:I

    return v0
.end method

.method static synthetic access$1800(Lorg/telegram/ui/ProfileNotificationsActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ProfileNotificationsActivity;

    .prologue
    .line 61
    iget v0, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->popupRow:I

    return v0
.end method

.method static synthetic access$1900(Lorg/telegram/ui/ProfileNotificationsActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ProfileNotificationsActivity;

    .prologue
    .line 61
    iget v0, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->ledRow:I

    return v0
.end method

.method static synthetic access$200(Lorg/telegram/ui/ProfileNotificationsActivity;)J
    .registers 3
    .param p0, "x0"    # Lorg/telegram/ui/ProfileNotificationsActivity;

    .prologue
    .line 61
    iget-wide v0, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->dialog_id:J

    return-wide v0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/ProfileNotificationsActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ProfileNotificationsActivity;

    .prologue
    .line 61
    iget v0, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->callsRow:I

    return v0
.end method

.method static synthetic access$2100(Lorg/telegram/ui/ProfileNotificationsActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ProfileNotificationsActivity;

    .prologue
    .line 61
    iget v0, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->popupInfoRow:I

    return v0
.end method

.method static synthetic access$2200(Lorg/telegram/ui/ProfileNotificationsActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ProfileNotificationsActivity;

    .prologue
    .line 61
    iget v0, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->ledInfoRow:I

    return v0
.end method

.method static synthetic access$2300(Lorg/telegram/ui/ProfileNotificationsActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ProfileNotificationsActivity;

    .prologue
    .line 61
    iget v0, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->priorityInfoRow:I

    return v0
.end method

.method static synthetic access$2400(Lorg/telegram/ui/ProfileNotificationsActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ProfileNotificationsActivity;

    .prologue
    .line 61
    iget v0, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->customInfoRow:I

    return v0
.end method

.method static synthetic access$2500(Lorg/telegram/ui/ProfileNotificationsActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ProfileNotificationsActivity;

    .prologue
    .line 61
    iget v0, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->ringtoneInfoRow:I

    return v0
.end method

.method static synthetic access$300(Lorg/telegram/ui/ProfileNotificationsActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ProfileNotificationsActivity;

    .prologue
    .line 61
    iget v0, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->customRow:I

    return v0
.end method

.method static synthetic access$400(Lorg/telegram/ui/ProfileNotificationsActivity;)Lorg/telegram/ui/Components/RecyclerListView;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ProfileNotificationsActivity;

    .prologue
    .line 61
    iget-object v0, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object v0
.end method

.method static synthetic access$500(Lorg/telegram/ui/ProfileNotificationsActivity;)Landroid/animation/AnimatorSet;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ProfileNotificationsActivity;

    .prologue
    .line 61
    iget-object v0, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->animatorSet:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic access$502(Lorg/telegram/ui/ProfileNotificationsActivity;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ProfileNotificationsActivity;
    .param p1, "x1"    # Landroid/animation/AnimatorSet;

    .prologue
    .line 61
    iput-object p1, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->animatorSet:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$600(Lorg/telegram/ui/ProfileNotificationsActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ProfileNotificationsActivity;

    .prologue
    .line 61
    iget v0, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->soundRow:I

    return v0
.end method

.method static synthetic access$700(Lorg/telegram/ui/ProfileNotificationsActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ProfileNotificationsActivity;

    .prologue
    .line 61
    iget v0, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->ringtoneRow:I

    return v0
.end method

.method static synthetic access$800(Lorg/telegram/ui/ProfileNotificationsActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ProfileNotificationsActivity;

    .prologue
    .line 61
    iget v0, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->vibrateRow:I

    return v0
.end method

.method static synthetic access$900(Lorg/telegram/ui/ProfileNotificationsActivity;)Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ProfileNotificationsActivity;

    .prologue
    .line 61
    iget-object v0, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->adapter:Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;

    return-object v0
.end method


# virtual methods
.method public createView(Landroid/content/Context;)Landroid/view/View;
    .registers 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 188
    iget-object v1, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const v2, 0x7f0200dd

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 189
    iget-object v1, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    .line 190
    iget-object v1, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string v2, "CustomNotifications"

    const v3, 0x7f0701b1

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 191
    iget-object v1, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v2, Lorg/telegram/ui/ProfileNotificationsActivity$1;

    invoke-direct {v2, p0}, Lorg/telegram/ui/ProfileNotificationsActivity$1;-><init>(Lorg/telegram/ui/ProfileNotificationsActivity;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 204
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->fragmentView:Landroid/view/View;

    .line 205
    iget-object v0, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->fragmentView:Landroid/view/View;

    check-cast v0, Landroid/widget/FrameLayout;

    .line 206
    .local v0, "frameLayout":Landroid/widget/FrameLayout;
    const-string v1, "windowBackgroundGray"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 208
    new-instance v1, Lorg/telegram/ui/Components/RecyclerListView;

    invoke-direct {v1, p1}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 209
    iget-object v1, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, -0x1

    const/high16 v3, -0x40800000    # -1.0f

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 210
    iget-object v1, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v2, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;-><init>(Lorg/telegram/ui/ProfileNotificationsActivity;Landroid/content/Context;)V

    iput-object v2, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->adapter:Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;)V

    .line 211
    iget-object v1, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v4}, Lorg/telegram/ui/Components/RecyclerListView;->setItemAnimator(Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator;)V

    .line 212
    iget-object v1, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v4}, Lorg/telegram/ui/Components/RecyclerListView;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    .line 213
    iget-object v1, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v2, Lorg/telegram/ui/ProfileNotificationsActivity$2;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/ProfileNotificationsActivity$2;-><init>(Lorg/telegram/ui/ProfileNotificationsActivity;Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setLayoutManager(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;)V

    .line 219
    iget-object v1, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v2, Lorg/telegram/ui/ProfileNotificationsActivity$3;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/ProfileNotificationsActivity$3;-><init>(Lorg/telegram/ui/ProfileNotificationsActivity;Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    .line 485
    iget-object v1, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->fragmentView:Landroid/view/View;

    return-object v1
.end method

.method public varargs didReceivedNotification(I[Ljava/lang/Object;)V
    .registers 4
    .param p1, "id"    # I
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 545
    sget v0, Lorg/telegram/messenger/NotificationCenter;->notificationsSettingsUpdated:I

    if-ne p1, v0, :cond_9

    .line 546
    iget-object v0, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->adapter:Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->notifyDataSetChanged()V

    .line 548
    :cond_9
    return-void
.end method

.method public getThemeDescriptions()[Lorg/telegram/ui/ActionBar/ThemeDescription;
    .registers 12

    .prologue
    .line 797
    const/16 v0, 0x17

    new-array v9, v0, [Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v8, 0x0

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CELLBACKGROUNDCOLOR:I

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/HeaderCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Lorg/telegram/ui/Cells/TextSettingsCell;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-class v5, Lorg/telegram/ui/Cells/TextColorCell;

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-class v5, Lorg/telegram/ui/Cells/RadioCell;

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-class v5, Lorg/telegram/ui/Cells/TextCheckBoxCell;

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "windowBackgroundWhite"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v8

    const/4 v8, 0x1

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->fragmentView:Landroid/view/View;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "windowBackgroundGray"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v8

    const/4 v8, 0x2

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "actionBarDefault"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v8

    const/4 v8, 0x3

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LISTGLOWCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "actionBarDefault"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v8

    const/4 v8, 0x4

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_ITEMSCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "actionBarDefaultIcon"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v8

    const/4 v8, 0x5

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_TITLECOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "actionBarDefaultTitle"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v8

    const/4 v8, 0x6

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SELECTORCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "actionBarDefaultSelector"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v8

    const/4 v8, 0x7

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "listSelectorSDK21"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v8

    const/16 v8, 0x8

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

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

    aput-object v0, v9, v8

    const/16 v8, 0x9

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

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

    aput-object v0, v9, v8

    const/16 v10, 0xa

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

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

    aput-object v0, v9, v10

    const/16 v10, 0xb

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

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

    aput-object v0, v9, v10

    const/16 v10, 0xc

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

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

    aput-object v0, v9, v10

    const/16 v10, 0xd

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

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

    aput-object v0, v9, v10

    const/16 v10, 0xe

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/TextColorCell;

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

    aput-object v0, v9, v10

    const/16 v10, 0xf

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

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

    aput-object v0, v9, v10

    const/16 v10, 0x10

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

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

    aput-object v0, v9, v10

    const/16 v10, 0x11

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

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

    aput-object v0, v9, v10

    const/16 v10, 0x12

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/TextCheckBoxCell;

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

    aput-object v0, v9, v10

    const/16 v8, 0x13

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/TextCheckBoxCell;

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "checkboxSquareUnchecked"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v8

    const/16 v8, 0x14

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/TextCheckBoxCell;

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "checkboxSquareDisabled"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v8

    const/16 v8, 0x15

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/TextCheckBoxCell;

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "checkboxSquareBackground"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v8

    const/16 v8, 0x16

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/TextCheckBoxCell;

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "checkboxSquareCheck"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v8

    return-object v9
.end method

.method public onActivityResultFragment(IILandroid/content/Intent;)V
    .registers 13
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/16 v8, 0xd

    .line 490
    const/4 v5, -0x1

    if-ne p2, v5, :cond_7

    .line 491
    if-nez p3, :cond_8

    .line 541
    :cond_7
    :goto_7
    return-void

    .line 494
    :cond_8
    const-string v5, "android.intent.extra.ringtone.PICKED_URI"

    invoke-virtual {p3, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    .line 495
    .local v3, "ringtone":Landroid/net/Uri;
    const/4 v1, 0x0

    .line 496
    .local v1, "name":Ljava/lang/String;
    if-eqz v3, :cond_31

    .line 497
    sget-object v5, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-static {v5, v3}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v4

    .line 498
    .local v4, "rng":Landroid/media/Ringtone;
    if-eqz v4, :cond_31

    .line 499
    if-ne p1, v8, :cond_93

    .line 500
    sget-object v5, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    invoke-virtual {v3, v5}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8a

    .line 501
    const-string v5, "DefaultRingtone"

    const v6, 0x7f0701c6

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 512
    :goto_2e
    invoke-virtual {v4}, Landroid/media/Ringtone;->stop()V

    .line 516
    .end local v4    # "rng":Landroid/media/Ringtone;
    :cond_31
    sget-object v5, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v6, "Notifications"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 517
    .local v2, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 519
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const/16 v5, 0xc

    if-ne p1, v5, :cond_e3

    .line 520
    if-eqz v1, :cond_ae

    .line 521
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sound_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->dialog_id:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 522
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sound_path_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->dialog_id:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 536
    :cond_78
    :goto_78
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 537
    iget-object v5, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->adapter:Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;

    if-eqz v5, :cond_7

    .line 538
    iget-object v6, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->adapter:Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;

    if-ne p1, v8, :cond_153

    iget v5, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->ringtoneRow:I

    :goto_85
    invoke-virtual {v6, v5}, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->notifyItemChanged(I)V

    goto/16 :goto_7

    .line 503
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v2    # "preferences":Landroid/content/SharedPreferences;
    .restart local v4    # "rng":Landroid/media/Ringtone;
    :cond_8a
    invoke-virtual {p0}, Lorg/telegram/ui/ProfileNotificationsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/media/Ringtone;->getTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2e

    .line 506
    :cond_93
    sget-object v5, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    invoke-virtual {v3, v5}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a5

    .line 507
    const-string v5, "SoundDefault"

    const v6, 0x7f07051c

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2e

    .line 509
    :cond_a5
    invoke-virtual {p0}, Lorg/telegram/ui/ProfileNotificationsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/media/Ringtone;->getTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2e

    .line 524
    .end local v4    # "rng":Landroid/media/Ringtone;
    .restart local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local v2    # "preferences":Landroid/content/SharedPreferences;
    :cond_ae
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sound_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->dialog_id:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "NoSound"

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 525
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sound_path_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->dialog_id:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "NoSound"

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_78

    .line 527
    :cond_e3
    if-ne p1, v8, :cond_78

    .line 528
    if-eqz v1, :cond_11d

    .line 529
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ringtone_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->dialog_id:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 530
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ringtone_path_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->dialog_id:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_78

    .line 532
    :cond_11d
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ringtone_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->dialog_id:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "NoSound"

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 533
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ringtone_path_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->dialog_id:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "NoSound"

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_78

    .line 538
    :cond_153
    iget v5, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->soundRow:I

    goto/16 :goto_85
.end method

.method public onFragmentCreate()Z
    .registers 13

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v10, -0x1

    .line 100
    iput v7, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->rowCount:I

    .line 101
    iget v8, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->rowCount:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->rowCount:I

    iput v8, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->customRow:I

    .line 102
    iget v8, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->rowCount:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->rowCount:I

    iput v8, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->customInfoRow:I

    .line 103
    iget v8, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->rowCount:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->rowCount:I

    iput v8, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->generalRow:I

    .line 104
    iget v8, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->rowCount:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->rowCount:I

    iput v8, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->soundRow:I

    .line 105
    iget v8, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->rowCount:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->rowCount:I

    iput v8, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->vibrateRow:I

    .line 106
    iget-wide v8, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->dialog_id:J

    long-to-int v8, v8

    if-gez v8, :cond_13e

    .line 107
    iget v8, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->rowCount:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->rowCount:I

    iput v8, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->smartRow:I

    .line 111
    :goto_3a
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x15

    if-lt v8, v9, :cond_142

    .line 112
    iget v8, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->rowCount:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->rowCount:I

    iput v8, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->priorityRow:I

    .line 116
    :goto_48
    iget v8, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->rowCount:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->rowCount:I

    iput v8, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->priorityInfoRow:I

    .line 118
    iget-wide v8, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->dialog_id:J

    long-to-int v3, v8

    .line 119
    .local v3, "lower_id":I
    if-gez v3, :cond_149

    .line 120
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v8

    neg-int v9, v3

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    .line 121
    .local v0, "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    if-eqz v0, :cond_146

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v8

    if-eqz v8, :cond_146

    iget-boolean v8, v0, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez v8, :cond_146

    move v2, v6

    .line 125
    .end local v0    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    .local v2, "isChannel":Z
    :goto_6f
    if-eqz v3, :cond_14c

    if-nez v2, :cond_14c

    .line 126
    iget v8, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->rowCount:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->rowCount:I

    iput v8, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->popupRow:I

    .line 127
    iget v8, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->rowCount:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->rowCount:I

    iput v8, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->popupEnabledRow:I

    .line 128
    iget v8, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->rowCount:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->rowCount:I

    iput v8, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->popupDisabledRow:I

    .line 129
    iget v8, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->rowCount:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->rowCount:I

    iput v8, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->popupInfoRow:I

    .line 137
    :goto_93
    if-lez v3, :cond_156

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v8

    iget-boolean v8, v8, Lorg/telegram/messenger/MessagesController;->callsEnabled:Z

    if-eqz v8, :cond_156

    .line 138
    iget v8, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->rowCount:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->rowCount:I

    iput v8, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->callsRow:I

    .line 139
    iget v8, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->rowCount:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->rowCount:I

    iput v8, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->callsVibrateRow:I

    .line 140
    iget v8, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->rowCount:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->rowCount:I

    iput v8, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->ringtoneRow:I

    .line 141
    iget v8, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->rowCount:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->rowCount:I

    iput v8, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->ringtoneInfoRow:I

    .line 149
    :goto_bd
    iget v8, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->rowCount:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->rowCount:I

    iput v8, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->ledRow:I

    .line 150
    iget v8, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->rowCount:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->rowCount:I

    iput v8, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->colorRow:I

    .line 151
    iget v8, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->rowCount:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->rowCount:I

    iput v8, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->ledInfoRow:I

    .line 153
    sget-object v8, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v9, "Notifications"

    invoke-virtual {v8, v9, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 154
    .local v4, "preferences":Landroid/content/SharedPreferences;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "custom_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v10, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->dialog_id:J

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v8, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    iput-boolean v8, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->customEnabled:Z

    .line 156
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "notify2_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v10, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->dialog_id:J

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v8}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    .line 157
    .local v1, "hasOverride":Z
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "notify2_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v10, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->dialog_id:J

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v8, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 158
    .local v5, "value":I
    if-nez v5, :cond_177

    .line 159
    if-eqz v1, :cond_160

    .line 160
    iput-boolean v6, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->notificationsEnabled:Z

    .line 176
    :goto_130
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v6

    sget v7, Lorg/telegram/messenger/NotificationCenter;->notificationsSettingsUpdated:I

    invoke-virtual {v6, p0, v7}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 177
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    move-result v6

    return v6

    .line 109
    .end local v1    # "hasOverride":Z
    .end local v2    # "isChannel":Z
    .end local v3    # "lower_id":I
    .end local v4    # "preferences":Landroid/content/SharedPreferences;
    .end local v5    # "value":I
    :cond_13e
    iput v10, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->smartRow:I

    goto/16 :goto_3a

    .line 114
    :cond_142
    iput v10, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->priorityRow:I

    goto/16 :goto_48

    .restart local v0    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    .restart local v3    # "lower_id":I
    :cond_146
    move v2, v7

    .line 121
    goto/16 :goto_6f

    .line 123
    .end local v0    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_149
    const/4 v2, 0x0

    .restart local v2    # "isChannel":Z
    goto/16 :goto_6f

    .line 131
    :cond_14c
    iput v10, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->popupRow:I

    .line 132
    iput v10, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->popupEnabledRow:I

    .line 133
    iput v10, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->popupDisabledRow:I

    .line 134
    iput v10, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->popupInfoRow:I

    goto/16 :goto_93

    .line 143
    :cond_156
    iput v10, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->callsRow:I

    .line 144
    iput v10, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->callsVibrateRow:I

    .line 145
    iput v10, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->ringtoneRow:I

    .line 146
    iput v10, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->ringtoneInfoRow:I

    goto/16 :goto_bd

    .line 162
    .restart local v1    # "hasOverride":Z
    .restart local v4    # "preferences":Landroid/content/SharedPreferences;
    .restart local v5    # "value":I
    :cond_160
    iget-wide v8, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->dialog_id:J

    long-to-int v7, v8

    if-gez v7, :cond_16e

    .line 163
    const-string v7, "EnableGroup"

    invoke-interface {v4, v7, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->notificationsEnabled:Z

    goto :goto_130

    .line 165
    :cond_16e
    const-string v7, "EnableAll"

    invoke-interface {v4, v7, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->notificationsEnabled:Z

    goto :goto_130

    .line 168
    :cond_177
    if-ne v5, v6, :cond_17c

    .line 169
    iput-boolean v6, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->notificationsEnabled:Z

    goto :goto_130

    .line 170
    :cond_17c
    const/4 v6, 0x2

    if-ne v5, v6, :cond_182

    .line 171
    iput-boolean v7, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->notificationsEnabled:Z

    goto :goto_130

    .line 173
    :cond_182
    iput-boolean v7, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->notificationsEnabled:Z

    goto :goto_130
.end method

.method public onFragmentDestroy()V
    .registers 3

    .prologue
    .line 182
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    .line 183
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->notificationsSettingsUpdated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 184
    return-void
.end method
