.class Lorg/telegram/ui/ChatActivity$48$2;
.super Ljava/lang/Object;
.source "ChatActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity$48;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ChatActivity$48;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChatActivity$48;)V
    .registers 2
    .param p1, "this$1"    # Lorg/telegram/ui/ChatActivity$48;

    .prologue
    .line 3351
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$48$2;->this$1:Lorg/telegram/ui/ChatActivity$48;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 3355
    return-void
.end method
