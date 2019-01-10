FROM kalilinux/kali-linux-docker                                      
                                                                  
# Set working Directory to /app                                       
WORKDIR /app                                                      
                                                                    
# Copy contents of working directory                                  
ADD . /app                                                       
                                                                       
# Update and Upgrade                                                  
RUN apt-get update \                                                  
    && apt-get -y upgrade                                             
                                                                       
# Install apt-get essentials                                          
RUN apt-get install -y git \                                          
    && apt-get install -y vim \                                       
    && apt-get install -y nmap   
  
# Install metasploit and dependancys                                  
RUN apt-get install -y metasploit-framework\     