.class Lorg/telegram/ui/TelehgramSettingsActivity$4$9;
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


# direct methods
.method constructor <init>(Lorg/telegram/ui/TelehgramSettingsActivity$4;[Z)V
    .registers 3
    .param p1, "this$1"    # Lorg/telegram/ui/TelehgramSettingsActivity$4;

    .prologue
    .line 721
    iput-object p1, p0, Lorg/telegram/ui/TelehgramSettingsActivity$4$9;->this$1:Lorg/telegram/ui/TelehgramSettingsActivity$4;

    iput-object p2, p0, Lorg/telegram/ui/TelehgramSettingsActivity$4$9;->val$maskValues:[Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 725
    :try_start_0
    iget-object v3, p0, Lorg/telegram/ui/TelehgramSettingsActivity$4$9;->this$1:Lorg/telegram/ui/TelehgramSettingsActivity$4;

    iget-object v3, v3, Lorg/telegram/ui/TelehgramSettingsActivity$4;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    # getter for: Lorg/telegram/ui/TelehgramSettingsActivity;->visibleDialog:Landroid/app/Dialog;
    invoke-static {v3}, Lorg/telegram/ui/TelehgramSettingsActivity;->access$1700(Lorg/telegram/ui/TelehgramSettingsActivity;)Landroid/app/Dialog;

    move-result-object v3

    if-eqz v3, :cond_15

    .line 726
    iget-object v3, p0, Lorg/telegram/ui/TelehgramSettingsActivity$4$9;->this$1:Lorg/telegram/ui/TelehgramSettingsActivity$4;

    iget-object v3, v3, Lorg/telegram/ui/TelehgramSettingsActivity$4;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    # getter for: Lorg/telegram/ui/TelehgramSettingsActivity;->visibleDialog:Landroid/app/Dialog;
    invoke-static {v3}, Lorg/telegram/ui/TelehgramSettingsActivity;->access$1800(Lorg/telegram/ui/TelehgramSettingsActivity;)Landroid/app/Dialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Dialog;->dismiss()V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_15} :catch_37

    .line 731
    :cond_15
    :goto_15
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_16
    const/4 v3, 0x4

    if-ge v0, v3, :cond_6e

    .line 732
    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v4, "mainconfig"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 733
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    if-nez v0, :cond_3e

    .line 734
    const-string v3, "direct_contact"

    iget-object v4, p0, Lorg/telegram/ui/TelehgramSettingsActivity$4$9;->val$maskValues:[Z

    aget-boolean v4, v4, v0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 735
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 731
    :cond_34
    :goto_34
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 728
    .end local v0    # "a":I
    .end local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    :catch_37
    move-exception v1

    .line 729
    .local v1, "e":Ljava/lang/Throwable;
    const-string v3, "tmessages"

    invoke-static {v3, v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_15

    .line 736
    .end local v1    # "e":Ljava/lang/Throwable;
    .restart local v0    # "a":I
    .restart local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_3e
    const/4 v3, 0x1

    if-ne v0, v3, :cond_4e

    .line 737
    const-string v3, "direct_group"

    iget-object v4, p0, Lorg/telegram/ui/TelehgramSettingsActivity$4$9;->val$maskValues:[Z

    aget-boolean v4, v4, v0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 738
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_34

    .line 739
    :cond_4e
    const/4 v3, 0x2

    if-ne v0, v3, :cond_5e

    .line 740
    const-string v3, "direct_channel"

    iget-object v4, p0, Lorg/telegram/ui/TelehgramSettingsActivity$4$9;->val$maskValues:[Z

    aget-boolean v4, v4, v0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 741
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_34

    .line 742
    :cond_5e
    const/4 v3, 0x3

    if-ne v0, v3, :cond_34

    .line 743
    const-string v3, "direct_bot"

    iget-object v4, p0, Lorg/telegram/ui/TelehgramSettingsActivity$4$9;->val$maskValues:[Z

    aget-boolean v4, v4, v0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 744
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_34

    .line 747
    .end local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_6e
    iget-object v3, p0, Lorg/telegram/ui/TelehgramSettingsActivity$4$9;->this$1:Lorg/telegram/ui/TelehgramSettingsActivity$4;

    iget-object v3, v3, Lorg/telegram/ui/TelehgramSettingsActivity$4;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    # getter for: Lorg/telegram/ui/TelehgramSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v3}, Lorg/telegram/ui/TelehgramSettingsActivity;->access$000(Lorg/telegram/ui/TelehgramSettingsActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v3

    if-eqz v3, :cond_83

    .line 748
    iget-object v3, p0, Lorg/telegram/ui/TelehgramSettingsActivity$4$9;->this$1:Lorg/telegram/ui/TelehgramSettingsActivity$4;

    iget-object v3, v3, Lorg/telegram/ui/TelehgramSettingsActivity$4;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    # getter for: Lorg/telegram/ui/TelehgramSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v3}, Lorg/telegram/ui/TelehgramSettingsActivity;->access$000(Lorg/telegram/ui/TelehgramSettingsActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/Components/RecyclerListView;->invalidateViews()V

    .line 750
    :cond_83
    return-void
.end method
