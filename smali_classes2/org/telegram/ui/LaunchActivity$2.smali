.class Lorg/telegram/ui/LaunchActivity$2;
.super Ljava/lang/Object;
.source "LaunchActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/LaunchActivity;->goPurchas()V
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
    .line 156
    iput-object p1, p0, Lorg/telegram/ui/LaunchActivity$2;->this$0:Lorg/telegram/ui/LaunchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 160
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity$2;->this$0:Lorg/telegram/ui/LaunchActivity;

    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-class v3, Lorg/telegram/ui/Telehgram/Premium;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/LaunchActivity;->startActivity(Landroid/content/Intent;)V

    .line 161
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity$2;->this$0:Lorg/telegram/ui/LaunchActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/LaunchActivity;->finish()V

    .line 162
    return-void
.end method
