.class Lorg/telegram/ui/SettingsActivity$10$2;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/SettingsActivity$10;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/SettingsActivity$10;


# direct methods
.method constructor <init>(Lorg/telegram/ui/SettingsActivity$10;)V
    .registers 2
    .param p1, "this$1"    # Lorg/telegram/ui/SettingsActivity$10;

    .prologue
    .line 944
    iput-object p1, p0, Lorg/telegram/ui/SettingsActivity$10$2;->this$1:Lorg/telegram/ui/SettingsActivity$10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 948
    :try_start_0
    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity$10$2;->this$1:Lorg/telegram/ui/SettingsActivity$10;

    iget-object v1, v1, Lorg/telegram/ui/SettingsActivity$10;->val$progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_8

    .line 952
    :goto_7
    return-void

    .line 949
    :catch_8
    move-exception v0

    .line 950
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_7
.end method
