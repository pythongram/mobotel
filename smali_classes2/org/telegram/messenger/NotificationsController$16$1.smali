.class Lorg/telegram/messenger/NotificationsController$16$1;
.super Ljava/lang/Object;
.source "NotificationsController.java"

# interfaces
.implements Landroid/media/SoundPool$OnLoadCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/NotificationsController$16;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/messenger/NotificationsController$16;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/NotificationsController$16;)V
    .registers 2
    .param p1, "this$1"    # Lorg/telegram/messenger/NotificationsController$16;

    .prologue
    .line 2119
    iput-object p1, p0, Lorg/telegram/messenger/NotificationsController$16$1;->this$1:Lorg/telegram/messenger/NotificationsController$16;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadComplete(Landroid/media/SoundPool;II)V
    .registers 12
    .param p1, "soundPool"    # Landroid/media/SoundPool;
    .param p2, "sampleId"    # I
    .param p3, "status"    # I

    .prologue
    .line 2122
    if-nez p3, :cond_f

    .line 2124
    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    move-object v0, p1

    move v1, p2

    :try_start_c
    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_f} :catch_10

    .line 2129
    :cond_f
    :goto_f
    return-void

    .line 2125
    :catch_10
    move-exception v7

    .line 2126
    .local v7, "e":Ljava/lang/Exception;
    invoke-static {v7}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_f
.end method
