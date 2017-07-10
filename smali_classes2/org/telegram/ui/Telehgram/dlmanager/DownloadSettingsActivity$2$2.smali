.class Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity$2$2;
.super Ljava/lang/Object;
.source "DownloadSettingsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity$2;->onItemClick(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity$2;

.field final synthetic val$maskValues:[Z

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity$2;[ZI)V
    .registers 4
    .param p1, "this$1"    # Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity$2;

    .prologue
    .line 184
    iput-object p1, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity$2$2;->this$1:Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity$2;

    iput-object p2, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity$2$2;->val$maskValues:[Z

    iput p3, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity$2$2;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 188
    :try_start_0
    iget-object v3, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity$2$2;->this$1:Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity$2;

    iget-object v3, v3, Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity$2;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;

    # getter for: Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;->visibleDialog:Landroid/app/Dialog;
    invoke-static {v3}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;->access$300(Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;)Landroid/app/Dialog;

    move-result-object v3

    if-eqz v3, :cond_15

    .line 189
    iget-object v3, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity$2$2;->this$1:Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity$2;

    iget-object v3, v3, Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity$2;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;

    # getter for: Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;->visibleDialog:Landroid/app/Dialog;
    invoke-static {v3}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;->access$400(Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;)Landroid/app/Dialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Dialog;->dismiss()V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_15} :catch_38

    .line 194
    :cond_15
    :goto_15
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_16
    const/4 v3, 0x7

    if-ge v0, v3, :cond_a5

    .line 195
    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v4, "mainconfig"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 196
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    if-nez v0, :cond_3f

    .line 197
    const-string v3, "dm_saturday"

    iget-object v4, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity$2$2;->val$maskValues:[Z

    aget-boolean v4, v4, v0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 194
    :cond_35
    :goto_35
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 191
    .end local v0    # "a":I
    .end local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    :catch_38
    move-exception v1

    .line 192
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "tmessages"

    invoke-static {v3, v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_15

    .line 198
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "a":I
    .restart local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_3f
    const/4 v3, 0x1

    if-ne v0, v3, :cond_50

    .line 199
    const-string v3, "dm_sunday"

    iget-object v4, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity$2$2;->val$maskValues:[Z

    aget-boolean v4, v4, v0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_35

    .line 200
    :cond_50
    const/4 v3, 0x2

    if-ne v0, v3, :cond_61

    .line 201
    const-string v3, "dm_monday"

    iget-object v4, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity$2$2;->val$maskValues:[Z

    aget-boolean v4, v4, v0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_35

    .line 202
    :cond_61
    const/4 v3, 0x3

    if-ne v0, v3, :cond_72

    .line 203
    const-string v3, "dm_tuesday"

    iget-object v4, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity$2$2;->val$maskValues:[Z

    aget-boolean v4, v4, v0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_35

    .line 204
    :cond_72
    const/4 v3, 0x4

    if-ne v0, v3, :cond_83

    .line 205
    const-string v3, "dm_wednesday"

    iget-object v4, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity$2$2;->val$maskValues:[Z

    aget-boolean v4, v4, v0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_35

    .line 206
    :cond_83
    const/4 v3, 0x5

    if-ne v0, v3, :cond_94

    .line 207
    const-string v3, "dm_thursday"

    iget-object v4, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity$2$2;->val$maskValues:[Z

    aget-boolean v4, v4, v0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_35

    .line 208
    :cond_94
    const/4 v3, 0x6

    if-ne v0, v3, :cond_35

    .line 209
    const-string v3, "dm_friday"

    iget-object v4, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity$2$2;->val$maskValues:[Z

    aget-boolean v4, v4, v0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_35

    .line 212
    .end local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_a5
    iget-object v3, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity$2$2;->this$1:Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity$2;

    iget-object v3, v3, Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity$2;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;

    # getter for: Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;->listAdapter:Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity$ListAdapter;
    invoke-static {v3}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;->access$500(Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;)Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity$ListAdapter;

    move-result-object v3

    if-eqz v3, :cond_bc

    .line 213
    iget-object v3, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity$2$2;->this$1:Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity$2;

    iget-object v3, v3, Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity$2;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;

    # getter for: Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;->listAdapter:Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity$ListAdapter;
    invoke-static {v3}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;->access$500(Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;)Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity$ListAdapter;

    move-result-object v3

    iget v4, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity$2$2;->val$position:I

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity$ListAdapter;->notifyItemChanged(I)V

    .line 215
    :cond_bc
    return-void
.end method
