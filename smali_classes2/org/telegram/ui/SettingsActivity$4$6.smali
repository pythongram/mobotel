.class Lorg/telegram/ui/SettingsActivity$4$6;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/SettingsActivity$4;->onItemClick(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/SettingsActivity$4;

.field final synthetic val$maskValues:[Z

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lorg/telegram/ui/SettingsActivity$4;[ZI)V
    .registers 4
    .param p1, "this$1"    # Lorg/telegram/ui/SettingsActivity$4;

    .prologue
    .line 592
    iput-object p1, p0, Lorg/telegram/ui/SettingsActivity$4$6;->this$1:Lorg/telegram/ui/SettingsActivity$4;

    iput-object p2, p0, Lorg/telegram/ui/SettingsActivity$4$6;->val$maskValues:[Z

    iput p3, p0, Lorg/telegram/ui/SettingsActivity$4$6;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    .line 596
    :try_start_1
    iget-object v2, p0, Lorg/telegram/ui/SettingsActivity$4$6;->this$1:Lorg/telegram/ui/SettingsActivity$4;

    iget-object v2, v2, Lorg/telegram/ui/SettingsActivity$4;->this$0:Lorg/telegram/ui/SettingsActivity;

    # getter for: Lorg/telegram/ui/SettingsActivity;->visibleDialog:Landroid/app/Dialog;
    invoke-static {v2}, Lorg/telegram/ui/SettingsActivity;->access$3300(Lorg/telegram/ui/SettingsActivity;)Landroid/app/Dialog;

    move-result-object v2

    if-eqz v2, :cond_16

    .line 597
    iget-object v2, p0, Lorg/telegram/ui/SettingsActivity$4$6;->this$1:Lorg/telegram/ui/SettingsActivity$4;

    iget-object v2, v2, Lorg/telegram/ui/SettingsActivity$4;->this$0:Lorg/telegram/ui/SettingsActivity;

    # getter for: Lorg/telegram/ui/SettingsActivity;->visibleDialog:Landroid/app/Dialog;
    invoke-static {v2}, Lorg/telegram/ui/SettingsActivity;->access$3400(Lorg/telegram/ui/SettingsActivity;)Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_16} :catch_5c

    .line 602
    :cond_16
    :goto_16
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v3, "mainconfig"

    invoke-virtual {v2, v3, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 603
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "allowBigEmoji"

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/SettingsActivity$4$6;->val$maskValues:[Z

    aget-boolean v4, v4, v5

    iput-boolean v4, v3, Lorg/telegram/messenger/MessagesController;->allowBigEmoji:Z

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 604
    const-string v2, "useSystemEmoji"

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/SettingsActivity$4$6;->val$maskValues:[Z

    const/4 v5, 0x1

    aget-boolean v4, v4, v5

    iput-boolean v4, v3, Lorg/telegram/messenger/MessagesController;->useSystemEmoji:Z

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 605
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 606
    iget-object v2, p0, Lorg/telegram/ui/SettingsActivity$4$6;->this$1:Lorg/telegram/ui/SettingsActivity$4;

    iget-object v2, v2, Lorg/telegram/ui/SettingsActivity$4;->this$0:Lorg/telegram/ui/SettingsActivity;

    # getter for: Lorg/telegram/ui/SettingsActivity;->listAdapter:Lorg/telegram/ui/SettingsActivity$ListAdapter;
    invoke-static {v2}, Lorg/telegram/ui/SettingsActivity;->access$400(Lorg/telegram/ui/SettingsActivity;)Lorg/telegram/ui/SettingsActivity$ListAdapter;

    move-result-object v2

    if-eqz v2, :cond_5b

    .line 607
    iget-object v2, p0, Lorg/telegram/ui/SettingsActivity$4$6;->this$1:Lorg/telegram/ui/SettingsActivity$4;

    iget-object v2, v2, Lorg/telegram/ui/SettingsActivity$4;->this$0:Lorg/telegram/ui/SettingsActivity;

    # getter for: Lorg/telegram/ui/SettingsActivity;->listAdapter:Lorg/telegram/ui/SettingsActivity$ListAdapter;
    invoke-static {v2}, Lorg/telegram/ui/SettingsActivity;->access$400(Lorg/telegram/ui/SettingsActivity;)Lorg/telegram/ui/SettingsActivity$ListAdapter;

    move-result-object v2

    iget v3, p0, Lorg/telegram/ui/SettingsActivity$4$6;->val$position:I

    invoke-virtual {v2, v3}, Lorg/telegram/ui/SettingsActivity$ListAdapter;->notifyItemChanged(I)V

    .line 609
    :cond_5b
    return-void

    .line 599
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    :catch_5c
    move-exception v0

    .line 600
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_16
.end method
