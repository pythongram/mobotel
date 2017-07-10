.class Lorg/telegram/messenger/ApplicationLoader$4;
.super Ljava/lang/Object;
.source "ApplicationLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/ApplicationLoader;->initPlayServices()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/ApplicationLoader;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/ApplicationLoader;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/messenger/ApplicationLoader;

    .prologue
    .line 647
    iput-object p1, p0, Lorg/telegram/messenger/ApplicationLoader$4;->this$0:Lorg/telegram/messenger/ApplicationLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 650
    iget-object v1, p0, Lorg/telegram/messenger/ApplicationLoader$4;->this$0:Lorg/telegram/messenger/ApplicationLoader;

    # invokes: Lorg/telegram/messenger/ApplicationLoader;->checkPlayServices()Z
    invoke-static {v1}, Lorg/telegram/messenger/ApplicationLoader;->access$600(Lorg/telegram/messenger/ApplicationLoader;)Z

    move-result v1

    if-eqz v1, :cond_41

    .line 651
    sget-object v1, Lorg/telegram/messenger/UserConfig;->pushString:Ljava/lang/String;

    if-eqz v1, :cond_3b

    sget-object v1, Lorg/telegram/messenger/UserConfig;->pushString:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_3b

    .line 652
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GCM regId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lorg/telegram/messenger/UserConfig;->pushString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 658
    :goto_2c
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-class v2, Lorg/telegram/messenger/GcmRegistrationIntentService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 659
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lorg/telegram/messenger/ApplicationLoader$4;->this$0:Lorg/telegram/messenger/ApplicationLoader;

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/ApplicationLoader;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 666
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_3a
    return-void

    .line 654
    :cond_3b
    const-string v1, "GCM Registration not found."

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    goto :goto_2c

    .line 664
    :cond_41
    const-string v1, "No valid Google Play Services APK found."

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    goto :goto_3a
.end method
