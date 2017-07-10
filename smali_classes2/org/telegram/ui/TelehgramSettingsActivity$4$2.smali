.class Lorg/telegram/ui/TelehgramSettingsActivity$4$2;
.super Ljava/lang/Object;
.source "TelehgramSettingsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/TelehgramSettingsActivity$4;->onItemClick(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/TelehgramSettingsActivity$4;

.field final synthetic val$maskValues:[Z

.field final synthetic val$preferences:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Lorg/telegram/ui/TelehgramSettingsActivity$4;[ZLandroid/content/SharedPreferences;)V
    .registers 4
    .param p1, "this$1"    # Lorg/telegram/ui/TelehgramSettingsActivity$4;

    .prologue
    .line 460
    iput-object p1, p0, Lorg/telegram/ui/TelehgramSettingsActivity$4$2;->this$1:Lorg/telegram/ui/TelehgramSettingsActivity$4;

    iput-object p2, p0, Lorg/telegram/ui/TelehgramSettingsActivity$4$2;->val$maskValues:[Z

    iput-object p3, p0, Lorg/telegram/ui/TelehgramSettingsActivity$4$2;->val$preferences:Landroid/content/SharedPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 10
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x0

    .line 463
    sget-object v4, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v5, "mainconfig"

    invoke-virtual {v4, v5, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 465
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    :try_start_d
    iget-object v4, p0, Lorg/telegram/ui/TelehgramSettingsActivity$4$2;->this$1:Lorg/telegram/ui/TelehgramSettingsActivity$4;

    iget-object v4, v4, Lorg/telegram/ui/TelehgramSettingsActivity$4;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    # getter for: Lorg/telegram/ui/TelehgramSettingsActivity;->visibleDialog:Landroid/app/Dialog;
    invoke-static {v4}, Lorg/telegram/ui/TelehgramSettingsActivity;->access$900(Lorg/telegram/ui/TelehgramSettingsActivity;)Landroid/app/Dialog;

    move-result-object v4

    if-eqz v4, :cond_22

    .line 466
    iget-object v4, p0, Lorg/telegram/ui/TelehgramSettingsActivity$4$2;->this$1:Lorg/telegram/ui/TelehgramSettingsActivity$4;

    iget-object v4, v4, Lorg/telegram/ui/TelehgramSettingsActivity$4;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    # getter for: Lorg/telegram/ui/TelehgramSettingsActivity;->visibleDialog:Landroid/app/Dialog;
    invoke-static {v4}, Lorg/telegram/ui/TelehgramSettingsActivity;->access$1000(Lorg/telegram/ui/TelehgramSettingsActivity;)Landroid/app/Dialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Dialog;->dismiss()V
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_22} :catch_40

    .line 471
    :cond_22
    :goto_22
    const/4 v3, 0x1

    .line 472
    .local v3, "tabCount":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_24
    const/4 v4, 0x6

    if-ge v0, v4, :cond_c0

    .line 473
    if-nez v0, :cond_47

    .line 474
    const-string v4, "hideFavs"

    iget-object v5, p0, Lorg/telegram/ui/TelehgramSettingsActivity$4$2;->val$maskValues:[Z

    aget-boolean v5, v5, v0

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 475
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 476
    iget-object v4, p0, Lorg/telegram/ui/TelehgramSettingsActivity$4$2;->val$maskValues:[Z

    aget-boolean v4, v4, v0

    if-eqz v4, :cond_3d

    .line 477
    add-int/lit8 v3, v3, 0x1

    .line 472
    :cond_3d
    :goto_3d
    add-int/lit8 v0, v0, 0x1

    goto :goto_24

    .line 468
    .end local v0    # "a":I
    .end local v3    # "tabCount":I
    :catch_40
    move-exception v1

    .line 469
    .local v1, "e":Ljava/lang/Throwable;
    const-string v4, "tmessages"

    invoke-static {v4, v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_22

    .line 479
    .end local v1    # "e":Ljava/lang/Throwable;
    .restart local v0    # "a":I
    .restart local v3    # "tabCount":I
    :cond_47
    const/4 v4, 0x1

    if-ne v0, v4, :cond_5f

    .line 480
    const-string v4, "hideUsers"

    iget-object v5, p0, Lorg/telegram/ui/TelehgramSettingsActivity$4$2;->val$maskValues:[Z

    aget-boolean v5, v5, v0

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 481
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 482
    iget-object v4, p0, Lorg/telegram/ui/TelehgramSettingsActivity$4$2;->val$maskValues:[Z

    aget-boolean v4, v4, v0

    if-eqz v4, :cond_3d

    .line 483
    add-int/lit8 v3, v3, 0x1

    goto :goto_3d

    .line 485
    :cond_5f
    const/4 v4, 0x2

    if-ne v0, v4, :cond_77

    .line 486
    const-string v4, "hideGroups"

    iget-object v5, p0, Lorg/telegram/ui/TelehgramSettingsActivity$4$2;->val$maskValues:[Z

    aget-boolean v5, v5, v0

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 487
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 488
    iget-object v4, p0, Lorg/telegram/ui/TelehgramSettingsActivity$4$2;->val$maskValues:[Z

    aget-boolean v4, v4, v0

    if-eqz v4, :cond_3d

    .line 489
    add-int/lit8 v3, v3, 0x1

    goto :goto_3d

    .line 491
    :cond_77
    const/4 v4, 0x3

    if-ne v0, v4, :cond_8f

    .line 492
    const-string v4, "hideSGroups"

    iget-object v5, p0, Lorg/telegram/ui/TelehgramSettingsActivity$4$2;->val$maskValues:[Z

    aget-boolean v5, v5, v0

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 493
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 494
    iget-object v4, p0, Lorg/telegram/ui/TelehgramSettingsActivity$4$2;->val$maskValues:[Z

    aget-boolean v4, v4, v0

    if-eqz v4, :cond_3d

    .line 495
    add-int/lit8 v3, v3, 0x1

    goto :goto_3d

    .line 497
    :cond_8f
    const/4 v4, 0x4

    if-ne v0, v4, :cond_a7

    .line 498
    const-string v4, "hideChannels"

    iget-object v5, p0, Lorg/telegram/ui/TelehgramSettingsActivity$4$2;->val$maskValues:[Z

    aget-boolean v5, v5, v0

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 499
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 500
    iget-object v4, p0, Lorg/telegram/ui/TelehgramSettingsActivity$4$2;->val$maskValues:[Z

    aget-boolean v4, v4, v0

    if-eqz v4, :cond_3d

    .line 501
    add-int/lit8 v3, v3, 0x1

    goto :goto_3d

    .line 503
    :cond_a7
    const/4 v4, 0x5

    if-ne v0, v4, :cond_3d

    .line 504
    const-string v4, "hideBots"

    iget-object v5, p0, Lorg/telegram/ui/TelehgramSettingsActivity$4$2;->val$maskValues:[Z

    aget-boolean v5, v5, v0

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 505
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 506
    iget-object v4, p0, Lorg/telegram/ui/TelehgramSettingsActivity$4$2;->val$maskValues:[Z

    aget-boolean v4, v4, v0

    if-eqz v4, :cond_3d

    .line 507
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_3d

    .line 511
    :cond_c0
    const-string v4, "tab_count"

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 512
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 513
    iget-object v4, p0, Lorg/telegram/ui/TelehgramSettingsActivity$4$2;->this$1:Lorg/telegram/ui/TelehgramSettingsActivity$4;

    iget-object v4, v4, Lorg/telegram/ui/TelehgramSettingsActivity$4;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    # getter for: Lorg/telegram/ui/TelehgramSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v4}, Lorg/telegram/ui/TelehgramSettingsActivity;->access$000(Lorg/telegram/ui/TelehgramSettingsActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v4

    if-eqz v4, :cond_dd

    .line 514
    iget-object v4, p0, Lorg/telegram/ui/TelehgramSettingsActivity$4$2;->this$1:Lorg/telegram/ui/TelehgramSettingsActivity$4;

    iget-object v4, v4, Lorg/telegram/ui/TelehgramSettingsActivity$4;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    # getter for: Lorg/telegram/ui/TelehgramSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v4}, Lorg/telegram/ui/TelehgramSettingsActivity;->access$000(Lorg/telegram/ui/TelehgramSettingsActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/ui/Components/RecyclerListView;->invalidateViews()V

    .line 516
    :cond_dd
    iget-object v4, p0, Lorg/telegram/ui/TelehgramSettingsActivity$4$2;->this$1:Lorg/telegram/ui/TelehgramSettingsActivity$4;

    iget-object v4, v4, Lorg/telegram/ui/TelehgramSettingsActivity$4;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    iget-object v5, p0, Lorg/telegram/ui/TelehgramSettingsActivity$4$2;->val$preferences:Landroid/content/SharedPreferences;

    const-string v6, "defTab"

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    # invokes: Lorg/telegram/ui/TelehgramSettingsActivity;->processSelectedOption(I)V
    invoke-static {v4, v5}, Lorg/telegram/ui/TelehgramSettingsActivity;->access$1100(Lorg/telegram/ui/TelehgramSettingsActivity;I)V

    .line 517
    iget-object v4, p0, Lorg/telegram/ui/TelehgramSettingsActivity$4$2;->this$1:Lorg/telegram/ui/TelehgramSettingsActivity$4;

    iget-object v4, v4, Lorg/telegram/ui/TelehgramSettingsActivity$4;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    # invokes: Lorg/telegram/ui/TelehgramSettingsActivity;->restartApp()V
    invoke-static {v4}, Lorg/telegram/ui/TelehgramSettingsActivity;->access$700(Lorg/telegram/ui/TelehgramSettingsActivity;)V

    .line 518
    return-void
.end method
