.class Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$ClientBinderDeathRecipient;
.super Ljava/lang/Object;
.source "MainServiceImpl.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ClientBinderDeathRecipient"
.end annotation


# instance fields
.field mCallback:Lorg/codeaurora/internal/INetworkCallback;

.field final synthetic this$0:Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;


# direct methods
.method public constructor <init>(Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;Lorg/codeaurora/internal/INetworkCallback;)V
    .locals 2
    .param p1, "this$0"    # Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;
    .param p2, "callback"    # Lorg/codeaurora/internal/INetworkCallback;

    .line 593
    iput-object p1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$ClientBinderDeathRecipient;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 594
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registering for client cb = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " binder = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 595
    invoke-interface {p2}, Lorg/codeaurora/internal/INetworkCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " death notification"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 594
    const-string v1, "MainServiceImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    iput-object p2, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$ClientBinderDeathRecipient;->mCallback:Lorg/codeaurora/internal/INetworkCallback;

    .line 597
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 6

    .line 601
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Client callback = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$ClientBinderDeathRecipient;->mCallback:Lorg/codeaurora/internal/INetworkCallback;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " binder = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$ClientBinderDeathRecipient;->mCallback:Lorg/codeaurora/internal/INetworkCallback;

    invoke-interface {v2}, Lorg/codeaurora/internal/INetworkCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "died"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "MainServiceImpl"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    iget-object v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$ClientBinderDeathRecipient;->mCallback:Lorg/codeaurora/internal/INetworkCallback;

    invoke-interface {v0}, Lorg/codeaurora/internal/INetworkCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 605
    .local v0, "binder":Landroid/os/IBinder;
    const/4 v3, 0x0

    invoke-interface {v0, p0, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 608
    :try_start_0
    iget-object v3, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$ClientBinderDeathRecipient;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;

    iget-object v4, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$ClientBinderDeathRecipient;->mCallback:Lorg/codeaurora/internal/INetworkCallback;

    invoke-virtual {v3, v4}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->unRegisterCallback(Lorg/codeaurora/internal/INetworkCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 612
    goto :goto_0

    .line 609
    :catch_0
    move-exception v3

    .line 610
    .local v3, "e":Landroid/os/RemoteException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception while unregistering callback = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$ClientBinderDeathRecipient;->mCallback:Lorg/codeaurora/internal/INetworkCallback;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$ClientBinderDeathRecipient;->mCallback:Lorg/codeaurora/internal/INetworkCallback;

    .line 611
    invoke-interface {v4}, Lorg/codeaurora/internal/INetworkCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 610
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method
