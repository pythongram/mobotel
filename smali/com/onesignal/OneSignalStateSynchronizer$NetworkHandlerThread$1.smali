.class Lcom/onesignal/OneSignalStateSynchronizer$NetworkHandlerThread$1;
.super Ljava/lang/Object;
.source "OneSignalStateSynchronizer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onesignal/OneSignalStateSynchronizer$NetworkHandlerThread;->getNewRunnable()Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/onesignal/OneSignalStateSynchronizer$NetworkHandlerThread;


# direct methods
.method constructor <init>(Lcom/onesignal/OneSignalStateSynchronizer$NetworkHandlerThread;)V
    .registers 2
    .param p1, "this$0"    # Lcom/onesignal/OneSignalStateSynchronizer$NetworkHandlerThread;

    .prologue
    .line 529
    iput-object p1, p0, Lcom/onesignal/OneSignalStateSynchronizer$NetworkHandlerThread$1;->this$0:Lcom/onesignal/OneSignalStateSynchronizer$NetworkHandlerThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 532
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/onesignal/OneSignalStateSynchronizer;->syncUserState(Z)V

    .line 533
    return-void
.end method
