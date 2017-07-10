.class Lorg/telegram/ui/TelehgramSettingsActivity$7;
.super Ljava/lang/Object;
.source "TelehgramSettingsActivity.java"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/TelehgramSettingsActivity;->performAskAQuestion()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

.field final synthetic val$preferences:Landroid/content/SharedPreferences;

.field final synthetic val$progressDialog:Landroid/app/ProgressDialog;


# direct methods
.method constructor <init>(Lorg/telegram/ui/TelehgramSettingsActivity;Landroid/content/SharedPreferences;Landroid/app/ProgressDialog;)V
    .registers 4
    .param p1, "this$0"    # Lorg/telegram/ui/TelehgramSettingsActivity;

    .prologue
    .line 1348
    iput-object p1, p0, Lorg/telegram/ui/TelehgramSettingsActivity$7;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    iput-object p2, p0, Lorg/telegram/ui/TelehgramSettingsActivity$7;->val$preferences:Landroid/content/SharedPreferences;

    iput-object p3, p0, Lorg/telegram/ui/TelehgramSettingsActivity$7;->val$progressDialog:Landroid/app/ProgressDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .registers 5
    .param p1, "response"    # Lorg/telegram/tgnet/TLObject;
    .param p2, "error"    # Lorg/telegram/tgnet/TLRPC$TL_error;

    .prologue
    .line 1351
    if-nez p2, :cond_e

    move-object v0, p1

    .line 1353
    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_help_support;

    .line 1354
    .local v0, "res":Lorg/telegram/tgnet/TLRPC$TL_help_support;
    new-instance v1, Lorg/telegram/ui/TelehgramSettingsActivity$7$1;

    invoke-direct {v1, p0, v0}, Lorg/telegram/ui/TelehgramSettingsActivity$7$1;-><init>(Lorg/telegram/ui/TelehgramSettingsActivity$7;Lorg/telegram/tgnet/TLRPC$TL_help_support;)V

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 1390
    .end local v0    # "res":Lorg/telegram/tgnet/TLRPC$TL_help_support;
    :goto_d
    return-void

    .line 1379
    :cond_e
    new-instance v1, Lorg/telegram/ui/TelehgramSettingsActivity$7$2;

    invoke-direct {v1, p0}, Lorg/telegram/ui/TelehgramSettingsActivity$7$2;-><init>(Lorg/telegram/ui/TelehgramSettingsActivity$7;)V

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto :goto_d
.end method
