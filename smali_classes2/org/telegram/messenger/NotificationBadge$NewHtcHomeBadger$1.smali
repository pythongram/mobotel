.class Lorg/telegram/messenger/NotificationBadge$NewHtcHomeBadger$1;
.super Ljava/lang/Object;
.source "NotificationBadge.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/NotificationBadge$NewHtcHomeBadger;->executeBadge(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/NotificationBadge$NewHtcHomeBadger;

.field final synthetic val$intent:Landroid/content/Intent;

.field final synthetic val$intent1:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/NotificationBadge$NewHtcHomeBadger;Landroid/content/Intent;Landroid/content/Intent;)V
    .registers 4
    .param p1, "this$0"    # Lorg/telegram/messenger/NotificationBadge$NewHtcHomeBadger;

    .prologue
    .line 219
    iput-object p1, p0, Lorg/telegram/messenger/NotificationBadge$NewHtcHomeBadger$1;->this$0:Lorg/telegram/messenger/NotificationBadge$NewHtcHomeBadger;

    iput-object p2, p0, Lorg/telegram/messenger/NotificationBadge$NewHtcHomeBadger$1;->val$intent1:Landroid/content/Intent;

    iput-object p3, p0, Lorg/telegram/messenger/NotificationBadge$NewHtcHomeBadger$1;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 222
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    iget-object v1, p0, Lorg/telegram/messenger/NotificationBadge$NewHtcHomeBadger$1;->val$intent1:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 223
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    iget-object v1, p0, Lorg/telegram/messenger/NotificationBadge$NewHtcHomeBadger$1;->val$intent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 224
    return-void
.end method