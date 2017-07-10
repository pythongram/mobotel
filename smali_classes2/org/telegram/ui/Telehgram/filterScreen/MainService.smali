.class public Lorg/telegram/ui/Telehgram/filterScreen/MainService;
.super Landroid/app/Service;
.source "MainService.java"


# static fields
.field public static final ACTIVE:I

.field public static final INACTIVE:I

.field public static STATE:I


# instance fields
.field mView:Landroid/widget/LinearLayout;

.field shared:Lorg/telegram/ui/Telehgram/filterScreen/SharedMemory;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 28
    const/4 v0, 0x0

    sput v0, Lorg/telegram/ui/Telehgram/filterScreen/MainService;->STATE:I

    .line 29
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .param p1, "i"    # Landroid/content/Intent;

    .prologue
    .line 34
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .registers 8

    .prologue
    const/4 v1, -0x1

    .line 39
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 40
    new-instance v2, Lorg/telegram/ui/Telehgram/filterScreen/SharedMemory;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Telehgram/filterScreen/SharedMemory;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lorg/telegram/ui/Telehgram/filterScreen/MainService;->shared:Lorg/telegram/ui/Telehgram/filterScreen/SharedMemory;

    .line 41
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lorg/telegram/ui/Telehgram/filterScreen/MainService;->mView:Landroid/widget/LinearLayout;

    .line 42
    iget-object v2, p0, Lorg/telegram/ui/Telehgram/filterScreen/MainService;->mView:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lorg/telegram/ui/Telehgram/filterScreen/MainService;->shared:Lorg/telegram/ui/Telehgram/filterScreen/SharedMemory;

    invoke-virtual {v3}, Lorg/telegram/ui/Telehgram/filterScreen/SharedMemory;->getColor()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 43
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x7d6

    const/16 v4, 0x8

    const/4 v5, -0x3

    move v2, v1

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 49
    .local v0, "params":Landroid/view/WindowManager$LayoutParams;
    const-string v1, "window"

    invoke-virtual {p0, v1}, Lorg/telegram/ui/Telehgram/filterScreen/MainService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/WindowManager;

    .line 50
    .local v6, "wm":Landroid/view/WindowManager;
    iget-object v1, p0, Lorg/telegram/ui/Telehgram/filterScreen/MainService;->mView:Landroid/widget/LinearLayout;

    invoke-interface {v6, v1, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 51
    return-void
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 55
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 56
    iget-object v1, p0, Lorg/telegram/ui/Telehgram/filterScreen/MainService;->mView:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_14

    .line 57
    const-string v1, "window"

    invoke-virtual {p0, v1}, Lorg/telegram/ui/Telehgram/filterScreen/MainService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 58
    .local v0, "wm":Landroid/view/WindowManager;
    iget-object v1, p0, Lorg/telegram/ui/Telehgram/filterScreen/MainService;->mView:Landroid/widget/LinearLayout;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 60
    .end local v0    # "wm":Landroid/view/WindowManager;
    :cond_14
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 64
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/filterScreen/MainService;->mView:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lorg/telegram/ui/Telehgram/filterScreen/MainService;->shared:Lorg/telegram/ui/Telehgram/filterScreen/SharedMemory;

    invoke-virtual {v1}, Lorg/telegram/ui/Telehgram/filterScreen/SharedMemory;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 65
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    return v0
.end method
