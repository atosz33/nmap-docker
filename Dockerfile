FROM ubuntu:latest                                                                                                      
                                                                                                                        
ENV TERM='xterm-color' \                                                                                                
    APT_OPTIONS='--no-upgrade --no-install-recommends -y -q --allow-unauthenticated'                                    
                                                                                                                        
RUN set -xe \                                                                                                           
    && apt-get update -y \                                                                                              
    && apt-get install ${APT_OPTIONS} \                                                                                 
        git \                                                                                                           
        ca-certificates \                                                                                               
        gcc \                                                                                                           
        g++ \                                                                                                           
        libpcap-dev \                                                                                                   
        openssl \                                                                                                       
        libssl-dev \                                                                                                    
        libssh2-1-dev \                                                                                                 
        libpcre++-dev \                                                                                                 
        libpcre3-dev \                                                                                                  
        libdnet-dev \                                                                                                   
        make \                                                                                                          
    && git clone http://github.com/nmap/nmap.git \                                                                      
    && cd nmap \                                                                                                        
    && ./configure --with-openssl --without-zenmap \                                                                    
    && make \                                                                                                           
    && make install                                                                                                     
                                                                                                                        
ENTRYPOINT ["nmap"] 
