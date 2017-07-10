.class final Lorg/telegram/ui/Telehgram/answeringMachine/AnsweringMachine$1;
.super Ljava/lang/Object;
.source "AnsweringMachine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Telehgram/answeringMachine/AnsweringMachine;->ProcessMsgs(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$m:Lorg/telegram/messenger/MessageObject;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessageObject;)V
    .registers 2

    .prologue
    .line 50
    iput-object p1, p0, Lorg/telegram/ui/Telehgram/answeringMachine/AnsweringMachine$1;->val$m:Lorg/telegram/messenger/MessageObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 52
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/answeringMachine/AnsweringMachine$1;->val$m:Lorg/telegram/messenger/MessageObject;

    invoke-static {v0}, Lorg/telegram/ui/Telehgram/answeringMachine/AnsweringMachine;->ProcessMsg(Lorg/telegram/messenger/MessageObject;)Z

    .line 53
    return-void
.end method
