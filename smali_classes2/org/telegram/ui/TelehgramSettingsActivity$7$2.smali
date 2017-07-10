.class Lorg/telegram/ui/TelehgramSettingsActivity$7$2;
.super Ljava/lang/Object;
.source "TelehgramSettingsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/TelehgramSettingsActivity$7;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/TelehgramSettingsActivity$7;


# direct methods
.method constructor <init>(Lorg/telegram/ui/TelehgramSettingsActivity$7;)V
    .registers 2
    .param p1, "this$1"    # Lorg/telegram/ui/TelehgramSettingsActivity$7;

    .prologue
    .line 1379
    iput-object p1, p0, Lorg/telegram/ui/TelehgramSettingsActivity$7$2;->this$1:Lorg/telegram/ui/TelehgramSettingsActivity$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 1383
    :try_start_0
    iget-object v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity$7$2;->this$1:Lorg/telegram/ui/TelehgramSettingsActivity$7;

    iget-object v1, v1, Lorg/telegram/ui/TelehgramSettingsActivity$7;->val$progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_8

    .line 1387
    :goto_7
    return-void

    .line 1384
    :catch_8
    move-exception v0

    .line 1385
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "tmessages"

    invoke-static {v1, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_7
.end method
