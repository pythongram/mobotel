.class public Lorg/telegram/ui/ActionBar/BaseFragment;
.super Ljava/lang/Object;
.source "BaseFragment.java"


# instance fields
.field protected actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

.field protected arguments:Landroid/os/Bundle;

.field protected classGuid:I

.field protected fragmentView:Landroid/view/View;

.field protected hasOwnBackground:Z

.field private isFinished:Z

.field protected parentLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

.field protected swipeBackEnabled:Z

.field protected visibleDialog:Landroid/app/Dialog;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-boolean v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->isFinished:Z

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->visibleDialog:Landroid/app/Dialog;

    .line 38
    iput v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->classGuid:I

    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->swipeBackEnabled:Z

    .line 41
    iput-boolean v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->hasOwnBackground:Z

    .line 44
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/tgnet/ConnectionsManager;->generateClassGuid()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->classGuid:I

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-boolean v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->isFinished:Z

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->visibleDialog:Landroid/app/Dialog;

    .line 38
    iput v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->classGuid:I

    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->swipeBackEnabled:Z

    .line 41
    iput-boolean v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->hasOwnBackground:Z

    .line 48
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->arguments:Landroid/os/Bundle;

    .line 49
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/tgnet/ConnectionsManager;->generateClassGuid()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->classGuid:I

    .line 50
    return-void
.end method


# virtual methods
.method protected clearViews()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 69
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    if-eqz v2, :cond_16

    .line 70
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 71
    .local v1, "parent":Landroid/view/ViewGroup;
    if-eqz v1, :cond_14

    .line 73
    :try_start_f
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_14} :catch_2e

    .line 78
    :cond_14
    :goto_14
    iput-object v3, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    .line 80
    .end local v1    # "parent":Landroid/view/ViewGroup;
    :cond_16
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    if-eqz v2, :cond_2b

    .line 81
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBar;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 82
    .restart local v1    # "parent":Landroid/view/ViewGroup;
    if-eqz v1, :cond_29

    .line 84
    :try_start_24
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_29} :catch_33

    .line 89
    :cond_29
    :goto_29
    iput-object v3, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 91
    .end local v1    # "parent":Landroid/view/ViewGroup;
    :cond_2b
    iput-object v3, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    .line 92
    return-void

    .line 74
    .restart local v1    # "parent":Landroid/view/ViewGroup;
    :catch_2e
    move-exception v0

    .line 75
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_14

    .line 85
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_33
    move-exception v0

    .line 86
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_29
.end method

.method protected createActionBar(Landroid/content/Context;)Lorg/telegram/ui/ActionBar/ActionBar;
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 134
    new-instance v0, Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-direct {v0, p1}, Lorg/telegram/ui/ActionBar/ActionBar;-><init>(Landroid/content/Context;)V

    .line 135
    .local v0, "actionBar":Lorg/telegram/ui/ActionBar/ActionBar;
    const-string v1, "actionBarDefault"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackgroundColor(I)V

    .line 136
    const-string v1, "actionBarDefaultSelector"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsBackgroundColor(IZ)V

    .line 137
    const-string v1, "actionBarActionModeDefaultSelector"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsBackgroundColor(IZ)V

    .line 138
    const-string v1, "actionBarDefaultIcon"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsColor(IZ)V

    .line 139
    const-string v1, "actionBarActionModeDefaultIcon"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsColor(IZ)V

    .line 140
    return-object v0
.end method

.method public createView(Landroid/content/Context;)Landroid/view/View;
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 61
    const/4 v0, 0x0

    return-object v0
.end method

.method public dismissCurrentDialig()V
    .registers 3

    .prologue
    .line 245
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->visibleDialog:Landroid/app/Dialog;

    if-nez v1, :cond_5

    .line 254
    :goto_4
    return-void

    .line 249
    :cond_5
    :try_start_5
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->visibleDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 250
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->visibleDialog:Landroid/app/Dialog;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_d} :catch_e

    goto :goto_4

    .line 251
    :catch_e
    move-exception v0

    .line 252
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_4
.end method

.method public dismissDialogOnPause(Landroid/app/Dialog;)Z
    .registers 3
    .param p1, "dialog"    # Landroid/app/Dialog;

    .prologue
    .line 257
    const/4 v0, 0x1

    return v0
.end method

.method public extendActionMode(Landroid/view/Menu;)Z
    .registers 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 348
    const/4 v0, 0x0

    return v0
.end method

.method public finishFragment()V
    .registers 2

    .prologue
    .line 144
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment(Z)V

    .line 145
    return-void
.end method

.method public finishFragment(Z)V
    .registers 3
    .param p1, "animated"    # Z

    .prologue
    .line 148
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->isFinished:Z

    if-nez v0, :cond_8

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    if-nez v0, :cond_9

    .line 152
    :cond_8
    :goto_8
    return-void

    .line 151
    :cond_9
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->closeLastFragment(Z)V

    goto :goto_8
.end method

.method public getActionBar()Lorg/telegram/ui/ActionBar/ActionBar;
    .registers 2

    .prologue
    .line 53
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object v0
.end method

.method public getArguments()Landroid/os/Bundle;
    .registers 2

    .prologue
    .line 65
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->arguments:Landroid/os/Bundle;

    return-object v0
.end method

.method public getFragmentView()Landroid/view/View;
    .registers 2

    .prologue
    .line 57
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    return-object v0
.end method

.method public getParentActivity()Landroid/app/Activity;
    .registers 2

    .prologue
    .line 232
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    if-eqz v0, :cond_9

    .line 233
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->parentActivity:Landroid/app/Activity;

    .line 235
    :goto_8
    return-object v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public getThemeDescriptions()[Lorg/telegram/ui/ActionBar/ThemeDescription;
    .registers 2

    .prologue
    .line 352
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVisibleDialog()Landroid/app/Dialog;
    .registers 2

    .prologue
    .line 340
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->visibleDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method public needDelayOpenAnimation()Z
    .registers 2

    .prologue
    .line 174
    const/4 v0, 0x0

    return v0
.end method

.method public onActivityResultFragment(IILandroid/content/Intent;)V
    .registers 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 205
    return-void
.end method

.method public onBackPressed()Z
    .registers 2

    .prologue
    .line 200
    const/4 v0, 0x1

    return v0
.end method

.method protected onBecomeFullyVisible()V
    .registers 1

    .prologue
    .line 284
    return-void
.end method

.method public onBeginSlide()V
    .registers 3

    .prologue
    .line 262
    :try_start_0
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->visibleDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_14

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->visibleDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 263
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->visibleDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 264
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->visibleDialog:Landroid/app/Dialog;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_14} :catch_1e

    .line 269
    :cond_14
    :goto_14
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    if-eqz v1, :cond_1d

    .line 270
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ActionBar;->onPause()V

    .line 272
    :cond_1d
    return-void

    .line 266
    :catch_1e
    move-exception v0

    .line 267
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_14
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 197
    return-void
.end method

.method protected onCustomTransitionAnimation(ZLjava/lang/Runnable;)Landroid/animation/AnimatorSet;
    .registers 4
    .param p1, "isOpen"    # Z
    .param p2, "callback"    # Ljava/lang/Runnable;

    .prologue
    .line 287
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onDialogDismiss(Landroid/app/Dialog;)V
    .registers 2
    .param p1, "dialog"    # Landroid/app/Dialog;

    .prologue
    .line 337
    return-void
.end method

.method public onFragmentCreate()Z
    .registers 2

    .prologue
    .line 162
    const/4 v0, 0x1

    return v0
.end method

.method public onFragmentDestroy()V
    .registers 3

    .prologue
    .line 166
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->classGuid:I

    invoke-virtual {v0, v1}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequestsForGuid(I)V

    .line 167
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->isFinished:Z

    .line 168
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    if-eqz v0, :cond_16

    .line 169
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setEnabled(Z)V

    .line 171
    :cond_16
    return-void
.end method

.method public onLowMemory()V
    .registers 1

    .prologue
    .line 292
    return-void
.end method

.method public onPause()V
    .registers 3

    .prologue
    .line 182
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    if-eqz v1, :cond_9

    .line 183
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ActionBar;->onPause()V

    .line 186
    :cond_9
    :try_start_9
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->visibleDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_25

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->visibleDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_25

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->visibleDialog:Landroid/app/Dialog;

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->dismissDialogOnPause(Landroid/app/Dialog;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 187
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->visibleDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 188
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->visibleDialog:Landroid/app/Dialog;
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_25} :catch_26

    .line 193
    :cond_25
    :goto_25
    return-void

    .line 190
    :catch_26
    move-exception v0

    .line 191
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_25
.end method

.method public onRequestPermissionsResultFragment(I[Ljava/lang/String;[I)V
    .registers 4
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .prologue
    .line 209
    return-void
.end method

.method public onResume()V
    .registers 1

    .prologue
    .line 179
    return-void
.end method

.method protected onTransitionAnimationEnd(ZZ)V
    .registers 3
    .param p1, "isOpen"    # Z
    .param p2, "backward"    # Z

    .prologue
    .line 280
    return-void
.end method

.method protected onTransitionAnimationStart(ZZ)V
    .registers 3
    .param p1, "isOpen"    # Z
    .param p2, "backward"    # Z

    .prologue
    .line 276
    return-void
.end method

.method public presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z
    .registers 3
    .param p1, "fragment"    # Lorg/telegram/ui/ActionBar/BaseFragment;

    .prologue
    .line 220
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;Z)Z
    .registers 4
    .param p1, "fragment"    # Lorg/telegram/ui/ActionBar/BaseFragment;
    .param p2, "removeLast"    # Z

    .prologue
    .line 224
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;Z)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;ZZ)Z
    .registers 6
    .param p1, "fragment"    # Lorg/telegram/ui/ActionBar/BaseFragment;
    .param p2, "removeLast"    # Z
    .param p3, "forceWithoutAnimation"    # Z

    .prologue
    const/4 v0, 0x1

    .line 228
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v1, p1, p2, p3, v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;ZZZ)Z

    move-result v1

    if-eqz v1, :cond_e

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public removeSelfFromStack()V
    .registers 2

    .prologue
    .line 155
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->isFinished:Z

    if-nez v0, :cond_8

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    if-nez v0, :cond_9

    .line 159
    :cond_8
    :goto_8
    return-void

    .line 158
    :cond_9
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v0, p0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->removeFragmentFromStack(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    goto :goto_8
.end method

.method public restoreSelfArgs(Landroid/os/Bundle;)V
    .registers 2
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    .line 217
    return-void
.end method

.method public saveSelfArgs(Landroid/os/Bundle;)V
    .registers 2
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    .line 213
    return-void
.end method

.method protected setParentLayout(Lorg/telegram/ui/ActionBar/ActionBarLayout;)V
    .registers 8
    .param p1, "layout"    # Lorg/telegram/ui/ActionBar/ActionBarLayout;

    .prologue
    const/4 v5, 0x0

    .line 95
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    if-eq v3, p1, :cond_7a

    .line 96
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    .line 97
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    if-eqz v3, :cond_2e

    .line 98
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 99
    .local v2, "parent":Landroid/view/ViewGroup;
    if-eqz v2, :cond_1a

    .line 101
    :try_start_15
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_1a} :catch_7b

    .line 106
    :cond_1a
    :goto_1a
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    if-eqz v3, :cond_2e

    iget-object v3, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    if-eq v3, v4, :cond_2e

    .line 107
    iput-object v5, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    .line 110
    .end local v2    # "parent":Landroid/view/ViewGroup;
    :cond_2e
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    if-eqz v3, :cond_62

    .line 111
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    if-eqz v3, :cond_80

    iget-object v3, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/ActionBar;->getContext()Landroid/content/Context;

    move-result-object v4

    if-eq v3, v4, :cond_80

    const/4 v0, 0x1

    .line 112
    .local v0, "differentParent":Z
    :goto_45
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/ActionBar;->getAddToContainer()Z

    move-result v3

    if-nez v3, :cond_4f

    if-eqz v0, :cond_5e

    .line 113
    :cond_4f
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/ActionBar;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 114
    .restart local v2    # "parent":Landroid/view/ViewGroup;
    if-eqz v2, :cond_5e

    .line 116
    :try_start_59
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_5e} :catch_82

    .line 122
    .end local v2    # "parent":Landroid/view/ViewGroup;
    :cond_5e
    :goto_5e
    if-eqz v0, :cond_62

    .line 123
    iput-object v5, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 126
    .end local v0    # "differentParent":Z
    :cond_62
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    if-eqz v3, :cond_7a

    iget-object v3, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    if-nez v3, :cond_7a

    .line 127
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->createActionBar(Landroid/content/Context;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v3

    iput-object v3, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 128
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iput-object p0, v3, Lorg/telegram/ui/ActionBar/ActionBar;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 131
    :cond_7a
    return-void

    .line 102
    .restart local v2    # "parent":Landroid/view/ViewGroup;
    :catch_7b
    move-exception v1

    .line 103
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1a

    .line 111
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "parent":Landroid/view/ViewGroup;
    :cond_80
    const/4 v0, 0x0

    goto :goto_45

    .line 117
    .restart local v0    # "differentParent":Z
    .restart local v2    # "parent":Landroid/view/ViewGroup;
    :catch_82
    move-exception v1

    .line 118
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_5e
.end method

.method public setVisibleDialog(Landroid/app/Dialog;)V
    .registers 2
    .param p1, "dialog"    # Landroid/app/Dialog;

    .prologue
    .line 344
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->visibleDialog:Landroid/app/Dialog;

    .line 345
    return-void
.end method

.method public showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;
    .registers 4
    .param p1, "dialog"    # Landroid/app/Dialog;

    .prologue
    .line 295
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;ZLandroid/content/DialogInterface$OnDismissListener;)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public showDialog(Landroid/app/Dialog;Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/Dialog;
    .registers 4
    .param p1, "dialog"    # Landroid/app/Dialog;
    .param p2, "onDismissListener"    # Landroid/content/DialogInterface$OnDismissListener;

    .prologue
    .line 299
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;ZLandroid/content/DialogInterface$OnDismissListener;)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public showDialog(Landroid/app/Dialog;ZLandroid/content/DialogInterface$OnDismissListener;)Landroid/app/Dialog;
    .registers 8
    .param p1, "dialog"    # Landroid/app/Dialog;
    .param p2, "allowInTransition"    # Z
    .param p3, "onDismissListener"    # Landroid/content/DialogInterface$OnDismissListener;

    .prologue
    const/4 v1, 0x0

    .line 303
    if-eqz p1, :cond_1d

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    if-eqz v2, :cond_1d

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-boolean v2, v2, Lorg/telegram/ui/ActionBar/ActionBarLayout;->animationInProgress:Z

    if-nez v2, :cond_1d

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-boolean v2, v2, Lorg/telegram/ui/ActionBar/ActionBarLayout;->startedTracking:Z

    if-nez v2, :cond_1d

    if-nez p2, :cond_1e

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->checkTransitionAnimation()Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 332
    :cond_1d
    :goto_1d
    return-object v1

    .line 307
    :cond_1e
    :try_start_1e
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->visibleDialog:Landroid/app/Dialog;

    if-eqz v2, :cond_2a

    .line 308
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->visibleDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    .line 309
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->visibleDialog:Landroid/app/Dialog;
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_2a} :catch_44

    .line 315
    :cond_2a
    :goto_2a
    :try_start_2a
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->visibleDialog:Landroid/app/Dialog;

    .line 316
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->visibleDialog:Landroid/app/Dialog;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 317
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->visibleDialog:Landroid/app/Dialog;

    new-instance v3, Lorg/telegram/ui/ActionBar/BaseFragment$1;

    invoke-direct {v3, p0, p3}, Lorg/telegram/ui/ActionBar/BaseFragment$1;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 327
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->visibleDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 328
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->visibleDialog:Landroid/app/Dialog;
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_43} :catch_49

    goto :goto_1d

    .line 311
    :catch_44
    move-exception v0

    .line 312
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_2a

    .line 329
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_49
    move-exception v0

    .line 330
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1d
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I

    .prologue
    .line 239
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    if-eqz v0, :cond_9

    .line 240
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->startActivityForResult(Landroid/content/Intent;I)V

    .line 242
    :cond_9
    return-void
.end method

.method public telehShowDialog(Landroid/app/Dialog;)Landroid/app/Dialog;
    .registers 9
    .param p1, "dialog"    # Landroid/app/Dialog;

    .prologue
    const/4 v4, 0x0

    .line 357
    instance-of v5, p1, Lorg/telegram/ui/ActionBar/BottomSheet;

    if-nez v5, :cond_d

    .line 358
    new-instance v5, Lorg/telegram/ui/ActionBar/BaseFragment$2;

    invoke-direct {v5, p0}, Lorg/telegram/ui/ActionBar/BaseFragment$2;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    invoke-virtual {p1, v5}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 437
    :cond_d
    if-eqz p1, :cond_27

    iget-object v5, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    if-eqz v5, :cond_27

    iget-object v5, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-boolean v5, v5, Lorg/telegram/ui/ActionBar/ActionBarLayout;->animationInProgress:Z

    if-nez v5, :cond_27

    iget-object v5, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-boolean v5, v5, Lorg/telegram/ui/ActionBar/ActionBarLayout;->startedTracking:Z

    if-eqz v5, :cond_28

    iget-object v5, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->checkTransitionAnimation()Z

    move-result v5

    if-eqz v5, :cond_28

    .line 464
    :cond_27
    :goto_27
    return-object v4

    .line 442
    :cond_28
    :try_start_28
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->visibleDialog:Landroid/app/Dialog;

    .line 443
    iget-object v5, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->visibleDialog:Landroid/app/Dialog;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 444
    iget-object v5, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->visibleDialog:Landroid/app/Dialog;

    new-instance v6, Lorg/telegram/ui/ActionBar/BaseFragment$3;

    invoke-direct {v6, p0}, Lorg/telegram/ui/ActionBar/BaseFragment$3;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    invoke-virtual {v5, v6}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 451
    iget-object v5, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->visibleDialog:Landroid/app/Dialog;

    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    .line 453
    iget-object v5, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->visibleDialog:Landroid/app/Dialog;

    const v6, 0x102000b

    invoke-virtual {v5, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 454
    .local v3, "textView":Landroid/widget/TextView;
    iget-object v5, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->visibleDialog:Landroid/app/Dialog;

    const v6, 0x1020019

    invoke-virtual {v5, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 455
    .local v0, "button1":Landroid/widget/Button;
    iget-object v5, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->visibleDialog:Landroid/app/Dialog;

    const v6, 0x102001a

    invoke-virtual {v5, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 456
    .local v1, "button2":Landroid/widget/Button;
    const-string v5, "fonts/rmedium.ttf"

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 457
    const-string v5, "fonts/rmedium.ttf"

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 458
    const-string v5, "fonts/rmedium.ttf"

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 460
    iget-object v4, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->visibleDialog:Landroid/app/Dialog;
    :try_end_7d
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_7d} :catch_7e

    goto :goto_27

    .line 461
    .end local v0    # "button1":Landroid/widget/Button;
    .end local v1    # "button2":Landroid/widget/Button;
    .end local v3    # "textView":Landroid/widget/TextView;
    :catch_7e
    move-exception v2

    .line 462
    .local v2, "e":Ljava/lang/Exception;
    const-string v5, "tmessages"

    invoke-static {v5, v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_27
.end method
