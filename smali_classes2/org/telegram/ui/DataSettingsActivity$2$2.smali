.class Lorg/telegram/ui/DataSettingsActivity$2$2;
.super Ljava/lang/Object;
.source "DataSettingsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/DataSettingsActivity$2;->onItemClick(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/DataSettingsActivity$2;

.field final synthetic val$maskValues:[Z

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lorg/telegram/ui/DataSettingsActivity$2;[ZI)V
    .registers 4
    .param p1, "this$1"    # Lorg/telegram/ui/DataSettingsActivity$2;

    .prologue
    .line 187
    iput-object p1, p0, Lorg/telegram/ui/DataSettingsActivity$2$2;->this$1:Lorg/telegram/ui/DataSettingsActivity$2;

    iput-object p2, p0, Lorg/telegram/ui/DataSettingsActivity$2$2;->val$maskValues:[Z

    iput p3, p0, Lorg/telegram/ui/DataSettingsActivity$2$2;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 9
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 191
    :try_start_0
    iget-object v4, p0, Lorg/telegram/ui/DataSettingsActivity$2$2;->this$1:Lorg/telegram/ui/DataSettingsActivity$2;

    iget-object v4, v4, Lorg/telegram/ui/DataSettingsActivity$2;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    # getter for: Lorg/telegram/ui/DataSettingsActivity;->visibleDialog:Landroid/app/Dialog;
    invoke-static {v4}, Lorg/telegram/ui/DataSettingsActivity;->access$300(Lorg/telegram/ui/DataSettingsActivity;)Landroid/app/Dialog;

    move-result-object v4

    if-eqz v4, :cond_15

    .line 192
    iget-object v4, p0, Lorg/telegram/ui/DataSettingsActivity$2$2;->this$1:Lorg/telegram/ui/DataSettingsActivity$2;

    iget-object v4, v4, Lorg/telegram/ui/DataSettingsActivity$2;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    # getter for: Lorg/telegram/ui/DataSettingsActivity;->visibleDialog:Landroid/app/Dialog;
    invoke-static {v4}, Lorg/telegram/ui/DataSettingsActivity;->access$400(Lorg/telegram/ui/DataSettingsActivity;)Landroid/app/Dialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Dialog;->dismiss()V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_15} :catch_27

    .line 197
    :cond_15
    :goto_15
    const/4 v3, 0x0

    .line 198
    .local v3, "newMask":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_17
    const/4 v4, 0x6

    if-ge v0, v4, :cond_4a

    .line 199
    iget-object v4, p0, Lorg/telegram/ui/DataSettingsActivity$2$2;->val$maskValues:[Z

    aget-boolean v4, v4, v0

    if-eqz v4, :cond_24

    .line 200
    if-nez v0, :cond_2c

    .line 201
    or-int/lit8 v3, v3, 0x1

    .line 198
    :cond_24
    :goto_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    .line 194
    .end local v0    # "a":I
    .end local v3    # "newMask":I
    :catch_27
    move-exception v1

    .line 195
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_15

    .line 202
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "a":I
    .restart local v3    # "newMask":I
    :cond_2c
    const/4 v4, 0x1

    if-ne v0, v4, :cond_32

    .line 203
    or-int/lit8 v3, v3, 0x2

    goto :goto_24

    .line 204
    :cond_32
    const/4 v4, 0x2

    if-ne v0, v4, :cond_38

    .line 205
    or-int/lit8 v3, v3, 0x4

    goto :goto_24

    .line 206
    :cond_38
    const/4 v4, 0x3

    if-ne v0, v4, :cond_3e

    .line 207
    or-int/lit8 v3, v3, 0x8

    goto :goto_24

    .line 208
    :cond_3e
    const/4 v4, 0x4

    if-ne v0, v4, :cond_44

    .line 209
    or-int/lit8 v3, v3, 0x10

    goto :goto_24

    .line 210
    :cond_44
    const/4 v4, 0x5

    if-ne v0, v4, :cond_24

    .line 211
    or-int/lit8 v3, v3, 0x20

    goto :goto_24

    .line 215
    :cond_4a
    sget-object v4, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v5, "mainconfig"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 216
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    iget v4, p0, Lorg/telegram/ui/DataSettingsActivity$2$2;->val$position:I

    iget-object v5, p0, Lorg/telegram/ui/DataSettingsActivity$2$2;->this$1:Lorg/telegram/ui/DataSettingsActivity$2;

    iget-object v5, v5, Lorg/telegram/ui/DataSettingsActivity$2;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    # getter for: Lorg/telegram/ui/DataSettingsActivity;->mobileDownloadRow:I
    invoke-static {v5}, Lorg/telegram/ui/DataSettingsActivity;->access$100(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v5

    if-ne v4, v5, :cond_89

    .line 217
    const-string v4, "mobileDataDownloadMask"

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 218
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v4

    iput v3, v4, Lorg/telegram/messenger/MediaController;->mobileDataDownloadMask:I

    .line 226
    :cond_6e
    :goto_6e
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 227
    iget-object v4, p0, Lorg/telegram/ui/DataSettingsActivity$2$2;->this$1:Lorg/telegram/ui/DataSettingsActivity$2;

    iget-object v4, v4, Lorg/telegram/ui/DataSettingsActivity$2;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    # getter for: Lorg/telegram/ui/DataSettingsActivity;->listAdapter:Lorg/telegram/ui/DataSettingsActivity$ListAdapter;
    invoke-static {v4}, Lorg/telegram/ui/DataSettingsActivity;->access$500(Lorg/telegram/ui/DataSettingsActivity;)Lorg/telegram/ui/DataSettingsActivity$ListAdapter;

    move-result-object v4

    if-eqz v4, :cond_88

    .line 228
    iget-object v4, p0, Lorg/telegram/ui/DataSettingsActivity$2$2;->this$1:Lorg/telegram/ui/DataSettingsActivity$2;

    iget-object v4, v4, Lorg/telegram/ui/DataSettingsActivity$2;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    # getter for: Lorg/telegram/ui/DataSettingsActivity;->listAdapter:Lorg/telegram/ui/DataSettingsActivity$ListAdapter;
    invoke-static {v4}, Lorg/telegram/ui/DataSettingsActivity;->access$500(Lorg/telegram/ui/DataSettingsActivity;)Lorg/telegram/ui/DataSettingsActivity$ListAdapter;

    move-result-object v4

    iget v5, p0, Lorg/telegram/ui/DataSettingsActivity$2$2;->val$position:I

    invoke-virtual {v4, v5}, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->notifyItemChanged(I)V

    .line 230
    :cond_88
    return-void

    .line 219
    :cond_89
    iget v4, p0, Lorg/telegram/ui/DataSettingsActivity$2$2;->val$position:I

    iget-object v5, p0, Lorg/telegram/ui/DataSettingsActivity$2$2;->this$1:Lorg/telegram/ui/DataSettingsActivity$2;

    iget-object v5, v5, Lorg/telegram/ui/DataSettingsActivity$2;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    # getter for: Lorg/telegram/ui/DataSettingsActivity;->wifiDownloadRow:I
    invoke-static {v5}, Lorg/telegram/ui/DataSettingsActivity;->access$000(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v5

    if-ne v4, v5, :cond_a1

    .line 220
    const-string v4, "wifiDownloadMask"

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 221
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v4

    iput v3, v4, Lorg/telegram/messenger/MediaController;->wifiDownloadMask:I

    goto :goto_6e

    .line 222
    :cond_a1
    iget v4, p0, Lorg/telegram/ui/DataSettingsActivity$2$2;->val$position:I

    iget-object v5, p0, Lorg/telegram/ui/DataSettingsActivity$2$2;->this$1:Lorg/telegram/ui/DataSettingsActivity$2;

    iget-object v5, v5, Lorg/telegram/ui/DataSettingsActivity$2;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    # getter for: Lorg/telegram/ui/DataSettingsActivity;->roamingDownloadRow:I
    invoke-static {v5}, Lorg/telegram/ui/DataSettingsActivity;->access$200(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v5

    if-ne v4, v5, :cond_6e

    .line 223
    const-string v4, "roamingDownloadMask"

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 224
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v4

    iput v3, v4, Lorg/telegram/messenger/MediaController;->roamingDownloadMask:I

    goto :goto_6e
.end method
