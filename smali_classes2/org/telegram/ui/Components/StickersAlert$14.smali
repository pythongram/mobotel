.class Lorg/telegram/ui/Components/StickersAlert$14;
.super Ljava/lang/Object;
.source "StickersAlert.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/StickersAlert;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/StickersAlert;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/StickersAlert;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/Components/StickersAlert;

    .prologue
    .line 455
    iput-object p1, p0, Lorg/telegram/ui/Components/StickersAlert$14;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 458
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert$14;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    # invokes: Lorg/telegram/ui/Components/StickersAlert;->hidePreview()V
    invoke-static {v0}, Lorg/telegram/ui/Components/StickersAlert;->access$3300(Lorg/telegram/ui/Components/StickersAlert;)V

    .line 459
    return-void
.end method
