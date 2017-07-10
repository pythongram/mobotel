.class Lorg/telegram/ui/LaunchActivity$18;
.super Ljava/lang/Object;
.source "LaunchActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/LaunchActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/LaunchActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/LaunchActivity;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/LaunchActivity;

    .prologue
    .line 2075
    iput-object p1, p0, Lorg/telegram/ui/LaunchActivity$18;->this$0:Lorg/telegram/ui/LaunchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 2078
    const/4 v0, 0x0

    sput-boolean v0, Lorg/telegram/messenger/ApplicationLoader;->mainInterfacePausedStageQueue:Z

    .line 2079
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lorg/telegram/messenger/ApplicationLoader;->mainInterfacePausedStageQueueTime:J

    .line 2080
    return-void
.end method
