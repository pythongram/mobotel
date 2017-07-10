.class public Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "AnsweingMachineSettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity$ListAdapter;
    }
.end annotation


# instance fields
.field private AnsweringMachineSectionRow:I

.field private TypeCount:I

.field private answermachineTime:I

.field private answermachinetext:I

.field private emptyRow:I

.field private enableAnweringMachin:I

.field private listAdapter:Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity$ListAdapter;

.field private listView:Landroid/widget/ListView;

.field private rowCount:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 51
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>()V

    .line 53
    const/16 v0, 0x8

    iput v0, p0, Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity;->TypeCount:I

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity;)Landroid/widget/ListView;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity;

    .prologue
    .line 51
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity;->listView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity;)Lorg/telegram/ui/ActionBar/ActionBarLayout;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity;

    .prologue
    .line 51
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity;->parentLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    return-object v0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity;

    .prologue
    .line 51
    iget v0, p0, Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity;->AnsweringMachineSectionRow:I

    return v0
.end method

.method static synthetic access$1100(Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity;

    .prologue
    .line 51
    iget v0, p0, Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity;->TypeCount:I

    return v0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity;)Lorg/telegram/ui/ActionBar/ActionBarLayout;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity;

    .prologue
    .line 51
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity;->parentLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    return-object v0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity;

    .prologue
    .line 51
    iget v0, p0, Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity;->answermachineTime:I

    return v0
.end method

.method static synthetic access$400(Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity;

    .prologue
    .line 51
    iget v0, p0, Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity;->answermachinetext:I

    return v0
.end method

.method static synthetic access$500(Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity;

    .prologue
    .line 51
    iget v0, p0, Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity;->enableAnweringMachin:I

    return v0
.end method

.method static synthetic access$600(Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity;)Landroid/view/View;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity;

    .prologue
    .line 51
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity;->fragmentView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$700(Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity;)Landroid/view/View;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity;

    .prologue
    .line 51
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity;->fragmentView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$800(Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity;

    .prologue
    .line 51
    iget v0, p0, Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity;->rowCount:I

    return v0
.end method

.method static synthetic access$900(Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity;

    .prologue
    .line 51
    iget v0, p0, Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity;->emptyRow:I

    return v0
.end method

.method private fixLayout()V
    .registers 3

    .prologue
    .line 255
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity;->fragmentView:Landroid/view/View;

    if-nez v0, :cond_5

    .line 268
    :goto_4
    return-void

    .line 258
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity;->fragmentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity$4;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity$4;-><init>(Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 267
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity;->listView:Landroid/widget/ListView;

    iget-object v1, p0, Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity;->listAdapter:Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity$ListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_4
.end method


# virtual methods
.method public createView(Landroid/content/Context;)Landroid/view/View;
    .registers 11
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 84
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string v1, "AnsweringMachine"

    const v2, 0x7f070644

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 85
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const v1, 0x7f0200dd

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 86
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    .line 87
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v1, Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity$1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity$1;-><init>(Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 95
    new-instance v0, Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity$ListAdapter;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity$ListAdapter;-><init>(Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity;->listAdapter:Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity$ListAdapter;

    .line 97
    new-instance v0, Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity$2;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity$2;-><init>(Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity;->fragmentView:Landroid/view/View;

    .line 125
    iget-object v7, p0, Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity;->fragmentView:Landroid/view/View;

    check-cast v7, Landroid/widget/FrameLayout;

    .line 126
    .local v7, "frameLayout":Landroid/widget/FrameLayout;
    new-instance v0, Landroid/widget/ListView;

    invoke-direct {v0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity;->listView:Landroid/widget/ListView;

    .line 127
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity;->listView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 128
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 129
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setVerticalScrollBarEnabled(Z)V

    .line 130
    iget-object v8, p0, Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity;->listView:Landroid/widget/ListView;

    const/4 v0, -0x1

    const/high16 v1, -0x40800000    # -1.0f

    const/16 v2, 0x33

    iget-object v4, p0, Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/ActionBar;->getHeight()I

    move-result v4

    add-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    move v5, v3

    move v6, v3

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v7, v8, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 131
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity;->listView:Landroid/widget/ListView;

    iget-object v1, p0, Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity;->listAdapter:Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity$ListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 132
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity;->listView:Landroid/widget/ListView;

    new-instance v1, Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity$3;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity$3;-><init>(Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 213
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v7, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 215
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity;->fragmentView:Landroid/view/View;

    return-object v0
.end method

.method public onActivityResultFragment(IILandroid/content/Intent;)V
    .registers 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 225
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 250
    invoke-super {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 251
    invoke-direct {p0}, Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity;->fixLayout()V

    .line 252
    return-void
.end method

.method protected onDialogDismiss(Landroid/app/Dialog;)V
    .registers 3
    .param p1, "dialog"    # Landroid/app/Dialog;

    .prologue
    .line 220
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaController;->checkAutodownloadSettings()V

    .line 221
    return-void
.end method

.method public onFragmentCreate()Z
    .registers 3

    .prologue
    .line 66
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    .line 67
    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity;->rowCount:I

    .line 68
    iget v0, p0, Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity;->emptyRow:I

    .line 70
    iget v0, p0, Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity;->AnsweringMachineSectionRow:I

    .line 71
    iget v0, p0, Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity;->enableAnweringMachin:I

    .line 72
    iget v0, p0, Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity;->answermachinetext:I

    .line 73
    iget v0, p0, Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity;->answermachineTime:I

    .line 74
    const/4 v0, 0x1

    return v0
.end method

.method public onFragmentDestroy()V
    .registers 1

    .prologue
    .line 79
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    .line 80
    return-void
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 239
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onResume()V

    .line 240
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity;->listAdapter:Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity$ListAdapter;

    if-eqz v0, :cond_c

    .line 241
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity;->listAdapter:Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity$ListAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity$ListAdapter;->notifyDataSetChanged()V

    .line 243
    :cond_c
    invoke-direct {p0}, Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity;->fixLayout()V

    .line 244
    const-string v0, "Answering Activity"

    invoke-static {v0}, Lorg/telegram/ui/Membergram/analytics/AnalyticsEventUtil;->sendScreenName(Ljava/lang/String;)V

    .line 246
    return-void
.end method

.method public restoreSelfArgs(Landroid/os/Bundle;)V
    .registers 2
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    .line 235
    return-void
.end method

.method public saveSelfArgs(Landroid/os/Bundle;)V
    .registers 2
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    .line 230
    return-void
.end method
